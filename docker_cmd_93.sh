#docker_cmd_93.sh
img="pytorch/pytorch:1.9.1-cuda11.1-cudnn8-devel"
#img="padim:0.1"


docker run --gpus all  --privileged=true   --workdir /git --name "mt_ser"  -e DISPLAY --ipc=host -d --rm  -p 6616:4452  \
-v /raid/git/interspeech21_emotion:/git/interspeech21_emotion \
-v /raid/git/datasets:/git/datasets $img sleep infinity

docker exec -it mt_ser /bin/bash

docker images  |grep "pytorch" |grep "20."

#docker stop mt_ser