# 📘 Explicação dos Comandos Utilizados

Este documento descreve os principais comandos Linux utilizados nos scripts deste repositório, explicando sua função e aplicação prática na administração de sistemas.

---

## 👤 Gerenciamento de Usuários

### `useradd`
Utilizado para criar novos usuários no sistema.

Exemplo:
````
useradd -m -s /bin/bash carlos

Explicação dos parâmetros:

-m → cria automaticamente o diretório /home/usuario

-s /bin/bash → define o Bash como shell padrão

carlos → nome do usuário
````
----
### chpasswd
Utilizado para definir ou alterar a senha do usúario de forma automatizada 

Exemplo:
```
echo "carlos:Senha123" | chpasswd
```
📌 A senha é criptografada automaticamente pelo sistema.

---

### passwd -e 
Força o usario a troca a senha no primeiro login

Exemplo:
```
passwd -e carlos
```

Mensagem exibida:

_password expiry information changed_

✅ Essa mensagem indica que a expiração da senha foi aplicada corretamente.

---

## 👥 Gerenciamento de Grupos

### group add
Cria grupos no sistema.

Exemplo:
```
group add GRP_ADM
```
### useradd -G
Associa um usuário no momento da criação.

Exemplo:
```
useradd -m -s /bin/bash -G GRP_ADM carlos
```
📌 O usuário passa a fazer parte do grupo informado.

---

## 🔐 Permissões e Diretórios

### mkdir
Cria diretórios no sistema

Exemplo:
```
mkdir pasta-exemplo
```
### chmod 
Altera permissões de arquivos e dirertórios

Exemplo: 
```
chmod 700 /home/carlos
```
📌 Permite acesso total apenas ao dono do diretório.

---
## 🔄 Automação com Loop

### for
Utilizado para criar usúararios em lote.

Exemplo:
```
for i in {1..21}
do
  useradd -m -s /bin/bash guest$i
  echo "guest$i:Senha123" | chpasswd
  passwd -e guest$i
done
```
O que esse loop faz:

- Cria usuários guest1 até guest21

- Cria diretórios home automaticamente

- Define senha padrão

- Força troca de senha no primeiro login
---
## ❌ Remoção de Usuários
### userdel
Remove usuario do sistema

Exemplo:
```
userdel -r guest10
```
📌 -r → remove também o diretório home e arquivos do usuário

### Loop para exclusão em lote
