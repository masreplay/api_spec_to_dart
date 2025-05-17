from datetime import date, datetime, time, timedelta
from enum import Enum
from typing import Annotated, Any, Literal
from uuid import UUID

from fastapi import (
    Body,
    Cookie,
    Depends,
    FastAPI,
    File,
    Form,
    Header,
    HTTPException,
    Path,
    Query,
    UploadFile,
    status,
)
from fastapi.security import (
    APIKeyHeader,
    OAuth2PasswordBearer,
    OAuth2PasswordRequestForm,
)
from pydantic import (
    BaseModel,
    EmailStr,
    Field,
    HttpUrl,
    NegativeInt,
    PositiveInt,
    SecretStr,
    confloat,
    conint,
    constr,
)

from app.router import (
    generic_router,
    items_router,
    pydantic_extra_types_router,
    union_router,
)

app = FastAPI(
    title="FastAPI Type Examples",
    description="Comprehensive examples of types and routes in FastAPI",
    version="1.0.0",
    generate_unique_id_function=lambda route: f"{route.tags[0]}-{route.name}",
    openapi_tags=[
        {"name": "basic", "description": "Basic type operations"},
        {"name": "advanced", "description": "Advanced type operations"},
        {"name": "models", "description": "Pydantic model operations"},
        {"name": "validation", "description": "Parameter validation examples"},
        {"name": "files", "description": "File upload examples"},
        {"name": "security", "description": "Security related endpoints"},
    ],
)


# --------- BASIC TYPES ---------


@app.get(
    "/basic/number/{num}",
    tags=["basic"],
    summary="Handle integer path parameter",
)
def basic_number(num: int) -> dict[str, Any]:
    """Handle integer path parameter."""
    return {"value": num, "type": "integer"}


@app.get(
    "/basic/float/{num}",
    tags=["basic"],
    summary="Handle float path parameter",
)
def basic_float(num: float) -> dict[str, Any]:
    """Handle float path parameter."""
    return {"value": num, "type": "float"}


@app.get(
    "/basic/boolean",
    tags=["basic"],
    summary="Handle boolean query parameter",
)
def basic_boolean(flag: bool = Query(False, example=True)) -> dict[str, Any]:
    """Handle boolean query parameter with default value."""
    return {"value": flag, "type": "boolean"}


@app.get(
    "/basic/string",
    tags=["basic"],
    summary="Handle string query parameter",
)
def basic_string(
    text: str = Query(
        None,
        min_length=3,
        max_length=50,
        example="example_text",
    ),
) -> dict[str, Any]:
    """Handle string query parameter with validation."""
    return {"value": text, "type": "string"}


# --------- DATE & TIME TYPES ---------


@app.get(
    "/datetime/date",
    tags=["basic"],
    summary="Handle date parameters",
)
def datetime_date(d: date) -> dict[str, Any]:
    """Handle date parameter (YYYY-MM-DD)."""
    return {"date": d, "weekday": d.weekday()}


@app.get(
    "/datetime/datetime",
    tags=["basic"],
    summary="Handle datetime parameters",
)
def datetime_datetime(dt: datetime) -> dict[str, Any]:
    """Handle datetime parameter (YYYY-MM-DDThh:mm:ss)."""
    return {"datetime": dt, "timestamp": dt.timestamp()}


@app.get(
    "/datetime/time",
    tags=["basic"],
    summary="Handle time parameters",
)
def datetime_time(t: time) -> dict[str, Any]:
    """Handle time parameter (hh:mm:ss)."""
    return {"time": t, "hour": t.hour, "minute": t.minute}


@app.get(
    "/datetime/timedelta",
    tags=["basic"],
    summary="Handle timedelta parameters",
)
def datetime_timedelta(td: timedelta) -> dict[str, Any]:
    """Handle timedelta parameter (in seconds)."""
    return {"timedelta": td, "seconds": td.total_seconds()}


# --------- SPECIAL TYPES ---------


@app.get(
    "/special/uuid",
    tags=["advanced"],
    summary="Handle UUID parameters",
)
def special_uuid(id: UUID) -> dict[str, Any]:
    """Handle UUID parameter."""
    return {"uuid": id, "version": id.version}


class UserLevel(str, Enum):
    BASIC = "basic"
    PREMIUM = "premium"
    ADMIN = "admin"


@app.get(
    "/special/enum",
    tags=["advanced"],
    summary="Handle enum parameters",
)
def special_enum(level: UserLevel = UserLevel.BASIC) -> dict[str, Any]:
    """Handle Enum parameter."""
    return {
        "level": level,
        "permissions": ["read"]
        if level == UserLevel.BASIC
        else ["read", "write"]
        if level == UserLevel.PREMIUM
        else ["read", "write", "admin"],
    }


@app.get(
    "/special/literal",
    tags=["advanced"],
    summary="Handle literal type parameters",
)
def special_literal(
    mode: Literal["light", "dark", "system"] = "system",
) -> dict[str, Any]:
    """Handle Literal type parameter."""
    return {
        "mode": mode,
        "theme_color": "#FFFFFF"
        if mode == "light"
        else "#000000"
        if mode == "dark"
        else "#CCCCCC",
    }


# --------- COLLECTION TYPES ---------


@app.get("/collection/list", tags=["advanced"])
def collection_list(items: list[str] = Query(["default"])) -> dict[str, Any]:
    """Handle list of strings query parameter."""
    return {"items": items, "count": len(items)}


@app.get("/collection/set", tags=["advanced"])
def collection_set(items: set[int] = Query({1, 2, 3})) -> dict[str, Any]:
    """Handle set of integers query parameter."""
    return {
        "items": list(
            items,
        ),
        "unique_count": len(items),
    }


@app.get("/collection/dict", tags=["advanced"])
def collection_dict(data: dict[str, Any] = Body(...)) -> dict[str, Any]:
    """Handle dictionary in request body."""
    return {"data": data, "keys": list(data.keys())}


@app.get("/collection/tuple", tags=["advanced"])
def collection_tuple(items: tuple[int, str, bool] = Query(...)) -> dict[str, Any]:
    """Handle fixed-size tuple query parameter."""
    return {"items": items, "types": [type(item).__name__ for item in items]}


@app.get("/collection/variable_tuple", tags=["advanced"])
def collection_variable_tuple(items: tuple[str, ...] = Query(...)) -> dict[str, Any]:
    """Handle variable-size tuple query parameter."""
    return {"items": items, "count": len(items)}


# --------- UNION TYPES ---------


@app.get(
    "/union/simple",
    tags=["advanced"],
    summary="Handle union type parameters",
)
def union_simple(value: int | str | bool) -> dict[str, Any]:
    """Handle union type parameter."""
    return {"value": value, "type": type(value).__name__}


@app.get(
    "/union/optional",
    tags=["advanced"],
    summary="Handle optional parameters",
)
def union_optional(value: str | None = None) -> dict[str, Any]:
    """Handle optional type parameter."""
    return {"value": value, "is_none": value is None}


@app.get(
    "/union/modern",
    tags=["advanced"],
    summary="Handle union with modern Python syntax",
)
def union_modern(value: int | str | None = None) -> dict[str, Any]:
    """Handle union with modern Python syntax (Python 3.10+)."""
    return {
        "value": value,
        "type": type(value).__name__ if value is not None else "None",
    }


# --------- PYDANTIC MODELS ---------


class Location(BaseModel):
    lat: Annotated[
        float,
        Field(
            ge=-90,
            le=90,
            examples=[40.7128],
            description="Latitude coordinate between -90 and 90 degrees",
            title="Latitude",
        ),
    ]
    lng: Annotated[
        float,
        Field(
            ge=-180,
            le=180,
            examples=[-74.0060],
            description="Longitude coordinate between -180 and 180 degrees",
            title="Longitude",
        ),
    ]
    name: str | None = Field(
        None,
        examples=["New York"],
        description="Optional location name",
    )


class UserBase(BaseModel):
    username: str = Field(
        min_length=3,
        max_length=50,
        examples=["johndoe"],
        pattern="^[a-zA-Z0-9_-]+$",
        description="Username between 3-50 characters, alphanumeric with _ and -",
    )
    email: EmailStr = Field(
        examples=["john@example.com"],
        description="Valid email address",
    )
    full_name: str | None = Field(
        None,
        examples=["John Doe"],
        description="User's full name",
    )


class UserCreate(UserBase):
    password: SecretStr = Field(
        min_length=8,
        description="Password with minimum 8 characters",
    )


class User(UserBase):
    id: int = Field(
        examples=[1],
        gt=0,
        description="Unique user identifier",
    )
    is_active: bool = Field(
        True,
        examples=[True],
        description="User account status",
    )
    created_at: datetime = Field(
        default_factory=datetime.now,
        examples=["2023-01-01T00:00:00"],
        description="Account creation timestamp",
    )
    location: Location | None = Field(
        None,
        description="User's location information",
    )
    tags: list[str] = Field(
        [],
        examples=["user", "customer"],
        description="list of tags associated with the user",
    )

    tmp: bool = Field(
        False,
        exclude=True,
        description="Temporary field excluded from output",
    )

    class Config:
        json_schema_extra = {
            "example": {
                "id": 1,
                "username": "johndoe",
                "email": "john@example.com",
                "full_name": "John Doe",
                "is_active": True,
                "created_at": "2023-01-01T00:00:00",
                "location": {"lat": 40.7128, "lng": -74.0060, "name": "New York"},
                "tags": ["user", "customer"],
            }
        }


@app.post(
    "/models/user",
    tags=["models"],
)
def create_user(user: UserCreate) -> User:
    """Create a new user from a Pydantic model."""
    # This would normally interact with a database
    return User(
        id=1,
        username=user.username,
        email=user.email,
        full_name=user.full_name,
        created_at=datetime.now(),
        is_active=True,
        location=None,
        tags=[],
        tmp=False,
    )


@app.get(
    "/models/location",
    tags=["models"],
    summary="Process location information",
)
def get_location(location: Location) -> dict[str, Any]:
    """Handle a Pydantic model as query parameters."""
    return {
        "location": location,
        "url": f"https://maps.google.com/?q={location.lat},{location.lng}",
    }


# --------- PARAMETER SOURCES ---------


@app.get(
    "/params/path/{item_id}",
    tags=["validation"],
    summary="Demonstrate path parameter validation",
)
def param_path(
    item_id: int = Path(
        title="Item ID",
        description="The ID of the item",
        ge=1,
        example=42,
    ),
) -> dict[str, Any]:
    """Path parameter with validation."""
    return {"item_id": item_id}


@app.get(
    "/params/query",
    tags=["validation"],
    summary="Demonstrate query parameter validation",
)
def param_query(
    q: str | None = Query(
        None,
        min_length=3,
        max_length=50,
        regex="^[a-zA-Z0-9_-]+$",
        example="search-term",
        description="Search query string (alphanumeric with hyphens and underscores)",
    ),
    skip: int = Query(
        0,
        ge=0,
        example=0,
        description="Number of items to skip",
    ),
    limit: int = Query(
        10,
        ge=1,
        le=100,
        example=10,
        description="Maximum number of items to return (1-100)",
    ),
) -> dict[str, Any]:
    """Query parameters with validation."""
    return {"q": q, "skip": skip, "limit": limit}


@app.post(
    "/params/body",
    tags=["validation"],
    summary="Demonstrate body parameter validation",
)
def param_body(
    data: dict[str, Any] = Body(
        example={"name": "Test Item", "description": "This is a test item"},
        description="Arbitrary data object",
    ),
    importance: int = Body(
        ge=0,
        le=10,
        example=5,
        description="Importance level from 0-10",
    ),
) -> dict[str, Any]:
    """Body parameters with validation."""
    return {"data": data, "importance": importance}


@app.get("/params/cookie", tags=["validation"])
def param_cookie(
    session: str | None = Cookie(
        None,
    ),
    preferences: str | None = Cookie(
        None,
    ),
) -> dict[str, Any]:
    """Cookie parameters."""
    return {"session": session, "preferences": preferences}


@app.get("/params/header", tags=["validation"])
def param_header(
    user_agent: str = Header(
        ...,
    ),
    x_token: str | None = Header(
        None,
    ),
) -> dict[str, Any]:
    """Header parameters."""
    return {"user_agent": user_agent, "token": x_token}


# --------- FORM DATA & FILES ---------


@app.post(
    "/forms/basic",
    tags=["files"],
    summary="Handle basic form data",
)
def form_basic(
    username: str = Form(
        example="johndoe",
        description="Username",
    ),
    password: str = Form(
        description="Password",
    ),
    remember: bool = Form(
        False,
        example=False,
        description="Remember login",
    ),
) -> dict[str, Any]:
    """Handle form data."""
    return {
        "username": username,
        "password_length": len(
            password,
        ),
        "remember": remember,
    }


@app.post(
    "/files/upload",
    tags=["files"],
    summary="Handle single file upload",
)
def file_upload(
    file: UploadFile = File(
        description="File to upload",
    ),
    description: str | None = Form(
        None,
        example="My document",
        description="File description",
    ),
) -> dict[str, Any]:
    """Handle file upload."""
    return {
        "filename": file.filename,
        "content_type": file.content_type,
        "description": description,
    }


@app.post(
    "/files/multiple",
    tags=["files"],
    summary="Handle multiple file uploads",
)
def files_multiple(
    files: list[UploadFile] = File(
        description="list of files to upload",
    ),
    notes: str = Form(
        None,
        example="Important files",
        description="Notes about the uploads",
    ),
) -> dict[str, Any]:
    """Handle multiple file uploads."""
    return {
        "filenames": [file.filename for file in files],
        "total_files": len(
            files,
        ),
        "notes": notes,
    }


# --------- VALIDATION EXAMPLES ---------


class AllTypesWithValidation(BaseModel):
    int_value: Annotated[
        int,
        Field(
            examples=[42],
            gt=0,
            lt=100,
            description="Integer between 1-99",
            title="Integer Value",
        ),
    ]
    float_value: Annotated[
        float,
        Field(
            examples=[3.14],
            ge=0.0,
            le=10.0,
            decimal_places=2,
            description="Pi or other values",
        ),
    ]
    str_value: Annotated[
        str,
        Field(
            min_length=3,
            max_length=50,
            pattern="^[a-zA-Z0-9_-]+$",
            examples=["example_value"],
            description="String with alphanumeric characters, underscores and hyphens",
        ),
    ]
    bool_value: bool = Field(examples=[True], description="Boolean value")
    email_value: EmailStr = Field(
        examples=["user@example.com"],
        description="Valid email address",
    )
    url_value: HttpUrl = Field(
        examples=["https://example.com"],
        description="Valid HTTP URL",
    )
    list_value: list[str] = Field(
        min_length=1,
        max_length=5,
        examples=["item1", "item2"],
        description="list with 1-5 strings",
    )

    class Config:
        json_schema_extra = {
            "example": {
                "int_value": 42,
                "float_value": 3.14,
                "str_value": "example_value",
                "bool_value": True,
                "email_value": "user@example.com",
                "url_value": "https://example.com",
                "list_value": ["item1", "item2"],
            }
        }


@app.post(
    "/validation/complex",
    tags=["validation"],
    summary="Demonstrate complex model validation",
)
def validation_complex(data: AllTypesWithValidation) -> AllTypesWithValidation:
    """Process a model with complex validation rules."""
    return data


@app.get(
    "/validation/conditional",
    tags=["validation"],
    summary="Demonstrate conditional validation",
)
def validation_conditional(
    user_id: int | None = Query(
        None,
        ge=1,
        example=123,
        description="User ID",
    ),
    username: str | None = Query(
        None,
        min_length=3,
        example="johndoe",
        description="Username",
    ),
) -> dict[str, Any]:
    """Validate that at least one parameter is provided."""
    if user_id is None and username is None:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Either user_id or username must be provided",
        )
    return {"user_id": user_id, "username": username}


class ConditionalBody(BaseModel):
    item_id: int | None = Field(
        None,
        examples=[42],
        gt=0,
        description="Item ID (if provided)",
    )
    item_name: str | None = Field(
        None,
        examples=["example_item"],
        description="Item name (if provided)",
    )

    @classmethod
    def __get_validators__(cls) -> Any:
        yield cls.validate_either_id_or_name

    @classmethod
    def validate_either_id_or_name(cls, values: Any) -> dict[str, Any] | None:
        if values.get("item_id") is None and values.get("item_name") is None:
            raise ValueError("Either item_id or item_name must be provided")
        return values

    class Config:
        json_schema_extra = {"example": {"item_id": 42, "item_name": "example_item"}}


@app.post(
    "/validation/conditional_body",
    tags=["validation"],
    summary="Validate a model with conditional requirements",
)
def validation_conditional_body(body: ConditionalBody) -> ConditionalBody:
    """Validate a body with conditional validation."""
    return body


# --------- CUSTOM TYPES ---------


@app.get(
    "/custom/positive_int",
    tags=["advanced"],
    summary="Demonstrate custom type validation",
)
def custom_positive_int(value: PositiveInt, value2: NegativeInt) -> dict[str, Any]:
    """Handle custom type for positive integers."""
    return {"value": value, "doubled": value * 2}


# --------- CONSTRAINED TYPES ---------


@app.get(
    "/constrained/int",
    tags=["validation"],
    summary="Demonstrate constrained integer validation",
)
def constrained_int(
    value: Annotated[
        conint(ge=0, lt=100),
        Query(
            examples=[42],
            description="Integer between 0 and 99",
        ),
    ],
) -> dict[str, Any]:
    """Handle constrained integer with validation."""
    return {
        "value": value,
        "category": "low" if value < 33 else "medium" if value < 66 else "high",
    }


@app.get(
    "/constrained/float",
    tags=["validation"],
    summary="Demonstrate constrained float validation",
)
def constrained_float(
    value: Annotated[
        confloat(ge=0.0, le=1.0),
        Query(
            examples=[0.5],
            description="Float between 0.0 and 1.0",
        ),
    ],
) -> dict[str, Any]:
    """Handle constrained float with validation."""
    return {"value": value, "percentage": f"{value * 100:.1f}%"}


@app.get(
    "/constrained/string",
    tags=["validation"],
    summary="Demonstrate constrained string validation",
)
def constrained_string(
    value: Annotated[
        constr(min_length=3, max_length=50, pattern="^[a-zA-Z0-9_-]+$"),
        Query(
            examples=["example-value"],
            description="String between 3-50 chars, alphanumeric with hyphens and underscores",
        ),
    ],
) -> dict[str, Any]:
    """Handle constrained string with validation."""
    return {"value": value, "length": len(value)}


# --------- RESPONSE MODELS ---------


@app.get(
    "/response/filtered",
    tags=["models"],
    summary="Return a filtered response model",
)
def response_filtered() -> User:
    """Return a response filtered by the response_model."""
    # Only fields defined in UserBase will be returned
    return User(
        id=1,
        username="johndoe",
        email="john@example.com",
        full_name="John Doe",
        is_active=True,
        tags=["user", "customer"],
        created_at=datetime.now(),
        location=Location(
            lat=40.7128,
            lng=-74.0060,
            name="New York",
        ),
        tmp=False,
    )


@app.get(
    "/response/multiple",
    tags=["models"],
    summary="Return different response models based on query",
)
def response_multiple(
    is_user: bool = Query(
        True,
        example=True,
        description="Whether to return a user or location",
    ),
) -> User | Location:
    """Return different response models based on query parameters."""
    if is_user:
        return User(
            id=1,
            username="johndoe",
            email="john@example.com",
            created_at=datetime.now(),
            is_active=True,
            location=Location(
                lat=40.7128,
                lng=-74.0060,
                name="New York",
            ),
            tags=["user", "customer"],
            tmp=False,
            full_name="John Doe",
        )
    else:
        return Location(lat=40.7128, lng=-74.0060, name="New York")


@app.get(
    "/response/list",
    tags=["models"],
    summary="Return a list of models",
)
def response_list() -> list[User]:
    """Return a list of items with a response model."""
    return [
        User(
            id=1,
            username="user1",
            email="user1@example.com",
            created_at=datetime.now(),
            is_active=True,
            location=Location(
                lat=40.7128,
                lng=-74.0060,
                name="New York",
            ),
            tags=["user", "customer"],
            tmp=False,
            full_name="John Doe",
        ),
        User(
            id=2,
            username="user2",
            email="user2@example.com",
            created_at=datetime.now(),
            is_active=True,
            location=Location(
                lat=40.7128,
                lng=-74.0060,
                name="New York",
            ),
            tags=["user", "customer"],
            tmp=False,
            full_name="John Doe",
        ),
    ]


# --------- DEPENDENCY INJECTION ---------


def common_parameters(
    q: str | None = Query(
        None,
        examples=["search"],
        description="Optional search string",
    ),
    skip: int = Query(
        0,
        ge=0,
        examples=[0],
        description="Number of items to skip",
    ),
    limit: int = Query(
        100,
        ge=1,
        le=1000,
        examples=[100],
        description="Max items to return",
    ),
) -> dict[str, Any]:
    """Common query parameters that can be reused."""
    return {"q": q, "skip": skip, "limit": limit}


@app.get(
    "/depends/query",
    tags=["advanced"],
    summary="Use dependency injection for common parameters",
)
def depends_query(
    commons: dict[str, Any] = Depends(
        common_parameters,
    ),
) -> dict[str, Any]:
    """Use dependency injection for common parameters."""
    return commons


class DatabaseDependency:
    def __init__(self, db_name: str = "default"):
        self.db_name = db_name
        # In a real app, this would establish a database connection

    def get_items(self, skip: int = 0, limit: int = 100) -> list[dict[str, Any]]:
        # This would normally fetch from a database
        return [{"id": i, "name": f"Item {i}"} for i in range(skip, skip + limit)]


@app.get(
    "/depends/class",
    tags=["advanced"],
    summary="Use class-based dependency injection",
)
def depends_class(db: DatabaseDependency = Depends()) -> dict[str, Any]:
    """Use class-based dependency injection."""
    return {"db_name": db.db_name, "items": db.get_items(0, 5)}


# --------- SECURITY ---------


oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")


@app.post(
    "/token",
    tags=["security"],
    summary="Get an access token",
)
def login(form_data: OAuth2PasswordRequestForm = Depends()) -> dict[str, str]:
    """OAuth2 compatible token login, get an access token for future requests."""
    # This would normally validate credentials and return a token
    if form_data.username == "admin" and form_data.password == "admin":
        return {"access_token": "fake-jwt-token", "token_type": "bearer"}
    raise HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail="Incorrect username or password",
        headers={"WWW-Authenticate": "Bearer"},
    )


@app.get(
    "/users/me",
    tags=["security"],
    summary="Get current user from token",
)
def read_users_me(token: str = Depends(oauth2_scheme)) -> dict[str, Any]:
    """Get current user based on the token."""
    # This would normally decode and validate the token
    if token == "fake-jwt-token":
        return {"id": 1, "username": "admin"}
    raise HTTPException(
        status_code=status.HTTP_401_UNAUTHORIZED,
        detail="Invalid authentication credentials",
        headers={"WWW-Authenticate": "Bearer"},
    )


api_key_header = APIKeyHeader(name="X-API-Key")


@app.get(
    "/items/secure",
    tags=["security"],
    summary="Get items using API key auth",
)
def get_secure_items(api_key: str = Depends(api_key_header)) -> list[dict[str, Any]]:
    """Get items using API key auth."""
    if api_key != "valid-api-key":
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN, detail="Invalid API Key"
        )
    return [{"id": 1, "name": "Secure Item"}]


# --------- HTTP EXCEPTIONS ---------


@app.get(
    "/errors/not_found/{item_id}",
    tags=["advanced"],
    summary="Demonstrate 404 error handling",
)
def error_not_found(item_id: int) -> dict[str, Any]:
    """Raise an HTTP exception if the item is not found."""
    if item_id != 42:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail=f"Item with id {item_id} not found",
        )
    return {"item_id": item_id, "name": "The Answer"}


@app.get(
    "/errors/custom",
    tags=["advanced"],
    summary="Demonstrate custom error status codes",
)
def error_custom(
    code: int = Query(
        example=400,
        description="HTTP error code to simulate",
    ),
) -> dict[str, Any]:
    """Raise custom HTTP exceptions based on query parameters."""
    error_mapping = {
        400: (
            status.HTTP_400_BAD_REQUEST,
            "Bad Request",
        ),
        401: (
            status.HTTP_401_UNAUTHORIZED,
            "Unauthorized",
        ),
        403: (
            status.HTTP_403_FORBIDDEN,
            "Forbidden",
        ),
        404: (
            status.HTTP_404_NOT_FOUND,
            "Not Found",
        ),
        500: (
            status.HTTP_500_INTERNAL_SERVER_ERROR,
            "Internal Server Error",
        ),
    }

    if code in error_mapping:
        status_code, detail = error_mapping[code]
        raise HTTPException(status_code=status_code, detail=detail)

    return {"message": "No error occurred"}


# --------- Extras ---------
app.include_router(
    pydantic_extra_types_router.router,
    prefix="/extra_types",
    tags=["Extra Types"],
)
app.include_router(
    items_router.router,
    prefix="/items",
    tags=["items"],
)
app.include_router(
    generic_router.router,
    prefix="/generic",
    tags=["generic"],
)
app.include_router(
    union_router.router,
    prefix="/union",
    tags=["union"],
)
