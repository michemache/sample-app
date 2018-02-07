pipeline {
  agent any
  stages {
    stage('build') {
      parallel {
        stage('build') {
          steps {
            withMaven(jdk: '1.8', maven: '3.5.2') {
              sh '''#/bin/bash

mvn package'''
            }
            
          }
        }
        stage('') {
          steps {
            stash(name: 'stash-artifact', allowEmpty: true, includes: 'target/*.jar')
          }
        }
      }
    }
    stage('packer') {
      parallel {
        stage('packer') {
          steps {
            unstash 'unstash-artifact'
          }
        }
        stage('') {
          steps {
            tool 'packer'
          }
        }
      }
    }
  }
}