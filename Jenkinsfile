pipeline {
  agent any

  stages {

    stage('Build Artifact - Maven') {
      steps {
        sh "mvn clean package -DskipTests=true"
        archiveArtifacts artifacts : 'target/*.war' //so that they can be downloaded later
      }
    }

    

    stage('Docker Build and Push') {
      steps {
        docker.withRegistry("https://hub.docker.com","dockercreds"){
          sh 'printenv'
          sh 'docker build -t rohitpatil123/devsecopswebapp:""$GIT_COMMIT"" .'
          sh 'docker push rohitpatil123/devsecopswebapp:""$GIT_COMMIT""'
        }
      }
    }
  }
}