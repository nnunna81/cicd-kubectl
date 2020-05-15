
imagename=$1
/usr/local/bin/docker build -t $imagename /Users/nnunna/cicd-kubectl/

/usr/local/bin/docker tag $imagename nnunna/$imagename:$version
