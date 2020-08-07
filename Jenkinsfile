pipeline {
    agent any

    stages {
        stage('Build') {
            steps {

                echo "Building ${env.BUILD_ID} on ${env.JENKINS_URL} and job name ${env.JOB_NAME} node name {env.NODE_NAME}"


            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'



            }
        }
    }
}