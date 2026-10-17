pipeline {
    agent any

    environment {
        STUDENT_NAME    = 'Assanali'
        STUDENT_SURNAME = 'Akenzhan'
        STUDENT_GROUP   = 'IT2-2313'
        STUDENT_ID      = '38330'
        IMAGE_NAME      = 'akenzhan-assanali-devops'
        CONTAINER_NAME  = 'akenzhan-assanali-container'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -1 --oneline'
            }
        }

        stage('Build') {
            steps {
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
                sh 'chmod +x scripts/*.sh'
                sh './scripts/Akenzhan_Assanali_system.sh'
            }
        }

        stage('Test') {
            steps {
                sh './scripts/test.sh'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
                sh 'docker images $IMAGE_NAME'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker rm -f $CONTAINER_NAME || true'
                sh '''
                    docker run -d \
                      -e STUDENT_NAME=$STUDENT_NAME \
                      -e STUDENT_SURNAME=$STUDENT_SURNAME \
                      -e STUDENT_GROUP=$STUDENT_GROUP \
                      -e STUDENT_ID=$STUDENT_ID \
                      --name $CONTAINER_NAME \
                      $IMAGE_NAME
                '''
                sh 'sleep 3'
                sh 'docker ps --filter name=$CONTAINER_NAME'
                sh 'docker logs $CONTAINER_NAME'
            }
        }
    }

    post {
        success {
            echo 'Pipeline finished successfully'
        }
        failure {
            echo 'Pipeline failed'
        }
    }
}
