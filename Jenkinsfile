#!/usr/bin/env groovy

def buildUUID = UUID.randomUUID().toString()
println "${buildUUID}"

node {
   stage('Build'){
        checkout scm
         sh script: "mkdir ${buildUUID} && cd ${buildUUID}"
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
        sh "pwd"
        // sh (script: "/bin/bash -c find -type f -name 'output.xml' -exec grep '<stat ' {} \\; | sed 's/<stat \\(.*\\)<\\/stat>/\\1/g' | grep 'name' |cut -f1 -d'>' |  sed -r 's/[[:alnum:]]+=/\\n&/g'")
        
         def a1=sh: "cat output.xml | grep 'fail=\\"0\\"' | grep Test Bvt", returnStatus:true | echo?0
         //sh  script: """find -type f -name 'output.xml' -exec grep '<stat ' {} \\; | sed 's/<stat \\(.*\\)<\\/stat>/\\1/g' | grep 'name' |cut -f1 -d'>' |  sed -r 's/[[:alnum:]]+=/\\n&/g'|awk -F= '\$1==\"fail\"{print \$2}'| xargs >result1"""
         def a2=1
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
