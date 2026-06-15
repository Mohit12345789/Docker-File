pipeline {
    agent {
        label 'mohit'
    }

    stages {
        stage('Code') {
            steps {
                echo 'Code is pulling from git hub'
                git url: "https://github.com/Mohit12345789/Docker-File.git" , branch: "main"
                echo 'Code Cloning Successfully'
            }
        }
        stage('Build') {
            steps {
                echo 'Code is Building the code'
                sh "docker build -t website:latest ."
                echo 'Code Building is successfully'
            }
        }
        stage('Push on Docker hub') {
            steps {
                echo 'image is pushing on Docker hub'
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                sh 'docker login -u $DOCKER_USER -p $DOCKER_PASS'
                sh 'docker image tag website:latest $DOCKER_USER/website:latest'
                sh 'docker push $DOCKER_USER/website:latest'
                echo "Image is successfully pushed to docekr hub"
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Code is Deploying the code'
                sh "docker compose up -d"
            }
        }
    }
}
