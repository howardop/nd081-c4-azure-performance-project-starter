# This command monitors the progress of the kubectl apply command (in aksdeploy.sh) in making the application available to the public.

export CMD="kubectl get service azure-vote-front --watch"
echo $CMD
echo "When the EXTERNAL-IP address changes from pending to an actual public IP address, use CTRL-C to stop the kubectl watch process. "

eval $CMD