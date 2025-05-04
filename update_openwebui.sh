# bash/bin

#crm="$(sudo docker image ls | grep open-webui | grep none | awk '{sub(/\r$/,"")} NF && !/^#/{print $3}')"

#sudo docker image rm -f $crm

sudo docker pull ghcr.io/open-webui/open-webui:main
pid1=$!

wait $pid1

cid="$(sudo docker container ls | grep ghcr.io/open-webui | awk '{sub(/\r$/,"")} NF && !/^#/{print $1}')"

sudo docker rm -f $cid

sudo docker run -d --network host -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
