# Fetch credentials from SSM
MQTT_USER=$(aws ssm get-parameter \
--name "/chirpstack/mqtt/username" \
--with-decryption \
--query Parameter.Value \
--output text \
--region sa-east-1)


MQTT_PASS=$(aws ssm get-parameter \
--name "/chirpstack/mqtt/password" \
--with-decryption \
--query Parameter.Value \
--output text \
--region sa-east-1)


# Write to environment file
cat <<EOF > mqtt.env
MQTT_BROKER_HOST=mosquitto
MQTT_USERNAME=$MQTT_USER
MQTT_PASSWORD=$MQTT_PASS
EOF