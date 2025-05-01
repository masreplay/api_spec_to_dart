from typing import Optional
from fastapi import APIRouter
from pydantic import BaseModel

router = APIRouter()


class ItemRequestBody(BaseModel):
    name: str
    description: Optional[str]
    price: float
    tax: Optional[float] = None


class ItemResponse(BaseModel):
    id: int
    name: str
    description: Optional[str]
    price: float
    tax: Optional[float] = None


@router.post("/")
def create_item(item: ItemRequestBody) -> ItemResponse:
    return ItemResponse(
        id=1,
        name=item.name,
        description=item.description,
        price=item.price,
        tax=item.tax,
    )
