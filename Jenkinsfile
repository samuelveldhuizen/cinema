pipeline {
	agent any
	tools {
		maven 'maven_3.6.1'
	}
	stages {
		stage ('Compile Stage'){
			steps {
				echo 'compile...'
				sh 'cd /var/lib/jenkins/workspace/cinema/'
				sh 'ansible-playbook -i hosts move_tc.yml --user=jenkins --extra-vars "ansible_become_pass=password"'
				sh 'ls -la'
				}
		}

		stage ('Testing Stage') {
			steps {
				echo 'testing...'				
				sh 'mvn clean verify'
				sh 'ansible-playbook -i hosts move_ac.yml --user=jenkins --extra-vars "ansible_become_pass=password"'
				sh 'sh /var/lib/jenkins/workspace/cinema/jmeter/bin/jmeter.sh -Jjmeter.save.saveservice.output_format=xml -n -t /var/lib/jenkins/workspace/cinema/jmeter/bin/Cinema.jmx -l ./testResults/TestResult1.jtl'
			}	
		}
                stage ('Deployment Stage') {
			steps {
				echo 'deploying...'
				sh 'ansible-playbook -i hosts move_pc.yml --user=jenkins --extra-vars "ansible_become_pass=password"'
				sh 'mvn clean'
				echo 'succes!'
			}
		}
	}
}
