#!/bin/bash
echo "CRIAÇÃO DE INFRAESTRUTURA DE USUÁRIOS!!!!!!!"

echo "CRIANDO DIRETORIOS!!!!!!"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "DIRETORIOS CRIADOS!!!!"

echo "CRIANDO GRUPOS!!!!"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "GRUPOS CRIADOS!!!!!"

echo "CRIANDO USERS E ALOCADOS AOS GRUPOS!!!!"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd senha123) 
passwd carlos -e
usermod -G GRP_ADM carlos

useradd maria  -c "Maria" -s /bin/bash -m -p $(openssl passwd senha123)
passwd maria -e
usermod -G GRP_ADM maria

useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd senha123)
passwd joao -e
usermod -G GRP_ADM joao

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd senha123)
passwd debora -e
usermod -G GRP_VEN debora

useradd sebastiana -c "sebastiana" -s /bin/bash -m -p $(openssl passwd senha123)
passwd sebastiana -e
usermod -G GRP_VEN sebastiana

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd senha123)
passwd roberto -e
usermod -G GRP_VEN roberto

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd senha123)
passwd josefina -e
usermod -G GRP_SEC josefina

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd senha123)
passwd amanda -e
usermod -G GRP_SEC amanda

useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd senha123)
passwd rogerio -e
usermod -G GRP_SEC rogerio

echo "USERS CRIADOS!!!!!"

echo "CRIANDO PERMISSÕES!!!!"

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "PERMISSÕES CRIADAS!!!!"

echo "INFRAESTRUTURA DE USUÁRIOS FINALIZADA COM SUCESSO!!!!!"
