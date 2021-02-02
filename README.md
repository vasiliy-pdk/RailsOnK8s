# README

This is an app for deliberate practice of developing Rails app with Docker and K8s. Please don't expect that it does
something useful, TDD put out of the scope.

## Development

Run server `$ ./bin/dev-server`

### K8s with minikube

Given profile name is `mn-cluster`

Set Up: 

```
minikube start -p mn-cluster
kubectl apply -f ./k8s/deployment.yml
kubectl apply -f ./k8s/service.yml
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
