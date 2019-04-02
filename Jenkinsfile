pipeline {
	agent any
	tools {
		maven 'maven_3.0.5'
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
