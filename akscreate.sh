. setenvvars.sh

export CMD="az aks create \
    --resource-group $RESOURCEGP \
    --name $AKSCLUSTERNAME \
    --node-count 2 \
    --generate-ssh-keys \
    --attach-acr $ACRNAME \
    --location eastus \
    --node-vm-size standard_b2s" 
echo $CMD
eval $CMD

