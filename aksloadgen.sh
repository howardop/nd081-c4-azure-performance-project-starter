. setenvvars.sh

kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while true; do wget -q -O- 52.255.226.9; done"