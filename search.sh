#!/bin/bash
Homedir=/home/rogerli/mdm_backup
k8s_pod=report*
msg=$1
smsg=$2
kubectl get pods -w $k8s_pod | while read LOGLINE
do
   [[ "${LOGLINE}" == *"$msg"* ]] && pkill -P $$ kubectl
done

for line in ${kubectl get pods | grep $k8s_pod | awk '{print $1}'}; do
    kubectl logs -f $line | tee logfile
done

tail logfile | grep $smsg
RESULT=$?
exit $RESULT
