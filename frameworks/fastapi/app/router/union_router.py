from typing import (
    Annotated,
    List,
    Literal,
    TypeAlias,
)

from fastapi import APIRouter
from pydantic import BaseModel, Field

router = APIRouter()


class Animal(BaseModel):
    name: str = Field(examples=["Fido"], description="The animal's name")


class Dog(Animal):
    type: Literal["dog"] = Field("dog", examples=["dog"])
    bark_loudness: int = Field(
        ge=0,
        le=10,
        examples=[7],
        description="How loud the dog barks (0-10)",
        title="Bark Loudness",
    )


class Cat(Animal):
    type: Literal["cat"] = Field("cat", examples=["cat"])
    meow_cuteness: int = Field(
        ge=0,
        le=10,
        examples=[9],
        description="How cute the cat's meow is (0-10)",
        title="Meow Cuteness Level",
    )


class Parrot(Animal):
    type: Literal["parrot"] = Field("parrot", examples=["parrot"])
    phrases: List[str] = Field(
        examples=[["Hello!", "Polly wants a cracker"]],
        description="Phrases the parrot can say",
    )


AnimalUnion = Dog | Cat | Parrot
AnimalUnionField: TypeAlias = Annotated[AnimalUnion, Field(discriminator="type")]


class CreateAnimalResponse(BaseModel):
    animal: AnimalUnion
    message: str


@router.post(
    "/models/animal",
    tags=["models"],
    summary="Create an animal based on type discriminator",
)
def create_animal(animal: AnimalUnionField) -> CreateAnimalResponse:
    return CreateAnimalResponse(animal=animal, message="Animal created successfully")
