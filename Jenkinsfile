#!/usr/bin/env groovy


node('main') {
    stage('Step:1'){
      def buildUUID = UUID.randomUUID().toString()
      currentBuild.result = 'INPROGRESS'
    try {
        // do something that doesn't fail
        echo "Im not going to fail"
        currentBuild.result = 'SUCCESS'
    } catch (Exception err) {
        currentBuild.result = 'FAILURE'
    }
    if(currentBuild.result == null || currentBuild.result=='SUCCESS'){
        println "Post +1 on gerrit"
    }else{
        println "post -1 on gerrit"
    }
    echo "RESULT: ${currentBuild.result}"
    }
}
