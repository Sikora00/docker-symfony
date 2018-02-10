reverse proxy tutorial https://cloud.google.com/community/tutorials/nginx-reverse-proxy-docker#setting-up-the-reverse-proxy

#Create network
``docker network create --driver bridge reverse-proxy``

#Run Container
``
docker run -d -p 80:80 -p 443:443 \
    --name nginx-proxy \
    --net reverse-proxy \
    -v /var/run/docker.sock:/tmp/docker.sock:ro \
    jwilder/nginx-proxy
    ``
    
    docker run -p 8080:80 -v "D:/Projects/Web/docker-symfony/symfony:var/www/html".ToLower() --name symfony sikora00/docker-symfony