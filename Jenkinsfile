#!/usr/bin/env groovy

def buildUUID = UUID.randomUUID().toString()

println "${buildUUID}"

node {
   stage('Build'){
        checkout scm
        def remote= [:]
         remote.name = 'test'
         remote.host =' ec2-3-89-26-76.compute-1.amazonaws.com'
      node {
         withCredentials([sshUserPrivateKey(credentialsId: 'ec2-user', keyFileVariable: '/var/lib/jenkins/workspace/mykey', passphrasevariable: '',usernameVariable: 'ec2-user')]{
            remote.user= ec2-user
            remote.identityfile=identity
            stage("ssh steps"){
               sshScript remote: remote,script:'hello.sh'
            }
         }
            
         

         
         sh script: "/bin/bash ./hello.sh"
         //sh "chmod +x ./hello.sh"
         //sh script: "./hello.sh"
        
         sh "ls -la"
        // do something that doesn't fail
       
   } 
     stage('Test') {
            try {
            echo "${currentBuild.currentResult}"
            stage('Test myapp') {
             println "Try"
             
             def threshold = 100
              if(threshold==100){
             
             
               }
       }
     
    } catch (e) {
       println "catch"
       
       sh "rm -rf ${buildUUID}" 
       throw e
       sh "rm -rf ${buildUUID}"
    } finally {
               
      println "Finally"
          
         }
          
        stage ('continue') {     
        println "Continue after finally"
        // sh (script: "/bin/bash -c find -type f -name 'output.xml' -exec grep '<stat ' {} \\; | sed 's/<stat \\(.*\\)<\\/stat>/\\1/g' | grep 'name' |cut -f1 -d'>' |  sed -r 's/[[:alnum:]]+=/\\n&/g'")
        
         def a1=sh (script: "cat /var/lib/jenkins/workspace/*/output.xml | grep 'fail=\"0\"' | grep 'Test Bvt'", returnStatus:true)
         
         
         //sh  script: """find -type f -name 'output.xml' -exec grep '<stat ' {} \\; | sed 's/<stat \\(.*\\)<\\/stat>/\\1/g' | grep 'name' |cut -f1 -d'>' |  sed -r 's/[[:alnum:]]+=/\\n&/g'|awk -F= '\$1==\"fail\"{print \$2}'| xargs >result1"""
         def a2=sh (script:"cat output.xml | grep 'fail=\"0\"' | grep 'Test Bvt'", returnStatus:true)
            println "this is a1 $a1"
            println "this is a2 $a2"
         if (a1 == 0 && a2 == 0){
                println " ********+1 on gerrit*******"
         }else{
            println "----1 on gerrit"
          }     
     } 
   }
}
