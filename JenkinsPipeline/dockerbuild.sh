
imagename=$1
docker build -t $imagename /opt/sample-website/

docker tag $imagename nnunna/$imagename:$version
