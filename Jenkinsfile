pipeline {
	agent any
	tools {
		maven 'maven_3.0.5'
	}
	stages {
		stage ('Compile Stage'){
			steps {
				echo 'compile...'
				sh 'mvn clean compile'
			}
		}

		stage ('Testing Stage') {
			steps {
				echo 'testing...'
				sh 'mvn test'
			}
		}
		
                stage ('Deployment Stage') {
			steps {
				echo 'deploying...'
				sh 'mvn deploy'
				echo 'succes!'
			}
		}
	}
}
