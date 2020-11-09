#!/usr/bin/env groovy

def buildUUID = UUID.randomUUID().toString()
println "{$buildUUID}"

node {
   stage('Build'){
   echo "During Build currentResult: ${currentBuild.currentResult}"
    
        // do something that doesn't fail
        echo "Im not going to fail"
    }
        
     stage('Test') {
        try{
            sh "mkdir test && cd test"
            sh "docker ps -a"
            
            sh 'node --version'
            docker ps
       
    } catch (err) {
        echo "During Failure: ${currentBuild.currentResult}"
        echo "Failed: ${err}"
        throw err
       
    }
    }
    if(currentBuild.result=='SUCCESS'){
        println "Post +1 on gerrit"
    }else{
        println "post -1 on gerrit"
        
    }
        
    echo "RESULT: ${currentBuild.result}"
    }
