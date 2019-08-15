#!/bin/sh

# Install codedeploy agent
yum update -y && yum install -y ruby wget
cd /home/ec2-user
wget https://aws-codedeploy-ap-northeast-2.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto
