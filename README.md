# open-webui-auto-update
bash script to auto update open-webui in docker deployment 

Note that it will use the host network directly not the docker network to minimize the operation overhead. Make sure to secure that environment

to run the script:
git clone https://github.com/ibinasaker/open-webui-auto-update.git
cd open-webui-auto-update/
sh update_openwebui.sh
