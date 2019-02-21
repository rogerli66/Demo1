#!/bin/bash
Homedir=/home/rogerli/mdm-archive
cd $Homedir

#make sure change into k8s prod of mdm in the box you run this script.
#pre-configured k8s env for namespace, cluster, context needs to be done 
#via /~/<user name>/.kube/config, in this script, mdm-prod is already configured
kubectl config use-context mdm-prod

for dplyName in `kubectl get deployments | cut -d ' ' -f 1`
do
        if [ "$dplyName" != "NAME" ] ; then
	  kubectl get deploy $dplyName -o yaml --export > deployPods/$dplyName.yaml        
        fi
done 
echo "all deployment pods created as bellowing "
ls -al $Homedir/deployPods/*.yaml 

for svcName in `kubectl get services | cut -d ' ' -f 1`
do
        if [ "$svcName" != "NAME" ]; then
          kubectl get service $svcName -o yaml --export > services/$svcName.yaml
        fi
done 
echo "all services created as bellowing "
ls -al $Homedir/services/*.yaml 

for ingressName in `kubectl get ingress | cut -d ' ' -f 1`
do
        if [ "$ingressName" != "NAME" ]; then
          kubectl get ingress $ingressName -o yaml --export > ingress/$ingressName.yaml
        fi
done 
echo "all ingress created as bellowing "
ls -al $Homedir/ingress/*.yaml

for cfgMap in `kubectl get configmap | cut -d ' ' -f 1`
do
        if [  "$cfgMap" != "NAME" ]; then
	  kubectl get configmap $cfgMap -o yaml --export > configmaps/$cfgMap.yaml        
	fi
done 
echo "all configMaps created as bellowing "
ls -al $Homedir/configmaps/*.yaml

for secretName in `kubectl get secrets | cut -d ' ' -f 1`
do
        if [ "$secretName" != "NAME" ]; then
          kubectl get secret $secretName -o yaml --export > secrets/$secretName.yaml
        fi
done 
echo "all secrets created as bellowing "
ls -al $Homedir/secrets/*.yaml
