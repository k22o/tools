src=`pwd`
dst=/usr/share/nginx/html 
port=8081

docker container run --mount type=bind,src=${src},dst=${dst} -p ${port}:80 -d nginx