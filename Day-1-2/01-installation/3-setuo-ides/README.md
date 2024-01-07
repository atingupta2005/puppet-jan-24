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
```



## Restart Jupyter
```
cd ~
rm 2-restart-jupyter.sh*
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-1-2/01-installation/3-setuo-ides/2-restart-jupyter.sh
sudo chmod a+x *.sh
. ./2-restart-jupyter.sh
```


## Setup R Studio
```
cd ~
rm 3-install-rstudio.sh*
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-1-2/01-installation/3-setuo-ides/3-install-rstudio.sh
sudo chmod a+x *.sh
. ./3-install-rstudio.sh
```


## Restart R Studio
```
cd ~
rm 4-restart-rstudio.sh*
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-1-2/01-installation/3-setuo-ides/4-restart-rstudio.sh
. ./4-restart-rstudio.sh
```