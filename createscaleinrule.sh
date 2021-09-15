. setenvvars.sh

export CMD="az monitor autoscale rule create \
  --resource-group $RESOURCEGP \
  --autoscale-name $AUTOSCALENAME \
  --condition 'Percentage CPU < 30 avg 5m' \
  --scale in 1"

echo $CMD
eval $CMD