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
              sh script: "exit 1"
             
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
        
         sh (returnStdout: true, script: """find -type f -name 'output.xml' -exec grep '<stat ' {} \\; | sed 's/<stat \\(.*\\)<\\/stat>/\\1/g' | grep 'name' |cut -f1 -d'>' |  sed -r 's/[[:alnum:]]+=/\\n&/g'|awk -F= '\$1==\"fail\"{print \$2}'| xargs >result""")
         def ver=readFile('result').trim()
         echo "${ver}"
         println " ver= ${ver}"
           
         if (ver == "0"){
                 println " +1 on gerrit"
         }else{
            println "-1 on gerrit"
          }     
     } 
   }
}
