FROM python:3.9-slim
WORKDIR /app
COPY . .
# Cloud Run passes the port in the PORT environment variable
CMD python3 -m http.server ${PORT:-8080}
