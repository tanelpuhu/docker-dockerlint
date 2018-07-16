#!/usr/bin/env bash
set -ex

EXPECTED="Dockerlint 0.3.9"

docker build -t dockerlint .

OUTPUT=$(docker run dockerlint -h 2>&1)

if [[ "$OUTPUT" == "$EXPECTED"* ]]; then
  echo "All good, output was as expected"
  exit 0
else
  echo "Something has changed: $OUTPUT"
  exit 1
fi
