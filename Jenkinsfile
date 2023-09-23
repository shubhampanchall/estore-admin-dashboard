pipeline{
agent any
stages{
stage('Source'){
steps{
git branch:'master',url:'https://github.com/shubhampanchall/estore-admin-dashboard.git/'
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
