aws cloudformation create-stack \                           
  --stack-name ChirpStackDC \
  --template-body file://cloudformation.yaml \
  --parameters ParameterKey=KeyName,ParameterValue=chirpstack-key-saopaulo \
  --region sa-east-1