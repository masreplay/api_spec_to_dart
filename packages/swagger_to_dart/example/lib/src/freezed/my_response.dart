import 'package:example/src/gen/models/exports.dart';

part 'my_response.freezed.dart';
part 'my_response.g.dart';

@Freezed(unionKey: 'type', when: FreezedWhenOptions.none, map: FreezedMapOptions.none)
sealed class MyResponse with _$MyResponse {
  @FreezedUnionValue('create')
  const factory MyResponse(CreateOrderLine create) = MyResponseData;
  @FreezedUnionValue('update')
  const factory MyResponse.special(UpdateOrderLine update) = MyResponseSpecial;
  @FreezedUnionValue('delete')
  const factory MyResponse.error(DeleteOrderLine delete) = MyResponseError;

  factory MyResponse.fromJson(Map<String, dynamic> json) => _$MyResponseFromJson(json);
}
