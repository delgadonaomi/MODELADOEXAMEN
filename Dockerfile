# Usa una imagen base de Python
FROM python:3.10-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto que Cloud Run usará
EXPOSE 8080

# Comando para arrancar la app
CMD ["uvicorn", "playground:app", "--host", "0.0.0.0", "--port", "8080"]
