. setenvvars.sh

# Variables

# Create AKS cluster
echo "Step 1 - Creating AKS cluster $KUBECLUSTERNAME"
# Use either one of the "az aks create" commands below
# For users working in their personal Azure account
# This commmand will not work for the Cloud Lab users, because you are not allowed to create Log Analytics workspace for monitoring
export CMD="az aks create \
--resource-group $RESOURCEGP \
--name $AKSCLUSTERNAME \
--node-count 1 \
--enable-addons monitoring \
--generate-ssh-keys"
CMD="az aks create --name $KUBECLUSTERNAME  --resource-group $RESOURCEGP --node-count 1  --generate-ssh-keys --node-vm-size standard_b2s 
echo $CMD
eval $CMD

export CMD="az aks enable-addons -a monitoring -n $clusterName -g $resourceGroup --workspace-resource-id '/subscriptions/6c39f60b-2bb1-4e37-ad64-faaf30beaca4/resourcegroups/cloud-demo-153430/providers/microsoft.operationalinsights/workspaces/loganalytics-153430'"
echo $CMD
eval $CMD

echo "AKS cluster created: $clusterName"

# Connect to AKS cluster

echo "Step 2 - Getting AKS credentials"

export CMD="az aks get-credentials \
--resource-group $resourceGroup \
--name $clusterName \
--verbose"
echo $CMD
eval $CMD

echo "Verifying connection to $clusterName"

CMD="kubectl get nodes"
echo $CMD
eval $CMD

# echo "Deploying to AKS cluster"
# The command below will deploy a standard application to your AKS cluster. 
# kubectl apply -f azure-vote.yaml