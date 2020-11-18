#!/bin/sh
# This is a comment!

out=  script -q -c "ssh -t -t  -i /var/lib/jenkins/workspace/mykey ec2-user@ec2-3-89-26-76.compute-1.amazonaws.com /bin/bash  ./hello.sh"
echo "print"
echo "${out}"





