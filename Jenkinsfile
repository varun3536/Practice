#!/usr/bin/env groovy

node{
	stage('Build'){
		try{
		echo "hello world"
		echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}
	}catch(e){
		println"error $e"
		currentBuild.getNumber())
		currentBuild.result
	}
	stage('Deploy') {
		if (currentBuild.result == null || currentBuild.result == 'SUCCESS') 
	}
}
