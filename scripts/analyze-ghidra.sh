#!/bin/sh
set -eu

if [ "$#" -ne 2 ]; then
  echo "Usage: GHIDRA_HEADLESS=/path/to/analyzeHeadless sh $0 <local-binary> <project-dir>" >&2
  exit 2
fi

: "${GHIDRA_HEADLESS:?Set GHIDRA_HEADLESS to the analyzeHeadless executable}"
BINARY=$1
PROJECT_DIR=$2

if [ ! -x "$GHIDRA_HEADLESS" ]; then
  echo "Not executable: $GHIDRA_HEADLESS" >&2
  exit 2
fi
if [ ! -f "$BINARY" ]; then
  echo "Local binary not found: $BINARY" >&2
  exit 2
fi

PROJECT_PARENT=$(dirname -- "$PROJECT_DIR")
PROJECT_NAME=$(basename -- "$PROJECT_DIR")
mkdir -p "$PROJECT_PARENT"
"$GHIDRA_HEADLESS" "$PROJECT_PARENT" "$PROJECT_NAME" -import "$BINARY"
