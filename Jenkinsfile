#!/usr/bin/env groovy


node {
    try {
        // do something that doesn't fail
        echo "Im not going to fail"
        currentBuild.result = 'SUCCESS'
    } catch (Exception err) {
        currentBuild.result = 'FAILURE'
    }
    echo "RESULT: ${currentBuild.result}"
}
try {
    notify(start)
    //put here all your pipeline
    notify(success)
} catch(exception) {
    notify(failure)
}

def notify(state) {
    //notify scm
}
