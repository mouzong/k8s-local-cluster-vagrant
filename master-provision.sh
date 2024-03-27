#!/bin/bash

sudo kubeadm init \
    --pod-network-cidr=10.0.2.0/24 \
    --control-plane-endpoint=k8s-master.codegrill.local

mkdir -p $HOME/.kube

sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

sudo chown $(id -u):$(id -g) $HOME/.kube/config

curl https://raw.githubusercontent.com/projectcalico/calico/v3.27.2/manifests/calico.yaml -O