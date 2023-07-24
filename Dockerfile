# Imagen base de Ubuntu 22.04
FROM ubuntu:22.04

# Actualizar paquetes e instalar curl y nginx
RUN apt-get update && \
    apt-get install -y curl nginx

# Crear directorio para la página web
RUN mkdir -p /var/www/html

# Copiar index.html
COPY index.html /var/www/html

# Exponer puerto 80 
EXPOSE 80

# Ejecutar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
