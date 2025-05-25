aws cloudformation create-stack \
--stack-name ChirpStackAU915 \
--template-body file://cloudformation.yaml \
--parameters ParameterKey=KeyName,ParameterValue=chirpstack-key-saopaulo \
--region sa-east-1 \
--capabilities CAPABILITY_IAM