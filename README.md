# README

This is an app for deliberate practice of developing Rails app with Docker and K8s. Please don't expect that it does
something useful, TDD put out of the scope.

## Development

### Requirements

* [Docker compose](https://docs.docker.com/compose/install/)

### Setup

Run `docker-compose build ; docker-compose up`
Run in another terminal `docker-compose run web rake db:create`

### Routine operations

Start server `docker-compose up`.

Stop server `docker-compose down`.

Check for https://docs.docker.com/compose/rails/ for more details.

### K8s with minikube

Given profile name is `mn-cluster`

Set Up: 

```
minikube start -p mn-cluster
kubectl create secret generic railsonk8s-db \
  --from-literal=railsonk8s-database-host=rails-on-k8s.cu5******.rds.amazonaws.com \
  --from-literal=railsonk8s-database-password='********'
kubectl apply -f ./k8s/service.yml
kubectl apply -f ./k8s/deployment.yml
minikube -p mn-cluster service rails-on-k8s-service # to open in the browser
```

Tear Down:

```
kubectl delete -f ./k8s/service.yml
kubectl delete -f ./k8s/deployment.yml
minikube stop -p mn-cluster
```

## Docker

To build from local directory: `docker build .`
To label with tag: `docker build -t truvazia/rails_on_k8s .`
To run bash `docker run -it truvazia/rails_on_k8s:0.1 bash`
To run server `docker run -p 80:3000 truvazia/rails_on_k8s:0.1`
