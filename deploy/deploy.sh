# Deployment
BASE_PREFIX=<set your prefix>
DEPLOYMENT_NAME=$BASE_PREFIX-deployment-$(date +%s)

## Set GitHub PAT
### Add your GitHub PAT
### If stored in a KeyVault, use the following command to retrieve it
### GITHUB_PAT=$(az keyvault secret show --vault-name $KEYVAULT_NAME--name $SECRET_NAME --query value -o tsv)
GITHUB_PAT=''

## Start deployment
az deployment sub create --location westeurope --name $DEPLOYMENT_NAME --template-file main.bicep --parameters parameters.json --parameter gitHubPat=$GITHUB_PAT basePrefix=$BASE_PREFIX