# Display the version of the AKS cluster

. setenvvars.sh

export CMD="az aks show --resource-group $RESOURCEGP --name $AKSCLUSTERNAME --query kubernetesVersion --output table"
echo $CMD
eval $CMD