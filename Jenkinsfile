#!/usr/bin/env groovy

def buildUUID = UUID.randomUUID().toString()
println "{$buildUUID}"

node {
   stage('Build'){
   echo "During Build currentResult: ${currentBuild.currentResult}"
    try {
        // do something that doesn't fail
        
        
        echo "Im not going to fail"
        docker.image('node:7-alpine').inside {
     stage('Test') {
            sh 'node --version'
            docker ps
            }
        }
        echo "During Build currentResult: ${currentBuild.currentResult}"
    } catch (err) {
        currentBuild.result = 'FAILURE'
        echo "Failed: ${err}"
       
    }
    if(currentBuild.result == null || currentBuild.result=='SUCCESS'){
        println "Post +1 on gerrit"
    }else{
        println "post -1 on gerrit"
        deleteDir() 
    }
        
    echo "RESULT: ${currentBuild.result}"
    }
}
