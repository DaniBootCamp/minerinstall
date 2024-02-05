# Descargar ntalgo-qubic-cuda
wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v0.2.5-cuda/ntalgo-qubic-cuda

# Descargar rqiner-cuda-runner
wget https://github.com/Qubic-Solutions/rqiner-builds/releases/download/v0.2.5-cuda/rqiner-cuda-runner

# Dar permisos de ejecución a los archivos descargados
chmod +x ntalgo-qubic-cuda
chmod +x rqiner-cuda-runner

# Ejecutar rqiner-cuda-runner con el comando y la etiqueta proporcionados
./rqiner-cuda-runner -i PGZEDBHAAFQYQCIUKEUMMVAWUXIDPURDHFVZQQNJICMXJPETXKQMOWUESBUM --label WORKER

