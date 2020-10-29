#!/usr/bin/env groovy

BUILD_ID=1
JENKINS_URL=http://54.236.17.191:8080/job/Practice/job/main/
node {
    stage('Build'){
   echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}
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
