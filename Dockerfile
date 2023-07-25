FROM nginx:alpine
COPY . /usr/share/nginx/html
COPY ./css /usr/share/nginx/html/css
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
