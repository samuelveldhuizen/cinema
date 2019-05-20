pipeline {
	agent any
	tools {
		maven 'maven_3.6.1'
	}
	stages {
		stage ('Compile Stage'){
			steps {
				echo 'compile...'
				sh "wget https://raw.githubusercontent.com/Blazemeter/taurus/master/examples/jmeter/stepping.yml"
				sh 'cd /var/lib/jenkins/workspace/cinema/'
				}
		}

		stage ('Testing Stage') {
			steps {
				echo 'testing...'				
				sh 'mvn clean verify'
				// sh 'sh /var/lib/jenkins/workspace/cinema/jmeter/bin/jmeter.sh -Jjmeter.save.saveservice.output_format=xml -n -t /var/lib/jenkins/workspace/cinema/jmeter/bin/Cinema.jmx -l ./testResults/TestResult1.jtl'
			}
		}
                stage ('Deployment Stage') {
			steps {
				echo 'deploying...'
				bzt "stepping.yml"
				sh 'mvn clean'
				echo 'succes!'
			}
		}
	}
}
