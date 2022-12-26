pipeline{
  agent any
  stages{
    stage(BDD){
      steps{
        echo "BDD testing"
        sh "chmod +x ./sscript.sh"
        sh "./sscript.sh"
      }
    }
  }
}
