#!/bin/bash

# Define the root directory of the project
ROOT_DIR="$(git rev-parse --show-toplevel)"
# Define the subpackage directory
SUBPACKAGE_DIR="$ROOT_DIR/swagger_to_dart_code"

# Create symlinks for common files
echo "Setting up symlinks for common files..."

# List of files to symlink
FILES=("README.md" "CHANGELOG.md" "LICENSE")

for file in "${FILES[@]}"; do
  # Check if the source file exists
  if [ -f "$ROOT_DIR/$file" ]; then
    echo "Creating symlink for $file"
    # Remove existing file or symlink in subpackage if it exists
    if [ -f "$SUBPACKAGE_DIR/$file" ] || [ -h "$SUBPACKAGE_DIR/$file" ]; then
      rm "$SUBPACKAGE_DIR/$file"
    fi
    # Create relative symlink
    ln -s "../$file" "$SUBPACKAGE_DIR/$file"
  else
    echo "Warning: Source file $ROOT_DIR/$file does not exist"
  fi
done

echo "Symlinks setup completed!"
