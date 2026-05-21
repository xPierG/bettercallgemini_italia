#!/bin/bash
set -euo pipefail

# Package BetterCallClaude Italia for distribution
# Creates a zip ready for Cowork Desktop marketplace upload

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
DIST_DIR="$REPO_ROOT/dist"
PLUGIN_DIR="$REPO_ROOT/bettercallclaude_italia"
VERSION=$(node -p "require('$REPO_ROOT/package.json').version")

mkdir -p "$DIST_DIR"

echo "📦 Packaging BetterCallClaude Italia v$VERSION..."

# Validate first
echo "  🔍 Running validation..."
node "$REPO_ROOT/scripts/validate-plugin.js"

# Create temp staging directory
STAGING=$(mktemp -d)
trap "rm -rf $STAGING" EXIT

# Copy plugin files
cp -r "$PLUGIN_DIR" "$STAGING/"

# Create the zip
OUTPUT="$DIST_DIR/bettercallclaude_italia-v${VERSION}.zip"
(cd "$STAGING" && zip -r "$OUTPUT" bettercallclaude_italia)

echo ""
echo "✅ Package created: $OUTPUT"
echo "   Size: $(du -h "$OUTPUT" | cut -f1)"
echo ""
echo "Ready for Cowork Desktop marketplace upload."
