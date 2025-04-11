#!/bin/bash

# Define source and destination paths
ROOT_DIR=$(git rev-parse --show-toplevel)
PACKAGE_DIR="$ROOT_DIR/packages/swagger_to_dart"

# Ensure package directory exists
mkdir -p "$PACKAGE_DIR"

# Define files to sync
declare -a FILES=(
  "README.md"
  "LICENSE"
  "CHANGELOG.md"
)

# Sync each file
for FILE in "${FILES[@]}"; do
  SOURCE="$ROOT_DIR/$FILE"
  DEST="$PACKAGE_DIR/$FILE"
  
  # Check if source file exists
  if [ -f "$SOURCE" ]; then
    echo "Syncing $FILE: $SOURCE -> $DEST"
    cp "$SOURCE" "$DEST"
  else
    echo "Source file not found: $SOURCE"
  fi
done

exit 0
