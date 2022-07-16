pipeline {
   agent {
        label 'master'
    } 
    
stages {
        stage('Welcome Step') {
            steps { 
               script{
                def var1 = load "grafana_annotations.groovy"
                  var1.annotateEventToGrafana(deploy)
                 
               }
            }
        }
    }
}
