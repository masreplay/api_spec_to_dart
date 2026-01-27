/// OrderDto
/// {
///     "properties": {
///         "id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "kind": {
///             "$ref": "#/components/schemas/DocumentKind"
///         },
///         "sale_point_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "sale_point_name": {
///             "type": "string"
///         },
///         "customer_id": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "customer_name": {
///             "type": "string",
///             "nullable": true
///         },
///         "user_id": {
///             "type": "string",
///             "format": "uuid"
///         },
///         "user_name": {
///             "type": "string"
///         },
///         "status": {
///             "$ref": "#/components/schemas/OrderStatus"
///         },
///         "payment_status": {
///             "$ref": "#/components/schemas/OrderPaymentStatus"
///         },
///         "is_paid": {
///             "type": "boolean"
///         },
///         "number": {
///             "type": "string"
///         },
///         "total": {
///             "type": "number",
///             "format": "double"
///         },
///         "created_at": {
///             "type": "string",
///             "format": "date-time"
///         },
///         "modified_at": {
///             "type": "string",
///             "format": "date-time"
///         },
///         "lines": {
///             "type": "array",
///             "items": {
///                 "$ref": "#/components/schemas/OrderLineDto"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "created_at",
///         "id",
///         "is_paid",
///         "kind",
///         "lines",
///         "modified_at",
///         "number",
///         "payment_status",
///         "sale_point_id",
///         "sale_point_name",
///         "status",
///         "total",
///         "user_id",
///         "user_name"
///     ],
///     "additionalProperties": false
/// }
library order_dto;

import 'exports.dart';
part 'order_dto.freezed.dart';
part 'order_dto.g.dart'; // OrderDto

@freezed
abstract class OrderDto with _$OrderDto {
  const OrderDto._();

  @jsonSerializable
  const factory OrderDto({
    /// id
    @JsonKey(name: OrderDto.idKey_) required String id,

    /// kind
    @JsonKey(name: OrderDto.kindKey_) required DocumentKind kind,

    /// salePointId
    @JsonKey(name: OrderDto.salePointIdKey_) required String salePointId,

    /// salePointName
    @JsonKey(name: OrderDto.salePointNameKey_) required String salePointName,

    /// customerId
    @JsonKey(name: OrderDto.customerIdKey_) String? customerId,

    /// customerName
    @JsonKey(name: OrderDto.customerNameKey_) String? customerName,

    /// userId
    @JsonKey(name: OrderDto.userIdKey_) required String userId,

    /// userName
    @JsonKey(name: OrderDto.userNameKey_) required String userName,

    /// status
    @JsonKey(name: OrderDto.statusKey_) required OrderStatus status,

    /// paymentStatus
    @JsonKey(name: OrderDto.paymentStatusKey_)
    required OrderPaymentStatus paymentStatus,

    /// isPaid
    @JsonKey(name: OrderDto.isPaidKey_) required bool isPaid,

    /// number
    @JsonKey(name: OrderDto.numberKey_) required String number,

    /// total
    @JsonKey(name: OrderDto.totalKey_) required double total,

    /// createdAt
    @JsonKey(name: OrderDto.createdAtKey_) required DateTime createdAt,

    /// modifiedAt
    @JsonKey(name: OrderDto.modifiedAtKey_) required DateTime modifiedAt,

    /// lines
    @JsonKey(name: OrderDto.linesKey_) required List<OrderLineDto> lines,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  static const String idKey_ = r'id';

  static const String kindKey_ = r'kind';

  static const String salePointIdKey_ = r'sale_point_id';

  static const String salePointNameKey_ = r'sale_point_name';

  static const String customerIdKey_ = r'customer_id';

  static const String customerNameKey_ = r'customer_name';

  static const String userIdKey_ = r'user_id';

  static const String userNameKey_ = r'user_name';

  static const String statusKey_ = r'status';

  static const String paymentStatusKey_ = r'payment_status';

  static const String isPaidKey_ = r'is_paid';

  static const String numberKey_ = r'number';

  static const String totalKey_ = r'total';

  static const String createdAtKey_ = r'created_at';

  static const String modifiedAtKey_ = r'modified_at';

  static const String linesKey_ = r'lines';
}
