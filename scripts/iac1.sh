#! /bin/bash

echo "Criando Diretórios..."

mkdir /publico && \
mkdir /adm && \
mkdir /ven && \
mkdir /sec && \

echo "Diretórios Criados com Sucesso!"

echo "Criando Grupos de Usuários..."

groupadd GRP_ADM && \
groupadd GRP_VEN && \
groupadd GRP_SEC && \

echo "Grupos de Usuários Criados com Sucesso!"

echo "Criando Usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM && \
echo "carlos: Senha@123' | chpasswd && \
passwd carlos -e && \
useradd maria -m -s /bin/bash -G GRP_ADM && \
echo "maria: Senha@123' | chpasswd && \
passwd maria -e && \
useradd joao -m -s /bin/bash -G GRP_ADM && \
echo "joao: Senha@123' | chpasswd && \
passwd joao -e && \

useradd debora -m -s /bin/bash -G GRP_VEN && \
echo "debora: Senha@123' | chpasswd && \
passwd debora -e && \
useradd sebastiana -m -s /bin/bash -G GRP_VEN && \
echo "sebastiana: Senha@123' | chpasswd && \
passwd sebastiana -e && \
useradd roberto -m -s /bin/bash -G GRP_VEN && \
echo "roberto: Senha@123' | chpasswd && \
passwd roberto -e && \

useradd josefina -m -s /bin/bash -G GRP_SEC && \
echo "josefina: Senha@123' | chpasswd && \
passwd josefina -e && \
useradd amanda -m -s /bin/bash -G GRP_SEC && \
echo "amanda: Senha@123' | chpasswd && \
passwd amanda -e && \
useradd rogerio -m -s /bin/bash -G GRP_SEC && \
echo "rogerio: Senha@123' | chpasswd && \
passwd rogerio -e && \

echo "Usuários Criados com Sucesso!"

echo "Definindo Permissões dos Diretórios..."

chown root:GRP_ADM /adm && \
chown root:GRP_VEN /ven && \
chown root:GRP_SEC /sec && \

chmod 777 /publico && \
chmod 770 /adm && \
chmod 770 /ven && \
chmod 770 /sec && \

echo "Permissões Definidas com Sucesso!"

echo "Script Finalizado!"