mkdir /tmp/webmap

docker build -t webmap-arm . 

docker run -d -p 4040:8000 --name webmap webmap-arm -v /tmp/webmap:/opt/xml

docker exec -ti webmap /root/token

