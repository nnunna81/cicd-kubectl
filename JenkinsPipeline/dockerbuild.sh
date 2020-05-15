
imagename=$1
/usr/local/bin/docker build -t $imagename /opt/sample-website/

/usr/local/bin/docker tag $imagename nnunna/$imagename:$version
