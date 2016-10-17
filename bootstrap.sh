#!/usr/bin/env bash

echo "*****************STARTING VM PREP****************"
apt-get update

echo "*****************Installing JDK****************"
sudo apt-get install -y openjdk-7-jdk

echo "*****************Installing Tomcat****************"
sudo apt-get install tomcat7

echo "*****************Preparing War****************"
cd /vagrant
jar cvf tutorial.war *

echo "*****************Deploying War*****************"
sudo cp tutorial.war /var/lib/tomcat7/webapps/

echo "*****************VM PREP COMPLETE****************"
