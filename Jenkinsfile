#!/usr/bin/env groovy

def buildUUID = UUID.randomUUID().toString()

println "${buildUUID}"


        checkout scm
        def remote= [:]
         remote.name = 'test'
         remote.host =' ec2-3-89-26-76.compute-1.amazonaws.com'
        remote.allowAnyHosts= true
      node ('main'){
         withCredentials([sshUserPrivateKey(credentialsId: 'ec2-user', keyFileVariable: '/var/lib/jenkins/workspace/mykey', passphrasevariable: '',usernameVariable: 'ec2-user')]){
            remote.user= ec2-user
            remote.identityfile=identity
            stage("ssh steps"){
               sshScript remote: remote,script:'hello.sh'
          }
       }
   }
