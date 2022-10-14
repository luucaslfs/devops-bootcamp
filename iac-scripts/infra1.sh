#!/bin/bash

echo "Criando diretorios..."

mkdir /pub
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd jacare -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd patolino  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd marcia  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd jonatas -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd hulk -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd oswaldo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
