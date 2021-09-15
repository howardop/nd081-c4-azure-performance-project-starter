. setenvvars.sh

az monitor autoscale create \
  --resource-group $RESOURCEGP \
  --resource $VMSS \
  --resource-type $RESOURCETYPE \
  --name $AUTOSCALENAME \
  --min-count 2 \
  --max-count 10 \
  --count 2