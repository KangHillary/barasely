pipeline {
    agent any
      options {
        disableConcurrentBuilds()
        timestamps()
      }

    stages {
        stage('Build') {
            steps {
//                 echo "Building ${env.BUILD_ID} on ${env.JENKINS_URL} and job name ${env.JOB_NAME} ${params.Greeting} node name ${env.NODE_NAME}"
                    sh "docker-compose --project-name credit_bank up -d"

            }

        }
        stage('Test') {
            steps {
//                echo 'Testing..' ech
                sh "./start.sh"
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



// pipeline {
//     agent any
//
//
//
//
//     parameters {
//         string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
//
//         text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
//
//         booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
//
//         choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
//
//         password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
//     }
//     stages {
//         stage('Example') {
//             steps {
//                 echo "Hello ${params.PERSON}"
//
//                 echo "Biography: ${params.BIOGRAPHY}"
//
//                 echo "Toggle: ${params.TOGGLE}"
//
//                 echo "Choice: ${params.CHOICE}"
//
//                 echo "Password: ${params.PASSWORD}"
//             }
//         }
//     }
// }