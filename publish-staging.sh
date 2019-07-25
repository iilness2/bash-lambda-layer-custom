#!/bin/bash -e

# AWS Regions
REGIONS=(
    "ap-southeast-2"
)
LAYER_NAME="bash-testing"

for region in ${REGIONS[@]}; do
    echo "Publishing layer to $region..."

    LAYER_ARN=$(aws lambda publish-layer-version --region $region --layer-name $LAYER_NAME --description "Bash in AWS Lambda [https://github.com/iilness2/bash-lambda-layer-custom.git]" --compatible-runtimes provided --license MIT --zip-file fileb://export/layer.zip | jq -r .LayerVersionArn)
    
    echo $LAYER_ARN
    echo "$region complete for Staging"
    echo ""
done

echo "Successfully published to all regions"
