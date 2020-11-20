#!/bin/sh
# This is a comment!
set -o allexport

out-"ssh -T -i /var/lib/jenkins/workspace/mykey ec2-user@ec2-3-89-26-76.compute-1.amazonaws.com /bin/bash ./world.sh >&2 2> /dev/null"
echo "$out"







