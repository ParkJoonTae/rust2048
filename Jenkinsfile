pipeline {
    agent { label "Jenkins-Agent" }
    tools{
  	    jdk "Java17"
  	    maven "Maven3"
    }
  
    stages{
        stage("Cleanup Workspace"){
            steps{
                cleanWs()
            }
        }
    }

    stage("Checkout from SCM") {
        steps { # 'github'는 전 단계에서 Jenkins Credentials에 정의 
            git branch: 'main', credentialsId: 'github', url: 'https://github.com/ParkJoonTae/rust2048.git'
        }
    }
    
    stage("Build App"){
		    steps{
		        sh "cd /home/jeff2152024/wasm-2048"
		        sh "sudo docker build -t wasm-2048 ."
		        sh "sudo docker run -d --name 2048 -p 8090:80 wasm-2048"
		    }
    }
}