pipeline {
	agent any
	environment {
		PATH=/usr/share/man/man1/bin:$PATH
	stages {
		stage("git"){
			steps{
				git credentialsID: 'pavankumar-thippeswamy', url: 'https://github.com/pavankumar-thippeswamy/webapp.git'
			}
		}
		stage("build"){
			steps{
				sh "mvn clean install"
			}
