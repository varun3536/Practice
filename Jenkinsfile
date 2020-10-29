#!/usr/bin/env groovy

BUILD_ID=1
node {
    stage('Build'){
   echo "During Build currentResult: ${currentBuild.currentResult}"
    try {
        // do something that doesn't fail
        echo "Im not going to fail"
        sh 'make || true'
        docker.image('node:7-alpine').inside {
     stage('Test') {
            sh 'node --version'
            }
        }
        echo "During Build currentResult: ${currentBuild.currentResult}"
    } catch (Exception err) {
        currentBuild.result = 'FAILURE'
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
