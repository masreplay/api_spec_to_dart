from typing import Generic, TypeVar

from fastapi import APIRouter, Depends, Query, WebSocket, WebSocketDisconnect
from pydantic import BaseModel, Field


router = APIRouter()


class PaginationParams(BaseModel):
    """Query parameters for pagination."""

    page: int = Field(
        default=1,
        ge=1,
        description="Page number",
    )
    per_page: int = Field(
        default=10,
        ge=1,
        le=100,
        description="Number of items per page",
    )


PaginationItem = TypeVar("PaginationItem", bound=BaseModel)


class PaginationResponse(BaseModel, Generic[PaginationItem]):
    """Response model for paginated data."""

    items: list[PaginationItem]
    total: int
    page: int
    per_page: int
    total_pages: int


class ItemResponse(BaseModel):
    id: int
    name: str


class CategoryResponse(BaseModel):
    id: int
    name: str


BaseResponseItem = TypeVar("BaseResponseItem")


class BaseResponse(BaseModel, Generic[BaseResponseItem]):
    data: BaseResponseItem
    message: str
    code: int


@router.get("/items")
async def get_items(
    page: int = Query(default=1, ge=1),
    per_page: int = Query(default=10, ge=1, le=100),
) -> PaginationResponse[ItemResponse]:
    pagination = PaginationParams(page=page, per_page=per_page)
    return PaginationResponse(
        items=[ItemResponse(id=1, name="Item 1")],
        total=10,
        page=pagination.page,
        per_page=pagination.per_page,
        total_pages=1,
    )


class ConnectManager:
    def __init__(self) -> None:
        self.connections: list[WebSocket] = []

    async def connect(self, websocket: WebSocket) -> None:
        await websocket.accept()
        self.connections.append(websocket)

    async def disconnect(self, websocket: WebSocket) -> None:
        self.connections.remove(websocket)

    async def send_message(self, message: str) -> None:
        for connection in self.connections:
            await connection.send_text(message)


@router.websocket("/ws")
async def websocket_endpoint(
    websocket: WebSocket,
    manager: ConnectManager = Depends(ConnectManager),
) -> None:
    await manager.connect(websocket)
    try:
        while True:
            data = await websocket.receive_text()
            await manager.send_message(f"Received: {data}")
    except WebSocketDisconnect:
        await manager.disconnect(websocket)


@router.get("/categories")
async def get_categories(
    page: int = Query(default=1, ge=1),
    per_page: int = Query(default=10, ge=1, le=100),
) -> PaginationResponse[CategoryResponse]:
    pagination = PaginationParams(page=page, per_page=per_page)
    return PaginationResponse(
        items=[CategoryResponse(id=1, name="Category 1")],
        total=10,
        page=pagination.page,
        per_page=pagination.per_page,
        total_pages=1,
    )


@router.get("/base-response-item")
async def get_base_response_item(item: ItemResponse) -> BaseResponse[ItemResponse]:
    return BaseResponse(data=item, message="Success", code=200)


@router.get("/base-response-category")
async def get_base_response_category(
    category: CategoryResponse,
) -> BaseResponse[CategoryResponse]:
    return BaseResponse(data=category, message="Success", code=200)


@router.get("/base-response-list")
async def get_base_response_list() -> BaseResponse[list[ItemResponse]]:
    return BaseResponse(
        data=[ItemResponse(id=1, name="Item 1")],
        message="Success",
        code=200,
    )


@router.get("/nested-base-and-pagination")
async def get_nested_base_and_pagination(
    pagination: PaginationParams = Depends(PaginationParams),
) -> BaseResponse[PaginationResponse[ItemResponse]]:
    return BaseResponse(
        data=PaginationResponse(
            items=[ItemResponse(id=1, name="Item 1")],
            total=1,
            page=pagination.page,
            per_page=pagination.per_page,
            total_pages=1,
        ),
        message="Success",
        code=200,
    )
