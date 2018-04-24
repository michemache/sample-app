pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        withMaven(jdk: '1.8', maven: '3.5.2') {
          sh 'mvn package'
        }
      }
    }
    stage('packer') {
      environment {
        PACKER_HOME = tool name: 'packer-1.1.3', type: 'biz.neustar.jenkins.plugins.packer.PackerInstallation'
        PACKER_SUBSCRIPTION_ID="fcc1ad01-b8a5-471c-812d-4a42ff3d6074"
        PACKER_CLIENT_ID="7d68a4b4-e3f1-4bf7-80ee-50a821728ce5"
        PACKER_CLIENT_SECRET=credentials('6cc34f5a-a9be-4d58-8c47-4d3efcca04c6')
        PACKER_LOCATION="westeurope"
        PACKER_TENANT_ID="787717a7-1bf4-4466-8e52-8ef7780c6c42"
        PACKER_OBJECT_ID="56e89fa0-e748-49f4-9ff0-0d8b9e3d4057"
        PACKER_WORKSPACE = pwd()
      }
      steps {
        sh 'pwd'
        sh '${PACKER_HOME}/packer validate Packer/ubunut-azure-vm.json'
        sh '${PACKER_HOME}/packer build Packer/ubunut-azure-vm.json'
      }
    }
  }
}
