#!/bin/bash

# install jenkins
    
sudo yum update -y

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum upgrade -y

## install And Enable Docker
sudo yum install docker -y
sudo service docker start 
sudo systemctl enable docker.service

sudo chmod 777  /var/run/docker.sock


## install Git
sudo yum install git -y
yum install unzip -y

## Install Java 11:
#sudo amazon-linux-extras install java-openjdk11 -y

sudo yum install java-11* -y
## Install Jenkins then Enable the Jenkins service to start at boot :
sudo yum install jenkins -y
sudo systemctl enable jenkins

## Start Jenkins as a service:
sudo systemctl start jenkins

## Display Initial Jenkins Password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword  
# Take the ip to the browser and access to port 8080 (example 10.25.10.2:8080)
