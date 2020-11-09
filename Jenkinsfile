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
           step[(
              t=echo "Pass"
              )]
           if(t=="Pass"){
              echo "${currentBuild.currentResult}"
           }
    } catch (err) {
        echo "During Failure: ${currentBuild.currentResult}"
        echo "Failed: ${err}"
        throw err
       
    }
    }
    if(t=="Pass"){
        println "Post +1 on gerrit"
    }else{
        println "post -1 on gerrit"
        
    }
        
   echo "RESULT: ${currentBuild.currentResult}"
    }
