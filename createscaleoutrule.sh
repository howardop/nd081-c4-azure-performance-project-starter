. setenvvars.sh

export CMD="az monitor autoscale rule create \
  --resource-group $RESOURCEGP \
  --autoscale-name $AUTOSCALENAME \
  --condition 'Percentage CPU > 70 avg 5m' \
  --scale out 2"

echo $CMD
eval $CMD