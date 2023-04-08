FROM continuumio/miniconda3
RUN /opt/conda/bin/conda install jupyter -y --quiet && \
    mkdir -p /opt/notebooks

# Instalación de paquetes extra de python
COPY extra /home/extra
WORKDIR /home/extra
RUN  /opt/conda/bin/pip install -r requirements.txt && \
    chmod +x start-notebook.sh

ENTRYPOINT ["/home/extra/start-notebook.sh"]

