cd /etc/puppetlabs/code
source /pyenv/bin/activate
nohup jupyter notebook --ip 0.0.0.0 --port 8888  --allow-root  --NotebookApp.token='' --NotebookApp.password='' &
curl localhost:8888

