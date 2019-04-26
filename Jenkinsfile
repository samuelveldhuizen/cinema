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
				sh 'cd /var/lib/jenkins/workspace/jmeter'
				sh 'sh jmeter.sh -Jjmeter.save.saveservice.output_format=xml -n -t /home/sam/challenges/5_Jmeter/jmeter/bin/Cinema.jmx -l /home/sam/challenges/5_Jmeter/cinema/testResults/TestResult1.jtl'
			}
		}
		
                stage ('Deployment Stage') {
			steps {
				echo 'deploying...'
				sh 'cd /home/sam/challenges/5_Jmeter/cinema'
				sh 'mvn clean'
				echo 'succes!'
			}
		}
	}
}
