#!/bin/bash

# Clonar el repositorio
git clone https://github.com/upowai/upow.git
cd upow

# Instalar Python 3.8.9 utilizando makefile
make -f makefile.python3.8.9 install_python3.8.9

# Construir la base de datos PostgreSQL
make -f makefile.postgres all

# Ejecutar el script de configuración de la base de datos
chmod +x db_setup.sh
./db_setup.sh

# Instalar los requisitos del proyecto
pip install -r requirements.txt

# Iniciar el servidor uvicorn
uvicorn upow.node.main:app --port 3006 &

# Ejecutar el script de minería de python
python3 miner.py DoLFnS7f2ZzLtjPjmXdYs9yTkj9sFRcjfJA2YbC2m1oZB
