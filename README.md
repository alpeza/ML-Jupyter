# ML-Jupyter

Imagen basada en un notebook Jupyter pensada como entorno de trabajo de ML.

La imagen incorpora la instalación de las siguientes [librerias python](docker/extra/requirements.txt)

## Despliegue 

```bash
docker-compose up -d
```

## Conectar con Google COLAB

- 1.- Se ha de setear la variable `CONNECT_COLAB=1` 

```yaml
...
    environment:
      - CONNECT_COLAB=1
...
```