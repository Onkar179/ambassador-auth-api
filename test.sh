#!/bin/bash
kubectl apply -f https://app.getambassador.io/yaml/edge-stack/3.1.0/aes-crds.yaml && \
kubectl wait --timeout=90s --for=condition=available deployment emissary-apiext -n emissary-system
kubectl apply -f https://app.getambassador.io/yaml/edge-stack/3.1.0/aes.yaml && \
kubectl -n ambassador wait --for condition=available --timeout=90s deploy -lproduct=aes

