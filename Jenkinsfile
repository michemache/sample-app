pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        withMaven(jdk: '1.8', maven: '3.5.2') {
          sh 'mvn package; echo "Hallo"'
        }
      }
    }
  }
}
