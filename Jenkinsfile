pipeline{
  
  agent any
  stages {
  stage('Building Artifact'){
    steps {
      sh "mvn clean package -DskipTests=true"
      archiveArtifacts artifacts : 'target/*.war' //so that they can be downloaded later
          } 
  
      }
  }
}
