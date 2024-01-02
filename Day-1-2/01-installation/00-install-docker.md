# Setup Docker (Optional)

## Update OS
```
sudo apt -y update
```

## Install some tools
```
sudo apt -y install openssl zip tree wget unzip
```

## Remove Docker
```
sudo rm -rf /usr/local/bin/docker-compose
sudo apt-get remove -y docker docker-ce-cli docker-ce docker-engine docker.io containerd runc
```

## Download Docker Installation Script
```
curl -fsSL get.docker.com -o get-docker.sh
```

## Install Docker
```
sh get-docker.sh
```

```
sudo usermod -aG docker $USER
```

```
sudo docker version
docker version
docker ps
```

