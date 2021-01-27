# README

This is an app for deliberate practice of developing Rails app with Docker and K8s. Please don't expect that it does
something useful, TDD put out of the scope.

## Development

Run server `$ ./bin/dev-server`

## Docker

To build from local directory: `docker build .`
To label with tag: `docker build -t truvazia/rails_on_k8s .`
To run bash `docker run -it truvazia/rails_on_k8s:0.1 bash`
To run server `docker run -p 80:3000 truvazia/rails_on_k8s:0.1`
