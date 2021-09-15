. setenvvars.sh

export CMD="az aks enable-addons \
    --addons monitoring \
    --name $KUBECLUSTERNAME \
    --resource-group $RESOURCEGP \
    --workspace-resource-id $MONITORWORKSPACE"
echo $CMD
eval $CMD

