# Autosclale the number of pods in the azure-vote-front deployment.

# In this script, we are using kubectl apply with a yaml file but there is also a kubectl autoscale command.  An example of using that command is:
# kubectl autoscale deployment azure-vote-front --cpu-percent=50 --min=3 --max=10   

export CMD="kubectl apply -f azure-vote-hpa.yaml"
echo $CMD
echo "To see the status of the autoscaler, run kubectl get hpa "

eval $CMD