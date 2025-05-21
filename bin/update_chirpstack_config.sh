#!/bin/bash

# Directory containing the region_*.toml files
DIRECTORY="/Users/gonzalo/Workspace/cesop-chirpstack/configuration/chirpstack"

# Loop through all region_*.toml files in the directory
for FILE in "$DIRECTORY"/region_*.toml; do
  if [[ -f "$FILE" ]]; then
    echo "Processing: $FILE"

    # Replace the server line with the new URL format
    sed -i '' -E 's|server[[:space:]]*=[[:space:]]*".*"|server="tcp://${MQTT_USERNAME}:${MQTT_PASSWORD}@${MQTT_BROKER_HOST}:1883"|' "$FILE"

    # Remove the username and password lines
    sed -i '' -E '/username[[:space:]]*=[[:space:]]*".*"/d' "$FILE"
    sed -i '' -E '/password[[:space:]]*=[[:space:]]*".*"/d' "$FILE"

    echo "Updated: $FILE"
  else
    echo "No matching files found in $DIRECTORY"
  fi
done