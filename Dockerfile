from ubuntu
label maintainer naveen.chandra@oracle.com
arg image_variable="local"
env ora_port=1521
env ora_host="localhost"
run mkdir /code
copy Sample.sh /code/Sample.sh
run chmod +x /code/Sample.sh
run echo "Building an image"
workdir /code
run echo $image_variable
cmd sh /code/Sample.sh
