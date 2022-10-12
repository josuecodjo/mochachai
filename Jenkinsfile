pipeline {
  agent any
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

    stage('Deploy') {
        steps {
            script {
                def userInput = input(id: 'userInput', message: 'Choose your environment',
                parameters: [[$class: 'ChoiceParameterDefinition', defaultValue: 'strDef', 
                    description:'describing choices', name:'nameChoice', choices: "QA\nProduction"]
                ])
                if (userInput == 'QA') {
                    echo 'Deploying on the QA server'
                } else {
                    echo 'Deploying on the Prod server'
                }
            }
        }
    }

    stage('Closing') {
      steps {
        sh 'echo "ending the script"'
      }
    }

  }
}
