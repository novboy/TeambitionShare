 
FROM nginx:latest

COPY . /app
COPY ./site.conf /etc/nginx/conf.d/default.conf