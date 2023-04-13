#! /bin/bash

echo "Criando diretórios..."
mkdir /publico
echo "Diretório público criado!"
mkdir /adm
echo "Diretório adm criado!"
mkdir /ven
echo "Diretório ven criado!"
mkdir /sec
echo "Diretório sec criado!"

echo "Criando grupos..."
groupadd GRP_ADM
echo "Grupo adm criado!"
groupadd GRP_VEN
echo "Grupo ven criado!"
groupadd GRP_SEC
echo "Grupo sec criado!"

echo "Criando usuários do grupo adm..."
useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
passwd carlos -e
useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
passwd maria -e
useradd joao -c "João da Silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
passwd joao -e
echo "ATENÇÃO!!! TODOS OS USUÁRIOS RECEBERAM A SENHA 1234, NO PRIMEIRO LOGIN VAI PEDIR PARA CRIAR UMA NOVA SENHA!"

echo "Criando usuários do grupo ven..."
useradd debora -c "Debora da Silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_VEN
passwd roberto -e
echo "ATENÇÃO!!! TODOS OS USUÁRIOS RECEBERAM A SENHA 1234, NO PRIMEIRO LOGIN VAI PEDIR PARA CRIAR UMA NOVA SENHA!"

echo "Criando usuários do grupo sec..."
useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Rogério da Silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_SEC
passwd rogerio -e
echo "ATENÇÃO!!! TODOS OS USUÁRIOS RECEBERAM A SENHA 1234, NO PRIMEIRO LOGIN VAI PEDIR PARA CRIAR UMA NOVA SENHA!"

echo "Configurando permissões do usuários..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod -v 777 /publico
chmod -v 770 /adm
chmod -v 770 /ven
chmod -v 770 /sec
echo "Permissões configurada para cada grupo!"
echo "FINALIZADO!!!"
