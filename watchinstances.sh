. setenvvars.sh

export CMD="watch az vmss list-instances \
  --resource-group $RESOURCEGP \
  --name $VMSS \
  --output table"

echo $CMD
eval $CMD