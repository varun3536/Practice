#!/usr/bin/env groovy

node {
  stage('Example') {
  try {
  sh 'exit 0'
  docker.image('node:7-alpine').inside {
     stage('Test') {
            sh 'node --version'
            }
        }
  }
  catch (exc) {
  echo 'Something failed, I should sound the klaxons!'
  error "Program failed, please read logs..."
  } 
  }
}
