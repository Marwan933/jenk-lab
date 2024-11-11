pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Marwan933/jenk-lab'  // Replace with your repository URL
            }
        }
        stage('Run Hello World') {
            steps {
                script {
                    // Assuming the 'hello.sh' script is in the root of the repository
                    sh 'chmod +x test.sh'  // Make the script executable (if not already)
                    sh './test.sh'          // Run the Hello World script
                }
            }
        }
    }
    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}