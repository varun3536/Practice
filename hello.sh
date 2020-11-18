#!/bin/sh
# This is a comment!

out=$(ssh -o StrictHostKeyChecking=no -i /var/lib/jenkins/workspace/mykey ec2-user@ec2-3-89-26-76.compute-1.amazonaws.com /bin/bash ./hello.sh <<'EOF'
echo "let see this works"
EOF
)
echo "${out}"





