
imagename=$1
docker build -t $imagename /opt/sample-website/

docker tag $imagename avinashkolla/$imagename:$version
