pipeline {

    agent { 
        dockerfile {
            filename 'Dockerfile'
            args '--network=jenkins_cicd_network'
        }
    }

    stages {
        stage('Build&Deploy') {
            environment {
                NEXUS_CREDENTIALS = credentials('jenkins')
                VER = '1.1'
            }
            steps {
                sh 'export nexus_credentials=$NEXUS_CREDENTIALS && export ver=$VER && make build && make VER="${ver}" NEXUS_CREDS="${nexus_credentials}" publish'
            }
        }
    }
}