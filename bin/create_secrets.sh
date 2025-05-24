aws ssm put-parameter \
  --name "/chirpstack/mqtt/username" \
  --value "user" \
  --type "SecureString" \
  --region sa-east-1

aws ssm put-parameter \
  --name "/chirpstack/mqtt/password" \
  --value "password" \
  --type "SecureString" \
  --region sa-east-1

