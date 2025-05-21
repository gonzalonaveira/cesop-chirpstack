aws ssm put-parameter \
  --name "/chirpstack/mqtt/username" \
  --value "cesop_chirpstack_user" \
  --type "SecureString" \
  --region sa-east-1

aws ssm put-parameter \
  --name "/chirpstack/mqtt/password" \
  --value "kPqA}\25sw05" \
  --type "SecureString" \
  --region sa-east-1

