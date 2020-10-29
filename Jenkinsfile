#!/usr/bin/env groovy


node {
    stage('Step:1'){
      currentBuild.result = 'INPROGRESS'
       echo "RESULT: ${currentBuild.result}"
    try {
        // do something that doesn't fail
        echo "Im not going to fail"
        currentBuild.result = 'INPROGRESS'
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
