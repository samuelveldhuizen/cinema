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
				sh 'sh /var/lib/jenkins/workspace/cinema/jmeter/bin/jmeter.sh -Jjmeter.save.saveservice.output_format=xml -n -t /var/lib/jenkins/workspace/cinema/jmeter/bin/Cinema.jmx -l  /home/sam/challenges/5_Jmeter/cinema/testResults/Result1.jtl'
			}
		}
		
                stage ('Deployment Stage') {
			steps {
				echo 'deploying...'
				sh 'cd /var/lib/jenkins/workspace/cinema/'
				sh 'mvn clean'
				echo 'succes!'
			}
		}
	}
}
