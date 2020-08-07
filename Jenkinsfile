pipeline {
    agent any
      triggers {
    bitbucketPush()
  }
    stages {
        stage('Stage 1') {
            steps {
                echo 'Hello mr hillary!'
            }
        }
    }
}
