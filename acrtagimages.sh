. setenvvars.sh

export CMD="docker tag azure-vote-front:v1 $ACRLOGINSERVER/azure-vote-front:v1"
echo $CMD
eval $CMD