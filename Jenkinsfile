#!/usr/bin/env groovy

def buildUUID = UUID.randomUUID().toString()
println "{$buildUUID}"

node {
   stage('Build'){
        checkout scm
         
      
        // do something that doesn't fail
        echo "Im not going to fail"
    }
        
     stage('Test') {
            try {
            echo "${currentBuild.currentResult}"
            stage('Test myapp') {
             println "Try"
             
             def threshold = 100
              if(threshold==100){
         
             echo "${currentBuild.currentResult}"
               }
       }
     
    } catch (e) {
       println "catch"
       
       throw(e)
    } finally {
               
      println "Finally"
          sh "pwd"
        // sh (script: "/bin/bash -c find -type f -name 'output.xml' -exec grep '<stat ' {} \\; | sed 's/<stat \\(.*\\)<\\/stat>/\\1/g' | grep 'name' |cut -f1 -d'>' |  sed -r 's/[[:alnum:]]+=/\\n&/g'")
         script {
                def ver_script = $/eval """find -type f -name 'output.xml' -exec grep '<stat ' {} \\; | sed 's/<stat \\(.*\\)<\\/stat>/\\1/g' | grep 'name' |cut -f1 -d'>' |  sed -r 's/[[:alnum:]]+=/\\n&/g'|awk -F= '$1==\\"fail\\"{print $2}' """/$
                echo "${ver_script}"
                POM_VERSION = sh(script: "${ver_script}", returnStdout: true)
                echo "${POM_VERSION}"
               } 
         
         if("${currentBuild.currentResult}"=="FAILED") {
         echo "last build success"
         println "+1 on gerrit"
         }else{
            println "-1 on gerrit"
     
         }   
     } 
   }
}
