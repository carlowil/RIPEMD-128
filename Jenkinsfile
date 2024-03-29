pipeline {

    agent { dockerfile true }

    environment {
        NEXUS_CREDENTIALS = credentials('jenkins')
        VER = '1.0'
    }

    stages {
        stage('Build&Deploy') {
            steps {
                export nexus_credentials=$NEXUS_CREDENTIALS
                export ver=$VER
                sh 'make build'
                sh 'make publish'
            }
        }
    }
}