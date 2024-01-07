cd ~
sudo apt install -y python3-pip
sudo apt install -y python3.8-venv
sudo rm -rf /pyenv
sudo mkdir -p /pyenv
sudo chmod -R 777 /pyenv
python3.8 -m venv /pyenv
source /pyenv/bin/activate
pip install jupyter
