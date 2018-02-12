node {
    stage('Clone sources') {
        checkout scm
    }
    stage('Build container image') {
        sh 'docker build -t appliedblockchain/parity-solo .'
    }
    stage('Push container image') {
        withDockerRegistry([credentialsId: 'docker-hub-abbuilder']) {
            sh 'docker push appliedblockchain/parity-solo'
        }
    }
}
