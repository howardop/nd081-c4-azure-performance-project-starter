. setenvvars.sh

export CMD="az acr list --resource-group $RESOURCEGP --query "[].{acrLoginServer:loginServer}" --output table"
echo $CMD
eval $CMD