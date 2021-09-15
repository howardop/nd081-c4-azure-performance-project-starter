. setenvvars.sh

export CMD="az acr create --resource-group $RESOURCEGP --name $ACRNAME --sku Basic"
echo $CMD
eval $CMD