FROM nginx:alpine

# El contenido estático se monta desde ./public en docker-compose.yml
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3000
