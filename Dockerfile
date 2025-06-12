FROM python:3.11-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia las dependencias e instálalas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código
COPY . .

# Configura la variable de entorno que Cloud Run usa
ENV PORT=8080

# Comando que ejecuta tu app directamente
CMD ["python", "playground.py"]
