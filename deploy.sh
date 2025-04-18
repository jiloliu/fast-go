#!/bin/bash

bash build.sh

docker build -t fg-apiserver:1.0 .

kubectl apply -f k8s-deploy.yaml