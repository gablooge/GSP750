#!/bin/bash


cp 2.1.bak main.tf
PROJECT_ID=$(gcloud config list project --format "value(core.project)")

sed -i "s/PROJECT_ID/$PROJECT_ID/g" main.tf

terraform apply -auto-approve

cp 2.2.bak main.tf
PROJECT_ID=$(gcloud config list project --format "value(core.project)")

sed -i "s/PROJECT_ID/$PROJECT_ID/g" main.tf

terraform apply -auto-approve
