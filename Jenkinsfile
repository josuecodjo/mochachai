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
                def USER_INPUT = input(
                        message: 'Please choose environment',
                        parameters: [
                                [$class: 'ChoiceParameterDefinition',
                                choices: ['QA','Prod'].join('\n'),
                                name: 'env',
                                description: 'Menu - select box option']
                        ])

                echo "The Choice is: ${USER_INPUT}"

                if( "${USER_INPUT}" == "QA"){
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
