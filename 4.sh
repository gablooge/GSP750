#!/bin/bash

cp 4.bak main.tf
PROJECT_ID=$(gcloud config list project --format "value(core.project)")

sed -i "s/PROJECT_ID/$PROJECT_ID/g" main.tf

terraform apply -auto-approve
