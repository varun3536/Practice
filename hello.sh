#!/bin/sh
# This is a comment!
stdbuf --output=0
set -o allexport
ssh -tt -o StrictHostKeyChecking=no -i /var/lib/jenkins/workspace/mykey ec2-user@ec2-3-89-26-76.compute-1.amazonaws.com /bin/bash ./hello.sh 
echo "Hello      World"       # This is a comment, too!
echo "Hello World"
echo "Hello * World"



