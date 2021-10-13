node('master') {
	    
	    def mvnHome = tool 'teraform_l_latest'
	    
	    stage('Clone Repo') { // for display purposes
	      // Get some code from a GitHub repository
	      git 'https://github.com/codeboyatwork/teraform.git'	             
	      mvnHome = tool 'teraform_l_latest'
	    } 
	    stage('Compile') {
	      // build project via maven
	      sh "'${mvnHome}/terraform' init"
	    }
	stage('Timepass1') {
	      // build project via maven
	      sh "'${mvnHome}/terraform' apply -auto-approve"
	    } 
	   
	stage('Timepass2') {
	      // build project via maven
	      sh "'${mvnHome}/terraform' destroy -auto-approve"
	    } 
}
