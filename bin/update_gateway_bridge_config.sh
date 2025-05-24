#!/bin/bash

# Directory containing the chirpstack-gateway-bridge-*.toml files
DIRECTORY="/Users/gonzalo/Workspace/cesop-chirpstack/configuration/chirpstack-gateway-bridge"

# Loop through all chirpstack-gateway-bridge-*.toml files in the directory
for FILE in "$DIRECTORY"/chirpstack-gateway-bridge-*.toml; do
  if [[ -f "$FILE" ]]; then
    echo "Processing: $FILE"

    # Replace the servers line with the new URL format
    sed -i '' -E 's|servers\s*=\s*\[.*\]|servers=[server="tcp://mqtt-user:mqtt-password@mosquitto:1883"]|' "$FILE"

    # Remove the username and password lines
    sed -i '' -E '/username\s*=\s*".*"/d' "$FILE"
    sed -i '' -E '/password\s*=\s*".*"/d' "$FILE"

    echo "Updated: $FILE"
  else
    echo "No matching files found in $DIRECTORY"
  fi
done