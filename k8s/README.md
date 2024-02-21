# Setting Up k8s

## Software required to run the cluster
- [x] [minikube](https://kubernetes.io/docs/tasks/tools/)
- [x] [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [x] [Docker](https://www.docker.com/)
- [x] [Helm](https://helm.sh/)

## Pull the Docker image
- Pull the app image with `docker pull dmaax/simple-app-python`

## Run minikube
- Start minikube with `minikube start`
- Verify everything is running as expected with `minikube status`

## Deploy the cluster
```bash
kubectl apply -f simpleapp-cm.yaml -f simpleapp.yaml -f service.yaml
```

## Run grafana and prometheus
- First add the repositories
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts                                      
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
```
- After that, install prometheus and prometheus-stack
```bash
helm install prometheus prometheus-community/kube-prometheus-stack
```

<details>
  <summary>Missing Steps</summary>
  
  - Deploy Elasticsearch
  - Deploy Fluentd
  - Deploy Kibana
  
</details>
