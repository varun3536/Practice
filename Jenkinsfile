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
        
        echo "Failed: ${err}"
        echo "Failed Error": ${currentBuild.currentResult}"
        throw err
       
    }
    }      
   echo "During Failure: ${currentBuild.currentResult}"
    }
