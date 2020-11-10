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
            try {
            stage('Test myapp') {
            echo "R ${currentBuild.result} C ${currentBuild.currentResult}"
            step([
            $class : 'RobotPublisher',
            outputPath : 'myapp/output/',
            outputFileName : "*.xml",
            disableArchiveOutput : false,
            passThreshold : 100,
            unstableThreshold: 95.0,
            otherFiles : "*/selenium-screenshot.png,*/report-.csv",
          ])
               if(passThreshold==100 || unstableThreshold==95.0){
                  println "gerrit +1"
               }
       }
       echo "R ${currentBuild.result} C ${currentBuild.currentResult}"
    } catch (e) {
       throw(e)
    } finally {
    }
}
       
    }     
   echo "During Failure: ${currentBuild.currentResult}"
    }
