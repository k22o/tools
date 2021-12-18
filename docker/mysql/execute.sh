src=`pwd`
dst="/var/lib/mysql"

docker container run \
    --name test \
    -e MYSQL_ROOT_PASSWORD=password \
    -e MYSQL_DATABASE=sample_db \
    -d -p 3307:3306 mysql:5.7