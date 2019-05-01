pipeline {
	agent any
	tools {
		maven 'maven_3.0.5'
	}
	stages {
		stage ('Compile Stage'){
			steps {
				echo 'compile...'
				sh 'mvn clean install'
				sh 'cd /var/lib/jenkins/workspace/cinema/'
			}
		}

		stage ('Testing Stage') {
			steps {
				echo 'testing...'
				sh 'mvn test'
				sh 'sh /var/lib/jenkins/workspace/cinema/jmeter/bin/jmeter.sh -Jjmeter.save.saveservice.output_format=xml -n -t /var/lib/jenkins/workspace/cinema/jmeter/bin/Cinema.jmx -l ./testResults/TestResult1.jtl'
				sh 'git add ./testResults/TestResult1.jtl'
				sh 'git commit -m "test result"'
				}
		}
		
                stage ('Deployment Stage') {
			steps {
				echo 'deploying...'
				sh 'git push'
				sh 'mvn clean'
				echo 'succes!'
			}
		}
	}
}
