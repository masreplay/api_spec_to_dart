.PHONY: get g swagger_to_dart test s

get:
	fvm flutter pub get

g:
	fvm dart run build_runner build

swagger_to_dart:
	fvm dart run swagger_to_dart

test:
	fvm flutter test

s:
	make swagger_to_dart
	make g
