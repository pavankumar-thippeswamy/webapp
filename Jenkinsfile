pipeline {
	agent any

	stages {
		stage ('build') {
			steps {
				sh '''  pwd
					if [[ -d './webapp' ]]; then 
						cd './webapp' && git pull 
					else 
						git clone https://github.com/pavankumar-thippeswamy/webapp.git && cd ./webapp
					fi
					mvn clean install'''
			      }
		       }
	       }
         }
