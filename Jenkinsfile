pipeline {
    agent any
      triggers {
    bitbucketPush()
  }
    stages {
        stage('Stage 1') {
            steps {
                echo 'hello thi is updated trigger'
            }
        }
    }
}
