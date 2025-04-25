import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';
part 'advanced_client.g.dart';

@RestApi()
abstract class AdvancedClient {
  factory AdvancedClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _AdvancedClient;

  /// OperationId: advanced-special_uuid
  /// Summary: Handle UUID parameters
  /// Description: Handle UUID parameter.
  @GET('/special/uuid')
  Future<HttpResponse> advancedSpecialUuid({@Query('id') String id});

  /// OperationId: advanced-special_enum
  /// Summary: Handle enum parameters
  /// Description: Handle Enum parameter.
  @GET('/special/enum')
  Future<HttpResponse> advancedSpecialEnum({@Query('level') UserLevel level});

  /// OperationId: advanced-special_literal
  /// Summary: Handle literal type parameters
  /// Description: Handle Literal type parameter.
  @GET('/special/literal')
  Future<HttpResponse> advancedSpecialLiteral({@Query('mode') String mode});

  /// OperationId: advanced-collection_list
  /// Summary: Collection List
  /// Description: Handle list of strings query parameter.
  @GET('/collection/list')
  Future<HttpResponse> advancedCollectionList(
      {@Query('items') List<String> items});

  /// OperationId: advanced-collection_set
  /// Summary: Collection Set
  /// Description: Handle set of integers query parameter.
  @GET('/collection/set')
  Future<HttpResponse> advancedCollectionSet({@Query('items') List<int> items});

  /// OperationId: advanced-collection_dict
  /// Summary: Collection Dict
  /// Description: Handle dictionary in request body.
  @GET('/collection/dict')
  Future<HttpResponse> advancedCollectionDict();

  /// OperationId: advanced-collection_tuple
  /// Summary: Collection Tuple
  /// Description: Handle fixed-size tuple query parameter.
  @GET('/collection/tuple')
  Future<HttpResponse> advancedCollectionTuple(
      {@Query('items') List<dynamic> items});

  /// OperationId: advanced-collection_variable_tuple
  /// Summary: Collection Variable Tuple
  /// Description: Handle variable-size tuple query parameter.
  @GET('/collection/variable_tuple')
  Future<HttpResponse> advancedCollectionVariableTuple(
      {@Query('items') List<String> items});

  /// OperationId: advanced-union_simple
  /// Summary: Handle union type parameters
  /// Description: Handle union type parameter.
  @GET('/union/simple')
  Future<HttpResponse> advancedUnionSimple({@Query('value') dynamic value});

  /// OperationId: advanced-union_optional
  /// Summary: Handle optional parameters
  /// Description: Handle optional type parameter.
  @GET('/union/optional')
  Future<HttpResponse> advancedUnionOptional({@Query('value') String? value});

  /// OperationId: advanced-union_modern
  /// Summary: Handle union with modern Python syntax
  /// Description: Handle union with modern Python syntax (Python 3.10+).
  @GET('/union/modern')
  Future<HttpResponse> advancedUnionModern({@Query('value') dynamic value});

  /// OperationId: advanced-custom_positive_int
  /// Summary: Demonstrate custom type validation
  /// Description: Handle custom type for positive integers.
  @GET('/custom/positive_int')
  Future<HttpResponse> advancedCustomPositiveInt({
    @Query('value') int value,
    @Query('value2') int value2,
  });

  /// OperationId: advanced-depends_query
  /// Summary: Use dependency injection for common parameters
  /// Description: Use dependency injection for common parameters.
  @GET('/depends/query')
  Future<HttpResponse> advancedDependsQuery({
    @Query('q') String? q,
    @Query('skip') int skip,
    @Query('limit') int limit,
  });

  /// OperationId: advanced-depends_class
  /// Summary: Use class-based dependency injection
  /// Description: Use class-based dependency injection.
  @GET('/depends/class')
  Future<HttpResponse> advancedDependsClass({@Query('db_name') String dbName});

  /// OperationId: advanced-error_not_found
  /// Summary: Demonstrate 404 error handling
  /// Description: Raise an HTTP exception if the item is not found.
  @GET('/errors/not_found/{item_id}')
  Future<HttpResponse> advancedErrorNotFound({@Path('item_id') int itemId});

  /// OperationId: advanced-error_custom
  /// Summary: Demonstrate custom error status codes
  /// Description: Raise custom HTTP exceptions based on query parameters.
  @GET('/errors/custom')
  Future<HttpResponse> advancedErrorCustom({@Query('code') int code});
}
