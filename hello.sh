#!/bin/sh
# This is a comment!

out=ssh -tt -i /var/lib/jenkins/workspace/mykey ec2-user@ec2-3-89-26-76.compute-1.amazonaws.com stdbuf -oL /bin/bash  ./hello.sh
echo "print"






