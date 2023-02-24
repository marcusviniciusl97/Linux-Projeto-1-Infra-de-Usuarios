#!/bin/bash

echo "Criando Usuarios"

useradd user10 -c "Jean" -s /bin/bash -m -p $(openssl passwd senha123)
passwd user10 -e

useradd user11 -c "Carol" -s /bin/bash -m -p $(openssl passwd senha123)
passwd user11 -e

useradd user12 -c "Ricardo" -s /bin/bash -m -p $(openssl passwd senha123)
passwd user12 -e

useradd user13 -c "Jaqueline" -s /bin/bash -m -p $(openssl passwd senha123)
passwd user13 -e

useradd user14 -c "Rodrigo" -s /bin/bash -m -p $(openssl passwd senha123)
passwd user14 -e

echo "Usuarios Criados!!!"
