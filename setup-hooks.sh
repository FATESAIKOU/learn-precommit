#!/usr/bin/env bash

HOOK_PATH=".git/hooks/pre-commit"
TARGET_PATH="hooks/pre-commit"

echo "🔧 Installing pre-commit hook..."

# Remove if already exists
if [ -L "$HOOK_PATH" ] || [ -f "$HOOK_PATH" ]; then
  rm "$HOOK_PATH"
fi

ln -s ../../$TARGET_PATH $HOOK_PATH
chmod +x $TARGET_PATH

echo "✅ Pre-commit hook installed successfully."
