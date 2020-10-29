#!/usr/bin/env groovy

properties([
  parameters([
    separator(name: "BUILD_OPTIONS", sectionHeader: "Build Options"),
    choice(choices: ['Nand', 'both', 'Flashless'],
           description: 'Select the variant to build',
           name: 'Build_Variant')
    ])
 ])
def buildUUID = UUID.randomUUID().toString()
    currentBuild.result = 'INPROGRESS'
node('main') {
    stage('Step:1'){
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
