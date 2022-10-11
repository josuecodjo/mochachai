pipeline {
  agent any
  parameters {
      choice(name: 'CHOICE', choices: ['QA', 'PROD'], description: 'Choose your environment')
  }
  stages {
    stage('msg1') {
      parallel {
        stage('msg1') {
          steps {
            sh 'echo "Launchin the script....."'
          }
        }

        stage('msg2') {
          steps {
            sh 'echo "A script is ongoing"'
          }
        }

      }
    }

    stage('Dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('test') {
      steps {
        sh 'npm test'
      }
    }

    stage('Closing') {
      steps {
        sh 'echo "ending the script"'
      }
    }

  }
}
