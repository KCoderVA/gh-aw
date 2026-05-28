#!/bin/bash
# Download Windows executable from latest release
set -e

OUTPUT_DIR="${1:-.}"
OUTPUT_FILE="${OUTPUT_DIR}/windows-amd64.exe"

echo "Downloading windows-amd64.exe from latest release..."
curl -L -o "$OUTPUT_FILE" "https://github.com/github/gh-aw/releases/latest/download/windows-amd64.exe"

if [ -f "$OUTPUT_FILE" ]; then
    echo "✓ Successfully downloaded to $OUTPUT_FILE"
    chmod +x "$OUTPUT_FILE" 2>/dev/null || true
else
    echo "✗ Failed to download file"
    exit 1
fi
