#!/bin/bash

ID="$1"

ALLOWED_IDS=(
  "i-093dd623cdaece07a"
  "i-0df98fd7bb73b70af"
)

for INSTANCE in "${ALLOWED_IDS[@]}"; do
  if [[ "$ID" == "$INSTANCE" ]]; then
    echo "Deleting the instance: $ID"
    INSTANCE_ID="$ID"
    exit 0
  fi
done

echo "Error: Instance ID $ID is not allowed"
exit 1
