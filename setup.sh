#!/bin/bash

# Descargar e instalar Go
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
sudo tar -xvf go1.22.0.linux-amd64.tar.gz -C /usr/local

# Agregar Go al PATH
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile

# Crear directorio nimble, clonar el repositorio wallet-public y compilarlo
mkdir $HOME/nimble && cd $HOME/nimble
git clone https://github.com/nimble-technology/wallet-public.git
cd wallet-public
make install

# Actualizar e instalar python3-venv
sudo apt update
sudo apt install python3-venv

# Clonar el repositorio nimble-miner-public, compilarlo e iniciar el miner
cd $HOME/nimble
git clone https://github.com/nimble-technology/nimble-miner-public.git
cd nimble-miner-public
make install
source ./nimenv_localminers/bin/activate
make run addr=nimble1yz83fg8m7twkmdxndudl5r693l4hezzedsqw7v
