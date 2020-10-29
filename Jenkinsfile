#!/usr/bin/env groovy


node {
    try {
        // do something that doesn't fail
        notify(start)
        echo "Im not going to fail"
        currentBuild.result = 'SUCCESS'
    } catch (Exception err) {
        notify(failure)
        currentBuild.result = 'FAILURE'
    }
    def notify(state)
    echo "RESULT: ${currentBuild.result}"
    
}

