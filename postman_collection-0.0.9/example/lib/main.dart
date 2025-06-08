import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yaml/yaml.dart';
import 'package:example/src/dio.dart';
import 'package:example/src/models.dart';
import 'package:postman_collection/postman_collection.dart';
import 'package:retrofit/retrofit.dart';

part 'main.g.dart';

class UploadFileResponse {
  final String url;

  UploadFileResponse({required this.url});

  factory UploadFileResponse.fromJson(Map<String, dynamic> json) {
    return UploadFileResponse(
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
    };
  }
}

@RestApi()
abstract class AppClient {
  factory AppClient(Dio dio, {String baseUrl}) = _AppClient;

  @POST('/upload')
  @MultiPart()
  Future<HttpResponse<UploadFileResponse>> uploadFile(
    @Part() File file,
  );

  @GET('/app/{platform}')
  Future<HttpResponse<AppResponse>> getAppData({
    @Path() required String platform,
    @Header('Accept-Language') required String language,
    @Query('version') required String version,
    @Body() required AppDataRequestBody body,
  });
}

class AppClientDoc with PostmanCollectionDocumentationMixin {
  AppClientDoc(this._client);

  final AppClient _client;

  @override
  Future<PostmanCollectionItem> doc() async {
    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromClass(runtimeType),
      item: await Future.wait([
        getAppDataDoc(),
        getUploadFileDoc(),

      ]),
    );
  }

  Future<PostmanCollectionItem> getAppDataDoc() async {
    final function = _client.getAppData;

    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromFunction(function),
      request: PostmanCollectionRequest.fromRequestOptions(
        await getRequestOptionsFromRetrofit(
          () => function(
            platform: 'android',
            version: '1.0.1',
            language: 'en',
            body: AppDataRequestBody(
              date: DateTime.now(),
            ),
          ),
        ),
      ),
      response: [
        PostmanCollectionResponse(
          name: 'Default',
          status: '200',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(
            AppResponse(
              name: 'Postman',
              version: '1.0.0',
            ).toJson(),
          ),
        ),
        PostmanCollectionResponse(
          name: 'Error',
          status: '400',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(MessageResponse().toJson()),
        ),
      ],
    );
  }

  Future<PostmanCollectionItem> getUploadFileDoc() async {
    final function = _client.uploadFile;

    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromFunction(function),
      request: PostmanCollectionRequest.fromRequestOptions(
        await getRequestOptionsFromRetrofit(
          () => function(File('pubspec.yaml')),
        ),
      ),
      response: [
        PostmanCollectionResponse(
          name: 'Default',
          status: '200',
          postmanPreviewLanguage: 'json',
          body: jsonEncode({
            'url': 'https://example.com/test.txt',
          }),
        ),
        PostmanCollectionResponse(
          name: 'Error',
          status: '400',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(MessageResponse().toJson()),
        ),
      ],
    );
  }
}

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET('/users/')
  Future<HttpResponse<List<UserResponse>>> get();

  @GET('/users/{id}')
  Future<HttpResponse<UserResponse>> getDetail(@Path() String id);

  @POST('/users/')
  @MultiPart() // Add this annotation to mark it as form-data
  Future<HttpResponse<UserResponse>> create(@Body() CreateUserRequestBody body);

  @PUT('/users/{id}')
  Future<HttpResponse<UserResponse>> update(
    @Path() String id,
    @Body() UpdateUserRequestBody body,
  );

  @DELETE('/users/{id}')
  Future<HttpResponse<UserResponse>> delete(@Path() String id);
}

class UserClientDoc with PostmanCollectionDocumentationMixin {
  UserClientDoc(this._client);

  final UserClient _client;

  Future<PostmanCollectionItem> getDoc() async {
    final function = _client.get;

    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromFunction(function),
      request: PostmanCollectionRequest.fromRequestOptions(
        await getRequestOptionsFromRetrofit(function),
      ),
      response: [
        PostmanCollectionResponse(
          name: 'Default',
          status: '200',
          postmanPreviewLanguage: 'json',
          body: jsonEncode([
            UserResponse(name: 'John Doe', email: 'johndoe@email.com'),
          ].map((e) => e.toJson()).toList()),
        )
      ],
    );
  }

  Future<PostmanCollectionItem> getDetailDoc() async {
    final function = _client.getDetail;

    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromFunction(function),
      request: PostmanCollectionRequest.fromRequestOptions(
        await getRequestOptionsFromRetrofit(() => function('1')),
      ),
      response: [
        PostmanCollectionResponse(
          name: 'Default',
          status: '200',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(
            UserResponse(
              name: 'John Doe',
              email: 'johndoe@email.com',
            ).toJson(),
          ),
        )
      ],
    );
  }

  Future<PostmanCollectionItem> createDoc() async {
    final function = _client.create;

    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromFunction(function),
      request: PostmanCollectionRequest.fromRequestOptions(
        await getRequestOptionsFromRetrofit(
          () => function(
            CreateUserRequestBody(
              name: 'John Doe',
              email: 'asd',
              image: File("${Directory.current.path}/lib/src/dio.dart"),
            ),
          ),
        ),
      ),
      response: [
        PostmanCollectionResponse(
          name: 'Default',
          status: '200',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(
            UserResponse(
              name: 'John Doe',
              email: 'asd',
            ).toJson(),
          ),
        )
      ],
    );
  }

  Future<PostmanCollectionItem> updateDoc() async {
    final function = _client.update;

    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromFunction(function),
      request: PostmanCollectionRequest.fromRequestOptions(
        await getRequestOptionsFromRetrofit(
          () => function(
            '1',
            UpdateUserRequestBody(
              name: 'John Doe',
              email: 'asd',
            ),
          ),
        ),
      ),
      response: [
        PostmanCollectionResponse(
          name: 'Default',
          status: '200',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(
            UserResponse(
              name: 'John Doe',
              email: 'asd',
            ).toJson(),
          ),
        )
      ],
    );
  }

  Future<PostmanCollectionItem> deleteDoc() async {
    final function = _client.delete;

    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromFunction(function),
      request: PostmanCollectionRequest.fromRequestOptions(
        await getRequestOptionsFromRetrofit(() => function('1')),
      ),
      response: [
        PostmanCollectionResponse(
          name: 'Default',
          status: '200',
          postmanPreviewLanguage: 'json',
          body: jsonEncode(
            UserResponse(
              name: 'John Doe',
              email: 'asd',
            ).toJson(),
          ),
        )
      ],
    );
  }

  @override
  Future<PostmanCollectionItem> doc() async {
    return PostmanCollectionItem(
      name: PostmanCollectionItem.getNameFromClass(runtimeType),
      item: await Future.wait([
        getDoc(),
        getDetailDoc(),
        createDoc(),
        updateDoc(),
        deleteDoc(),
      ]),
    );
  }
}

Future<void> main() async {
  final dio = getDocumentationDio();

  final pubspecYaml = loadYaml(File('pubspec.yaml').readAsStringSync());

  final projectName = pubspecYaml['name'];

  print('Generating Postman Collection for $projectName');

  final collection = PostmanCollection(
    info: PostmanCollectionInfo(
      name: projectName,
      schema: PostmanCollectionInfo.schemaV210,
      version: PostmanCollectionVersion.fromString('1.0.0'),
    ),
    item: await Future.wait([
      AppClientDoc(AppClient(dio)),
      UserClientDoc(UserClient(dio)),
    ].map((e) => e.doc()).toList()),
  );

  final file = File('versions/${PostmanCollection.filename(projectName)}');

  await file.writeAsString(jsonEncode(collection.toJson()));
  print('Postman Collection generated at ${file.path}');
}

String jsonEncode(Object? object) {
  return JsonEncoder.withIndent('  ').convert(object);
}
