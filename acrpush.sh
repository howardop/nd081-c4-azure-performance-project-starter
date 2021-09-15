. setenvvars.sh

export CMD="docker push $ACRLOGINSERVER/azure-vote-front:v1"
echo $CMD
eval $CMD