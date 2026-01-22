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
### chpasswd
Utilizado para definir ou alterar a senha do usúario de forma automatizada 

Exemplo:
```
echo "carlos:Senha123" | chpasswd
```
