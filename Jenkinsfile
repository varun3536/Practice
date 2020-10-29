#!/usr/bin/env groovy


	
node {
    try {
        // do something that fails
        sh "exit 0"
	currentBuild.result = 'SUCCESS'
        
    } catch (Exception err) {
        currentBuild.result = 'FAILURE'
    }
    echo "RESULT: ${currentBuild.result}"
}
