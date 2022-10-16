docker volume create app

docker service create --name meu-app --replicas 15 -dt -p 80:80 --mount type=volume,src=app,dst=/usr/local/apache2/htdocs/ httpd
docker service ps

echo "Instalando NFS (Infra pra manter consistencia entre os diretorios)"

apt-get install nfs 
showmount -e 172.31.0.135
mount 172.31.0.135:/var/lib/docker/volumes/app/_data /var/lib/docker/volumes/app/_data