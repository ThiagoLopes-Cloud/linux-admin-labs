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

###
