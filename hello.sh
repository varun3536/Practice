#!/bin/sh
# This is a comment!
set -o allexport

ssh -i /var/lib/jenkins/workspace/mykey ec2-user@ec2-3-89-26-76.compute-1.amazonaws.com script -c  ./world.sh | tee test.log







