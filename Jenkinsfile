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
            echo "${currentBuild.currentResult}"
            stage('Test myapp') {
             println "Try"
              sleep(2)
             def threshold = 100
              if(threshold==100){
               print
             echo "${currentBuild.currentResult}"
               }
       }
     
    } catch (e) {
       println "catch"
       
       throw(e)
    } finally {
      println "Finally"
     
    }
}  
   echo "${currentBuild.currentResult}"
}
