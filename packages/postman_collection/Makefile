DART ?= dart

.PHONY: models

# Regenerates the typed models from the official schema (CI checks drift).
models:
	$(DART) run ../swagger_to_dart/bin/swagger_to_dart.dart
	$(DART) run build_runner build
