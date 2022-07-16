pipeline {
   agent {
        label 'master'
    } 
    
stages {
        stage('Welcome Step') {
            steps { 
               script{
                annotateEventToGrafana("deploy")
                 
               }
            }
        }
    }
}
