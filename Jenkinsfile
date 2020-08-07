pipeline {
    agent any


    stages {
        stage('Build') {
            steps {
                echo "Building ${env.BUILD_ID} on ${env.JENKINS_URL} and job name ${env.JOB_NAME} ${params.Greeting} node name ${env.NODE_NAME}"
            }

        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
//                 sh 'make check'
                echo 'deploying..'

            }
        }
    }

        post {
        always {
            echo 'always here..'
        }
        failure {
            echo 'failure here..'
        }
         success {
            echo 'success here..'
        }
    }



}