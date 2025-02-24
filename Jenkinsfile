pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "yourusername/new-year-resolution-project"
        DOCKER_CREDENTIALS_ID = "dockerhub-credentials"
        AWS_CREDENTIALS_ID = "aws-credentials"
        SONARQUBE_URL = "http://your-sonarqube-server"
        SONARQUBE_CREDENTIALS_ID = "sonarqube-credentials"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/yourusername/New-Year-resolution-project.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    sh 'pip install -r requirements.txt'
                }
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'sonar-scanner -Dsonar.projectKey=New-Year-Resolution-Project -Dsonar.sources=. -Dsonar.host.url=$SONARQUBE_URL -Dsonar.login=$SONARQUBE_CREDENTIALS_ID'
                }
            }
        }

        stage('OWASP Dependency Check') {
            steps {
                sh 'dependency-check --project New-Year-Resolution-Project --scan .'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Trivy Scan') {
            steps {
                sh 'trivy image $DOCKER_IMAGE'
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('', DOCKER_CREDENTIALS_ID) {
                        docker.image(DOCKER_IMAGE).push()
                    }
                }
            }
        }

        stage('Deploy to AWS') {
            steps {
                script {
                    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: AWS_CREDENTIALS_ID]]) {
                        sh '''
                        aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com
                        docker tag $DOCKER_IMAGE:latest <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/$DOCKER_IMAGE:latest
                        docker push <aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/$DOCKER_IMAGE:latest
                        aws ecs update-service --cluster your-cluster-name --service your-service-name --force-new-deployment
                        '''
                    }
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}