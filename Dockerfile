FROM nginx:alpine
COPY . /usr/share/nginx/html
# Exponer puerto 80 
EXPOSE 80

# Ejecutar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
