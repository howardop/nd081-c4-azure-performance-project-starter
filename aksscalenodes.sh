# The following example increases the number of AKS nodes to three in the Kubernetes cluster named $AKSCLUSTERRNAME. The command takes a couple of minutes to complete.

. setenvvars.sh

export CMD="az aks scale --resource-group $RESOURCEGP --name $AKSCLUSTERNAME --node-count 3"
echo $CMD
eval $CMD