#!/usr/bin/env groovy


	
node {
    try {
        // do something that fails
        sh "exit 0"
	currentBuild.result = 'FAILURE'
        
    } catch (Exception err) {
        currentBuild.result = 'SUCCESS'
    }
    echo "RESULT: ${currentBuild.result}"
}
