#!/usr/bin/env groovy

node{
	checkout scm
	stage('Build'){
		try{
		echo "hello world"
		
	}catch(e){
		println"error $e"
		currentBuild.getNumber())
		currentBuild.result
	}
	stage('Deploy') {
		if (currentBuild.result == null || currentBuild.result == 'SUCCESS') 
	}
}
