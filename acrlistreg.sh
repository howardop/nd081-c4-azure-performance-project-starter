. setenvvars.sh

export CMD="az acr repository list --name $ACRNAME --output table"
echo $CMD
eval $CMD