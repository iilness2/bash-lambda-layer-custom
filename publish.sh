#!/bin/bash -e

# AWS Regions
REGIONS=(
    "ap-southeast-1"
)
LAYER_NAME="bash-custom"

for region in ${REGIONS[@]}; do
    echo "Publishing layer to $region..."

    LAYER_ARN=$(aws lambda publish-layer-version --region $region --layer-name $LAYER_NAME --description "Bash in AWS Lambda [https://github.com/iilness2/bash-lambda-layer-custom.git]" --compatible-runtimes provided --license MIT --zip-file fileb://export/layer.zip | jq -r .LayerVersionArn)
    POLICY=$(aws lambda add-layer-version-permission --region $region --layer-name $LAYER_NAME --version-number $(echo -n $LAYER_ARN | tail -c 1) --statement-id $LAYER_NAME-public --action lambda:GetLayerVersion --principal \*)
    
    echo $LAYER_ARN
    echo "$region complete"
    echo ""
done

echo "Successfully published to all regions"
