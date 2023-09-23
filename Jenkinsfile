pipeline{
agent any
stages{
stage('Source'){
steps{
git branch:'main',url:'https://github.com/Raju7860/estore_Admin_Dashboard.git'
}
}
stage('Compile'){
steps{
bat "npm install"
}
}
stage('Test'){
steps{
bat "npm run ng test "
}
}
stage('Build'){
steps{
bat "npm run ng build"
}
}
}
}
