# 🐧 Linux Administration Labs

![Ubuntu](https://img.shields.io/badge/Ubuntu-Server-E95420?logo=ubuntu&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Admin-FCC624?logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/Bash-Scripting-4EAA25?logo=gnu-bash&logoColor=white)

## 🎯 Objetivo do Repositório
Este repositório foi criado para documentar meu aprendizado prático em Linux, aplicando conceitos reais de administração de sistemas, com foco em:

- Criação e gerenciamento de usuários
- Gerenciamento de grupos
- Controle de permissões
- Automação de tarefas com Bash
- Boas práticas em ambientes Linux

---
## 📜 Script principal
O script [`iacl.sh`](scripts/iac1.sh) realiza as seguintes etapas:
1. Cria grupos administrativos
2. Cria usuários associados a esses grupos
3. Define uma senha padrão
4. Força a troca de senha no primeiro login
---
## 📚 Documentação

- 📘 [Explicação dos Comandos Utilizados](docs/explicacao-comandos.md)
- 🧪 [Scripts de criação e remoção de usuários](scrips/iac1.sh)
- 🧪 [Exemplos de Saída e Validação dos Comandos](docs/output-exemplos.md)
---
## 🛠️ Tecnologias Utilizadas
- Linux (Ubuntu)
- Bash / Shell Script
- OpenSSL
- SSH / PuTTY

---
## 📂 Estrutura do Projeto
---
```
linux-admin-labs/
│
├── scripts/
│   └── admin_tasks.sh        # Script com comandos de administração Linux
│
├── docs/
│   ├── explicacao-comandos.md # Explicação detalhada dos comandos utilizados
│   └── output-exemplos.md     # Exemplos de saída dos comandos no terminal
│
├── README.md                 # Documentação principal do projeto

```

