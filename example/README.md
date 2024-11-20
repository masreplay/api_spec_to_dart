- ### Put your schema file from swagger and add the path to it in pubspec.yaml
- ### Set the output directory in pubspec.yaml

- ### Add dependencies to `pubspec.yaml` file:
```sh
dart pub add freezed_annotation
dart pub add dev:build_runner
dart pub add dev:freezed

dart pub add json_annotation
dart pub add dev:json_serializable

dart pub add dio

dart pub add retrofit
dart pub add dev:retrofit_generator


dart pub add dev:swagger_to_dart --path=../
```


- ### For `freezed` with `retrofit` use build.yaml file with this content:
```yaml
global_options:
  freezed:
    runs_before:
      - json_serializable
  json_serializable:
    runs_before:
      - retrofit_generator
```

- ### Run code generation with `build_runner` for `json_seializable`(`freezed`) and `retrofit` with command:
```shell
dart run build_runner build
```
- ### Clients and models are generated!
