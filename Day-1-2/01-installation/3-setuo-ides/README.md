## Setup PDK
```
wget https://apt.puppet.com/puppet-tools-release-focal.deb
sudo dpkg -i puppet-tools-release-focal.deb
sudo apt-get update
sudo apt-get install pdk
```


## Setup Jupyter 
```
cd ~
rm 1-install-jupyter*.sh*
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-1-2/01-installation/3-setuo-ides/1-install-jupyter-1.sh
sudo chmod a+x *.sh
. ./1-install-jupyter-1.sh
sudo su
rm 1-install-jupyter*.sh*
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-1-2/01-installation/3-setuo-ides/1-install-jupyter-2.sh
sudo chmod a+x *.sh
. ./1-install-jupyter-2.sh
exit
curl localhost:8888
```



## Restart Jupyter
```
sudo su
cd ~
rm 2-restart-jupyter.sh*
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-1-2/01-installation/3-setuo-ides/2-restart-jupyter.sh
sudo chmod a+x *.sh
. ./2-restart-jupyter.sh
sleep 5
curl localhost:8888
```


## Setup R Studio
```
cd ~
rm 3-install-rstudio.sh*
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-1-2/01-installation/3-setuo-ides/3-install-rstudio.sh
sudo chmod a+x *.sh
. ./3-install-rstudio.sh
curl localhost:8787
```


## Restart R Studio
```
cd ~
rm 4-restart-rstudio.sh*
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-1-2/01-installation/3-setuo-ides/4-restart-rstudio.sh
. ./4-restart-rstudio.sh
curl localhost:8787
```

