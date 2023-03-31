#!/bin/bash

while [[ -z "$(gcloud config get-value core/account)" ]]; 
do echo "waiting login" && sleep 2; 
done

while [[ -z "$(gcloud config get-value project)" ]]; 
do echo "waiting project" && sleep 2; 
done

cp 3.bak main.tf
PROJECT_ID=$(gcloud config list project --format "value(core.project)")

sed -i "s/PROJECT_ID/$PROJECT_ID/g" main.tf

terraform apply -auto-approve
