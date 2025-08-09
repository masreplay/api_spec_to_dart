.PHONY: get g fix-format swagger_to_dart s

get:
	fvm flutter pub get

g:
	fvm dart run build_runner build --delete-conflicting-outputs

fix-format:
	fvm dart fix --apply
	fvm dart format -o write ./lib

swagger_to_dart:
	fvm dart run swagger_to_dart:swagger_to_dart

s:
	make swagger_to_dart
	make g
	make fix-format
