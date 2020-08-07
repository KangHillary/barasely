// pipeline {
// node {
//     // It's often recommended to run a django project from a virtual environment.
//     // This way you can manage all of your depedencies without affecting the rest of your system.
//     def installed = fileExists 'bin/activate'
//
//     if (!installed) {
//         stage("Install Python Virtual Enviroment") {
//             sh 'virtualenv --no-site-packages .'
//         }
//     }
//
//     // The stage below is attempting to get the latest version of our application code.
//     // Since this is a multi-branch project the 'checkout scm' command is used. If you're working with a standard
//     // pipeline project then you can replace this with the regular 'git url:' pipeline command.
//     // The 'checkout scm' command will automatically pull down the code from the appropriate branch that triggered this build.
//     stage ("Get Latest Code") {
// //         checkout scm
//     }
//
//     // If you're using pip for your dependency management, you should create a requirements file to store a list of all depedencies.
//     // In this stage, you should first activate the virtual environment and then run through a pip install of the requirements file.
//     stage ("Install Application Dependencies") {
//         sh '''
//             source bin/activate
//             pip install -r  requirements.txt
//             deactivate
//            '''
//     }
//
//     // Typically, django recommends that all the static assets such as images and css are to be collected to a single folder and
//     // served separately outside the django application via apache or a CDN. This command will gather up all the static assets and
//     // ready them for deployment.
//     stage ("Collect Static files") {
//         sh '''
//             source bin/activate
//             python manage.py test
//             deactivate
//            '''
//     }
//
//     // After all of the dependencies are installed, you can start to run your tests.
//     // The code below assumes that you're using the django-jenkins python libary to run the test but you can
//     // also use the built in django test runner, nose or tox
//     stage ("Run Unit/Integration Tests") {
//         def testsError = null
//         try {
//             sh '''
//                 source ../bin/activate
//
//                 deactivate
//                '''
//         }
//         catch(err) {
//             testsError = err
//             currentBuild.result = 'FAILURE'
//         }
//         finally {
// //             junit 'reports/junit.xml'
// //
// //             if (testsError) {
// //                 throw testsError
//             echo "finaly here.."
//             }
//         }
//     }
// }
// }











pipeline {
    agent any
      options {
        disableConcurrentBuilds()
        timestamps()
      }

    environment {
        PATH = "$PATH:/usr/local/bin"
    }
    stages {
        stage('Build') {
            steps {
            sh "docker-compose --project-name credit_bank up -d"
            }

        }
        stage('Test') {
            steps {
               echo 'Testing..'
//                 sh "start.sh"
//                  sh '''
//                         source bin/activate
//                         pip install -r requirements.txt
//                         deactivate
//                        '''
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
                  script {
        try {
          sh 'docker-compose --project-name credit_bank down -v'
          sh 'docker system prune --volumes -f'
        }
        catch (exc) {
          echo 'A prune operation is already running'
        }
      }
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