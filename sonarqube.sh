#!bin/bash

## Sonarqube install on centos 7

sudo yum update -y

sudo yum install java-11-openjdk-devel -y

sudo yum install java-11-openjdk -y

cd /opt

sudo yum install wget unzip -y

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

sudo unzip /opt/sonarqube-9.3.0.51899.zip

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899

 ./sonar.sh start

sudo firewall-cmd --permanent --add-port=9000/tcp
sudo firewall-cmd --reload
 ./sonar.sh start
echo "Installation done successfully please get the ip and access your sonarqube on the browser"
  
