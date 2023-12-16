# Project Sandbox 

This sandbox project is used to deploy web apps that can be used for testing development environments. It is intentionally used to allow you to deploy a Simple React or Flask app into a kubernetes cluster, or use in a terraform project to use AWS ECS and ECR services, or docker-compose them locally.


##### Example Use cases
* testing blue/green deployments in CI/CD pipelines
* IAC challenges with containers
* provide an app for deploying into a local minikube cluster



### Branching Strategy
The Github actions used in this repo are triggered by branch naming.

Branches labeled with the prefix project/ will build and publish the Dockerfiles in the branch and push to dockerhub.

# GH Actions
- Build and Publish Docker images to Dockerhub
- Deploy React App to GH Pages
