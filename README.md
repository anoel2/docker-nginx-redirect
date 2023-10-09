# docker-nginx-redirect

docker build -t nginxredirect .
docker run --name nginxredirect -p 80:80 -p 443:443 nginxredirect
