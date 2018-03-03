#!/usr/bin/env bash

insnum=$1


export PROJECT_ID=dextergcptest1
export CONTAINER=minemagicoin
export ZONE=us-central1-c

export SERVICE=$CONTAINERpod$insnum

#export ASSET=sit-eq-tradecore

gcloud container clusters get-credentials $CONTAINER --zone $ZONE --project $PROJECT_ID
kubectl delete deployment $SERVICE
read -p "Press [Enter] key to start deployment..."
kubectl create -f ./gke/$CONTAINER-deploy$insnum.yaml
kubectl get deployments