#!/usr/bin/env groovy

node {
  stage('Example') {
  try {
  sh 'exit 1'
  }
  catch (exc) {
  echo 'Something failed, I should sound the klaxons!'
  throw new Exception("Something went wrong!")
  }
  }
}
