pipeline {
	agent any
	tools {
		maven 'Maven_3.6.0'
	}
	stages {
		stage ('Compile Stage'){
			steps {
				echo 'compile...'
				bat 'mvn clean compile'
			}
		}

		stage ('Testing Stage') {
			steps {
				echo 'testing...'
				bat 'mvn test'
			}
		}
		
                stage ('Deployment Stage') {
			steps {
				echo 'deploying...'
				bat 'mvn clean'
				echo 'succes!'
			}
		}
	}
}
