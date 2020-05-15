pipeline {
	agent any 
	stage('Git pull'){
	sh "echo 'Git pulled/cloned'"
	sh "/opt/sample-website/JenkinsPipeline/gitpull.sh"

}

stage('Docker build'){

	if(BUILD_TYPE == "BUILD"){
		sh "echo 'docker build'"
		sh "/opt/sample-website/JenkinsPipeline/dockerbuild.sh $IMAGE_NAME $VERSION"
	}

}

stage('Docker push'){
	if(BUILD_TYPE == "BUILD"){
        	sh "echo 'docker push'"
		sh "/opt/sample-website/JenkinsPipeline/dockerpush.sh $IMAGE_NAME $VERSION"
	}
}

stage('Docker run'){

	if(BUILD_TYPE == "RUN"){
		sh "echo 'docker pull'"
		sh "/opt/sample-website/JenkinsPipeline/dockerpull.sh $IMAGE_NAME $VERSION"
	}

        sh "echo 'docker run'"
	sh "/opt/sample-website/JenkinsPipeline/dockerrun.sh $IMAGE_NAME $VERSION"

}
		
}