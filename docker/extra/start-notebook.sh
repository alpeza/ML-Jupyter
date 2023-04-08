#!/bin/sh

# Verifica si CONNECT_COLAB es igual a 1
if [ "$CONNECT_COLAB" = "1" ]; then
    echo "Iniciando en modo COLAB"
    exec /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root --NotebookApp.allow_origin='https://colab.research.google.com' --NotebookApp.port_retries=0
else
    echo "Iniciando en modo LOCAL"
    exec /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root
fi