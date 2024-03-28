pipeline {
    agent {
        docker { image 'gcc:13.2.0' }
    }
    stages {
        stage('Build') {
            
        }
        stage('Deploy') {
            when {
                expression {
                    currentBuild.result == null || currentBuild.result == 'SUCCESS'
                }
            }
            steps {

            }
        }
    }
}