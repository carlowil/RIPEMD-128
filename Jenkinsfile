pipeline {

    agent {
        docker { image 'gcc:13.2.0' }
    }

    environment {
        NEXUS_CREDENTIALS = credentials('jenkins')
        VER = '1.0'
    }

    stages {
        stage('Build') {
            make build        
        }
        stage('Deploy') {
            when {
                expression {
                    currentBuild.result == null || currentBuild.result == 'SUCCESS'
                }
            }
            steps {
                export nexus_credentials=$NEXUS_CREDENTIALS
                export ver=$VER

                make publish
            }
        }
    }
}