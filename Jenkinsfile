pipeline {
    agent { label 'eureka' }
  
  stages {


    stage('Build') {
	steps {

	        sh 'mvn package'
		sh 'docker build -t="pride-eureka" .'
		echo "Build successful"
	           }
	 }



	stage ('Test') {
	   steps {
		   echo "Test has passed"
		
	          }
			}
          
		stage('Deploy') {
            steps {
		                sh 'docker container kill eureka'
		                sh 'docker container rm eureka'
                                sh 'docker run -d -p 8761:8761 --name eureka pride-eureka'
				echo "Deployment has been deployed"
            }
        }


		}
	   }   
