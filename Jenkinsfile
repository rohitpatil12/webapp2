pipeline{
  
  agent any
  stage('Building Artifact'){
    steps {
      sh "mvn clean package -DskipTests=true"
      archive 'target/*.jar' //so that they can be downloaded later
    }
  
  }
}
