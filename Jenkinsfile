#!/usr/bin/env groovy


	
node {
    try {
	checkout scm
        // do something that fails
        sh "exit 1"
        
    } catch (Exception err) {
        currentBuild.result = 'FAILURE'
    }
    echo "RESULT: ${currentBuild.result}"
}
