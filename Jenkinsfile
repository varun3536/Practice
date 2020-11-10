#!/usr/bin/env groovy

def buildUUID = UUID.randomUUID().toString()
println "{$buildUUID}"

node {
   stage('Build'){
    
        // do something that doesn't fail
        echo "Im not going to fail"
    }
        
     stage('Test') {
            try {
            stage('Test myapp') {
               println "Try"
            sleep(10
            currentBuild.result="SUCCESS"
  
       }
     
    } catch (e) {
       println "catch"
       currentBuild.result="FAILED"
       throw(e)
    } finally {
      println "Finally"
      echo "${currentBuild.currentResult}"
    }
}           
}
