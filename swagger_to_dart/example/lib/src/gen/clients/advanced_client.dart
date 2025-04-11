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
  /// Summery: Handle UUID parameters
  /// Description: Handle UUID parameter.
  @GET('/special/uuid')
  Future<HttpResponse> advancedSpecialUuid({
    @Queries() required AdvancedSpecialUuidQueries queries,
  });

  /// OperationId: advanced-special_enum
  /// Summery: Handle enum parameters
  /// Description: Handle Enum parameter.
  @GET('/special/enum')
  Future<HttpResponse> advancedSpecialEnum({
    @Queries() required AdvancedSpecialEnumQueries queries,
  });

  /// OperationId: advanced-special_literal
  /// Summery: Handle literal type parameters
  /// Description: Handle Literal type parameter.
  @GET('/special/literal')
  Future<HttpResponse> advancedSpecialLiteral({
    @Queries() required AdvancedSpecialLiteralQueries queries,
  });

  /// OperationId: advanced-collection_list
  /// Summery: Collection List
  /// Description: Handle list of strings query parameter.
  @GET('/collection/list')
  Future<HttpResponse> advancedCollectionList({
    @Queries() required AdvancedCollectionListQueries queries,
  });

  /// OperationId: advanced-collection_set
  /// Summery: Collection Set
  /// Description: Handle set of integers query parameter.
  @GET('/collection/set')
  Future<HttpResponse> advancedCollectionSet({
    @Queries() required AdvancedCollectionSetQueries queries,
  });

  /// OperationId: advanced-collection_dict
  /// Summery: Collection Dict
  /// Description: Handle dictionary in request body.
  @GET('/collection/dict')
  Future<HttpResponse> advancedCollectionDict({
    @Body() required Map<String, dynamic> body,
  });

  /// OperationId: advanced-collection_tuple
  /// Summery: Collection Tuple
  /// Description: Handle fixed-size tuple query parameter.
  @GET('/collection/tuple')
  Future<HttpResponse> advancedCollectionTuple({
    @Queries() required AdvancedCollectionTupleQueries queries,
  });

  /// OperationId: advanced-collection_variable_tuple
  /// Summery: Collection Variable Tuple
  /// Description: Handle variable-size tuple query parameter.
  @GET('/collection/variable_tuple')
  Future<HttpResponse> advancedCollectionVariableTuple({
    @Queries() required AdvancedCollectionVariableTupleQueries queries,
  });

  /// OperationId: advanced-union_simple
  /// Summery: Handle union type parameters
  /// Description: Handle union type parameter.
  @GET('/union/simple')
  Future<HttpResponse> advancedUnionSimple({
    @Queries() required AdvancedUnionSimpleQueries queries,
  });

  /// OperationId: advanced-union_optional
  /// Summery: Handle optional parameters
  /// Description: Handle optional type parameter.
  @GET('/union/optional')
  Future<HttpResponse> advancedUnionOptional({
    @Queries() required AdvancedUnionOptionalQueries queries,
  });

  /// OperationId: advanced-union_modern
  /// Summery: Handle union with modern Python syntax
  /// Description: Handle union with modern Python syntax (Python 3.10+).
  @GET('/union/modern')
  Future<HttpResponse> advancedUnionModern({
    @Queries() required AdvancedUnionModernQueries queries,
  });

  /// OperationId: advanced-custom_positive_int
  /// Summery: Demonstrate custom type validation
  /// Description: Handle custom type for positive integers.
  @GET('/custom/positive_int')
  Future<HttpResponse> advancedCustomPositiveInt({
    @Queries() required AdvancedCustomPositiveIntQueries queries,
  });

  /// OperationId: advanced-depends_query
  /// Summery: Use dependency injection for common parameters
  /// Description: Use dependency injection for common parameters.
  @GET('/depends/query')
  Future<HttpResponse> advancedDependsQuery({
    @Queries() required AdvancedDependsQueryQueries queries,
  });

  /// OperationId: advanced-depends_class
  /// Summery: Use class-based dependency injection
  /// Description: Use class-based dependency injection.
  @GET('/depends/class')
  Future<HttpResponse> advancedDependsClass({
    @Queries() required AdvancedDependsClassQueries queries,
  });

  /// OperationId: advanced-error_not_found
  /// Summery: Demonstrate 404 error handling
  /// Description: Raise an HTTP exception if the item is not found.
  @GET('/errors/not_found/{item_id}')
  Future<HttpResponse> advancedErrorNotFound({
    @Path('item_id') required int itemId,
  });

  /// OperationId: advanced-error_custom
  /// Summery: Demonstrate custom error status codes
  /// Description: Raise custom HTTP exceptions based on query parameters.
  @GET('/errors/custom')
  Future<HttpResponse> advancedErrorCustom({
    @Queries() required AdvancedErrorCustomQueries queries,
  });
}
