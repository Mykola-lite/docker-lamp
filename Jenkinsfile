pipeline { 
    agent any 
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') { 
            steps { 
                sh 'pwd'
                sh 'ls -la'
                sh 'whoami' 
            }
        }
        stage('Test'){
            steps {
                sh "rsync -azLvv --progress -e 'ssh -p2222' ./* deploy@ub1:/var/www/docker-lamp"
            }
        }
        stage('Deploy') {
            steps {
                sh 'ssh deploy@ub1 -p 2222 docker-compose -f /var/www/docker-lamp/docker-compose.yml up -d'
            }
        }
    }
}
