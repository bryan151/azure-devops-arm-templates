#/bin/bash

templateFile="azuredeploy.json"
parametersFile="azuredeploy.parameters.json"

resourceGroup="jalabootcamp-rg"

today=$(date +%Y-%m-%d-%H-%M-%S)
deploymentName="MyDeployment-$today"

az deployment group create \
  --name $deploymentName \
  --resource-group $resourceGroup \
  --template-file $templateFile \
  --parameters $parametersFile \
  --verbose