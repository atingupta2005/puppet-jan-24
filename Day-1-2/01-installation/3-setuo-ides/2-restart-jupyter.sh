sudo pkill jupyter
source /pyenv/bin/activate
cd /etc/puppetlabs/code
nohup jupyter notebook --ip 0.0.0.0 --port 8888  --allow-root  --NotebookApp.token='' --NotebookApp.password='' &
