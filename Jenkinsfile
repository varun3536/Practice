#!/usr/bin/env groovy
import groovy.json.JsonSlurper
properties ([
    parameters([
        choice(choices: ['PROD', 'DEV', 'QA'], description: '', name: 'ParamEnv' ),   
        string(name: 'ParamVersion', defaultValue: '', description: 'Version to deploy'),
        extendedChoice(
            name: 'Image',
            description: '',
            visibleItemCount: 50,
            groovyScript: '''
            try {
            def get = new URL("https://chromedriver.storage.googleapis.com").openConnection();
            def getRC = get.getResponseCode();
             if (getRC.equals(200)) {
                def nexus_response = [:]
                nexus_response = new JsonSlurper().parseText(get.getInputStream().getText())
                def image_tag_list = []
                for (tag in nexus_response.items.version){
                   image_tag_list.add(tag)
        }
       return image_tag_list.sort()
    }
}catch(Exception e){
    println(e)
}
)
    ])
]) 

def buildUUID = UUID.randomUUID().toString()

println "${buildUUID}"

node {
   stage('Build'){
        checkout scm


         sh ' which docker'
        sh "ls -la"
         //sh script: "./hello.sh"
        //sh script: "set +x && ./hello.sh 2>&1 | tee some_log.log > /dev/null"
       
       
        sh "whoami"
   


         
        // do something that doesn't fail
       
   } 
    //  stage('Test') {
    //         try {
    //         echo "${currentBuild.currentResult}"
    //         stage('Test myapp') {
    //          println "Try"
             
    //          def threshold = 100
    //           if(threshold==100){
             
             
    //           }
    //   }
     
    // } catch (e) {
    //   println "catch"
       
    //   sh "rm -rf ${buildUUID}" 
    //   throw e
    //   sh "rm -rf ${buildUUID}"
    // } finally {
               
    //   println "Finally"
          
    //      }
          
    //     stage ('continue') {     
    //     println "Continue after finally"
    //     // sh (script: "/bin/bash -c find -type f -name 'output.xml' -exec grep '<stat ' {} \\; | sed 's/<stat \\(.*\\)<\\/stat>/\\1/g' | grep 'name' |cut -f1 -d'>' |  sed -r 's/[[:alnum:]]+=/\\n&/g'")
        
    //      def a1=sh (script: "cat /var/lib/jenkins/workspace/*/output.xml | grep 'fail=\"0\"' | grep 'Test Bvt'", returnStatus:true)
         
         
    //      //sh  script: """find -type f -name 'output.xml' -exec grep '<stat ' {} \\; | sed 's/<stat \\(.*\\)<\\/stat>/\\1/g' | grep 'name' |cut -f1 -d'>' |  sed -r 's/[[:alnum:]]+=/\\n&/g'|awk -F= '\$1==\"fail\"{print \$2}'| xargs >result1"""
    //      def a2=sh (script:"cat output.xml | grep 'fail=\"0\"' | grep 'Test Bvt'", returnStatus:true)
    //         println "this is a1 $a1"
    //         println "this is a2 $a2"
    //      if (a1 == 0 && a2 == 0){
    //             println " ********+1 on gerrit*******"
    //      }else{
    //         println "----1 on gerrit"
    //       }     
//      } 
//   }
}
