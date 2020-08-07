pipeline {
    agent any

//      parameters {
//         string(name: 'Greeting', defaultValue: 'Hello', description: 'How should I greet the world?')
//     }
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
                echo 'Deploying....'

            }
        }
    }
}