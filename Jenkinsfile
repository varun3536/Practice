#!/usr/bin/env groovy

def buildUUID = UUID.randomUUID().toString()
println "{$buildUUID}"

node {
   stage('Build'){
   echo "During Build currentResult: ${currentBuild.currentResult}"
    try {
        // do something that doesn't fail
        
        println "Will use a buildId of: ${buildUUId}"
        echo "Im not going to fail"
        sh 'make || true'
        docker.image('node:7-alpine').inside {
     stage('Test') {
            sh 'node --version'
            }
        }
        echo "During Build currentResult: ${currentBuild.currentResult}"
    } catch (err) {
        currentBuild.result = 'FAILURE'
        echo "Failed: ${err}"
        Throw new Exception "$err"
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
