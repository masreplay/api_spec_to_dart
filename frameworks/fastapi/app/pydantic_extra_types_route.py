from typing import Any, Optional

import phonenumbers
from fastapi import APIRouter
from pydantic import BaseModel
from pydantic_extra_types.color import Color
from pydantic_extra_types.coordinate import Coordinate, Latitude, Longitude
from pydantic_extra_types.country import (
    CountryAlpha2,
    CountryAlpha3,
    CountryNumericCode,
    CountryShortName,
)
from pydantic_extra_types.currency_code import ISO4217, Currency
from pydantic_extra_types.domain import DomainStr
from pydantic_extra_types.isbn import ISBN
from pydantic_extra_types.language_code import (
    ISO639_3,
    ISO639_5,
    LanguageAlpha2,
    LanguageName,
)
from pydantic_extra_types.mac_address import MacAddress
from pydantic_extra_types.payment import PaymentCardBrand, PaymentCardNumber
from pydantic_extra_types.phone_numbers import PhoneNumber, PhoneNumberValidator
from pydantic_extra_types.routing_number import ABARoutingNumber
from pydantic_extra_types.s3 import S3Path
from pydantic_extra_types.script_code import ISO_15924
from pydantic_extra_types.semantic_version import SemanticVersion
from pydantic_extra_types.timezone_name import TimeZoneName
from pydantic_extra_types.ulid import ULID
from typing_extensions import Annotated

router = APIRouter(
    prefix="/extra_types",
    tags=["Extra Types"],
)


# Color routes
class ColorModel(BaseModel):
    color: Color


@router.post("/color/", response_model=dict[str, Any])
async def create_color(color_model: ColorModel) -> dict[str, Any]:
    color = color_model.color
    return {"color": str(color), "as_rgb": color.as_rgb(), "as_hex": color.as_hex()}


# Country routes
class CountryModel(BaseModel):
    alpha2: Optional[CountryAlpha2] = None
    alpha3: Optional[CountryAlpha3] = None
    numeric: Optional[CountryNumericCode] = None
    short_name: Optional[CountryShortName] = None


@router.post("/country/", response_model=dict[str, Any])
async def process_country(country: CountryModel) -> dict[str, Any]:
    return {k: str(v) for k, v in country.model_dump(exclude_none=True).items()}


# Payment routes
class PaymentCardModel(BaseModel):
    card_number: PaymentCardNumber
    card_brand: Optional[PaymentCardBrand] = None


@router.post("/payment/", response_model=dict[str, Any])
async def process_payment_card(payment_card: PaymentCardModel) -> dict[str, Any]:
    return {
        "number": str(payment_card.card_number),
        "brand": str(payment_card.card_brand),
    }


# Phone number route
class PhoneNumberModel(BaseModel):
    phone: Annotated[
        phonenumbers.PhoneNumber,
        PhoneNumberValidator(supported_regions=["US"], default_region="US"),
    ]
    phone2: PhoneNumber


@router.post("/phone/", response_model=dict[str, Any])
async def process_phone(phone_model: PhoneNumberModel) -> dict[str, Any]:
    return {
        "phone": str(phone_model.phone),
        "international": phone_model.phone.country_code_source,
        "country_code": phone_model.phone.country_code,
        "national": phone_model.phone.national_number,
    }


# ABA Routing Number route
class ABARoutingModel(BaseModel):
    routing_number: ABARoutingNumber


@router.post("/routing/", response_model=dict[str, Any])
async def process_routing(routing: ABARoutingModel) -> dict[str, Any]:
    return {"routing_number": str(routing.routing_number)}


# Coordinate routes
class CoordinateModel(BaseModel):
    coordinate: Optional[Coordinate] = None
    latitude: Optional[Latitude] = None
    longitude: Optional[Longitude] = None


@router.post("/coordinate/", response_model=dict[str, Any])
async def process_coordinate(coordinate_model: CoordinateModel) -> dict[str, Any]:
    result = {}
    if coordinate_model.coordinate:
        result["coordinate"] = str(coordinate_model.coordinate)
    if coordinate_model.latitude:
        result["latitude"] = str(coordinate_model.latitude)
    if coordinate_model.longitude:
        result["longitude"] = str(coordinate_model.longitude)
    return result


# MAC Address route
class MACAddressModel(BaseModel):
    mac_address: MacAddress


@router.post("/mac/", response_model=dict[str, Any])
async def process_mac(mac_model: MACAddressModel) -> dict[str, Any]:
    return {"mac_address": str(mac_model.mac_address)}


# ISBN route
class ISBNModel(BaseModel):
    isbn: ISBN


@router.post("/isbn/", response_model=dict[str, Any])
async def process_isbn(isbn_model: ISBNModel) -> dict[str, Any]:
    return {"isbn": str(isbn_model.isbn)}


# Currency route
class CurrencyModel(BaseModel):
    currency: Optional[Currency] = None
    iso4217: Optional[ISO4217] = None


@router.post("/currency/", response_model=dict[str, Any])
async def process_currency(currency_model: CurrencyModel) -> dict[str, Any]:
    result = {}
    if currency_model.currency:
        result["currency"] = str(currency_model.currency)
    if currency_model.iso4217:
        result["iso4217"] = str(currency_model.iso4217)
    return result


# Domain route
class DomainModel(BaseModel):
    domain: DomainStr


@router.post("/domain/", response_model=dict[str, Any])
async def process_domain(domain_model: DomainModel) -> dict[str, Any]:
    return {"domain": domain_model.domain}


# Language code routes
class LanguageModel(BaseModel):
    alpha2: Optional[LanguageAlpha2] = None
    name: Optional[LanguageName] = None
    iso639_3: Optional[ISO639_3] = None
    iso639_5: Optional[ISO639_5] = None


@router.post("/language/", response_model=dict[str, Any])
async def process_language(language_model: LanguageModel) -> dict[str, Any]:
    return {k: str(v) for k, v in language_model.dict(exclude_none=True).items()}


# Script code route
class ScriptCodeModel(BaseModel):
    script_code: ISO_15924


@router.post("/script/", response_model=dict[str, Any])
async def process_script(script_model: ScriptCodeModel) -> dict[str, Any]:
    return {"script_code": str(script_model.script_code)}


# Semantic Version route
class VersionModel(BaseModel):
    version: SemanticVersion


@router.post("/version/", response_model=dict[str, Any])
async def process_version(version_model: VersionModel) -> dict[str, Any]:
    version = version_model.version
    return {
        "version": str(version),
        "major": version.major,
        "minor": version.minor,
        "patch": version.patch,
        "prerelease": version.prerelease,
        "build": version.build,
    }


# S3Path route
class S3PathModel(BaseModel):
    s3_path: S3Path


@router.post("/s3/", response_model=dict[str, Any])
async def process_s3_path(s3_model: S3PathModel) -> dict[str, Any]:
    path = s3_model.s3_path
    return {"s3_path": str(path), "bucket": path.bucket, "key": path.key}


# TimeZoneName route
class TimeZoneModel(BaseModel):
    timezone: TimeZoneName


@router.post("/timezone/", response_model=dict[str, Any])
async def process_timezone(timezone_model: TimeZoneModel) -> dict[str, Any]:
    return {"timezone": str(timezone_model.timezone)}


# ULID route
class ULIDModel(BaseModel):
    ulid: ULID


@router.post("/ulid/", response_model=dict[str, Any])
async def process_ulid(ulid_model: ULIDModel) -> dict[str, Any]:
    return {"ulid": str(ulid_model.ulid)}
