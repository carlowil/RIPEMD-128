pipeline {

    agent { dockerfile true }

    stages {
        stage('Build&Deploy') {
            environment {
                NEXUS_CREDENTIALS = credentials('jenkins')
                VER = '1.1'
            }
            steps {
                sh('export nexus_credentials=$NEXUS_CREDENTIALS')
                sh('export ver=$VER')
                sh('make build')
                sh('make VER="$(ver)" NEXUS_CREDS="$(nexus_credentials)" publish')
            }
        }
    }
}