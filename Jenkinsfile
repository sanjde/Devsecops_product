pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {

         /*stage('Cloning our Git') { 

            steps { 
                git 'https://github.com/anujdevopslearn/MavenBuild.git'
            }

        } */




        stage ('Build & JUnit Test') {
            steps {
                sh 'mvn install' 
            }
            //post {
            //   success {
            //        junit 'target/surefire-reports/**/*.xml' 
             //   }
            //}
        }
        /*stage ('Build & SonarQube Scan') {
            steps {
              withSonarQubeEnv('sonarqube') {
                sh 'mvn -B -DskipTests clean package sonar:sonar'
              }
            } 
        }*/
         stage ('Docker Build') {
            steps {
                sh 'docker build -t java-example:v1 .'
            }
        }
        /*stage('Testing Trivy'){
           steps{
              sh 'docker run ghcr.io/aquasecurity/trivy:latest image java-example:v1'
           }
        }*/
        stage ('Terrascan Results') {
            steps {
                sh 'docker run --rm -it -v "$(pwd):/iac" -w /iac accurics/terrascan scan -i helm' //&& terrascan scan -i helm  > /home/sanjay/terrascan-scan-results/terrascan-scan-results-${BUILD_NUMBER}.txt'
            }
        }
        /*
        stage("Quality Gate") {
            steps {
              timeout(time: 2, unit: 'MINUTES') {
                waitForQualityGate abortPipeline: true
              }
            }
          }*/
    }
}
