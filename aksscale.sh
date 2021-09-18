# Manuall change the number of pods in the azure-vote-front deployment.

. setenvvars.sh

export CMD="kubectl scale --replicas=1 deployment/azure-vote-front"
echo $CMD
#echo "Run kubectl get pods again to verify that AKS successfully creates the additional pods. After a minute or so, the pods are available in your cluster:"

eval $CMD