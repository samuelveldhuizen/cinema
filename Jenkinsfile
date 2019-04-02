pipeline {
	agent any

	stages {
		stage ('Compile Stage'){
			steps {
				echo 'compile...'
				withMaven(maven : 'maven_3_6_0') {
					sh 'mvn clean compile'
				}
			}
		}

		stage ('Testing Stage') {
			steps {
				echo 'testing...'
				withMaven(maven : 'maven_3_6_0') {
					sh 'mvn test'
				}
			}
		}
		
                stage ('Deploy Stage') {
			steps {
				echo 'deploying...'
				withMaven(){
					sh 'mvn clean'
				}
				echo 'succes!'
			}
		}
	}
}
