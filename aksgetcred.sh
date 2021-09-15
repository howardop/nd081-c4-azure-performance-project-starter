. setenvvars.sh

export CMD="az aks get-credentials --resource-group $RESOURCEGP --name $AKSCLUSTERNAME"
echo $CMD
eval $CMD