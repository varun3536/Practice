#!/bin/sh
# This is a comment!
stdbuf -o0
set -o allexport
out=$(ssh -tt -o StrictHostKeyChecking=no -i /var/lib/jenkins/workspace/mykey ec2-user@ec2-3-89-26-76.compute-1.amazonaws.com /bin/bash ./hello.sh << 'EOF'

EOF
)




