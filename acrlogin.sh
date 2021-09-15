. setenvvars.sh

export CMD="az acr login --name $ACRNAME"
echo $CMD
eval $CMD