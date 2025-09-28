# 🐶 Spring PetClinic com Render + Aiven.io

Este repositório contém o código-fonte do [Spring PetClinic](https://github.com/spring-projects/spring-petclinic), configurado para ser implantado gratuitamente na nuvem usando:

- **[Render](https://render.com/)** — Plataforma de deploy simples e poderosa.
- **[Aiven](https://aiven.io/)** — Backend como serviço (BaaS) com PostgreSQL, autenticação e storage.

> ✅ Deploy 100% gratuito para projetos pessoais e pequenos.
## 🎯 Objetivo

Demonstrar como containerizar e implantar uma aplicação Java Spring Boot com banco de dados externo (Aiven.io) usando ferramentas modernas e gratuitas.

## 📁 Estrutura do Repositório

```
.
├── Dockerfile               # Definição da imagem Docker
├── docker-compose.yml       # Para desenvolvimento local (opcional)
├── render.yaml              # Configuração para deploy no Render
├── .env                     # Variáveis de ambiente (não commitadas!)
├── .gitignore               # Ignorar arquivos sensíveis
└── README.md                # Esta documentação
```

## 🚀 Como Usar

### 1. Clone este repositório

```bash
git clone https://github.com/filisteus/deployfree-render-aiven.io.git
cd deployfree-render-aiven.io
```

### 2. Configure o Aiven.io

1. Crie uma conta em [Aiven.io](https://console.aiven.io/).
2. Crie um novo projeto e copie as credenciais:
   - 
   - 
3. Crie o arquivo  na raiz do projeto:

```.env
SPRING_DATASOURCE_URL=jbdc:postgresql:/<your-aiven-host>:<port>/defaultdb
SPRING_DATASOURCE_USERNAME=avnadmin
SPRING_DATASOURCE_PASSWORD=*******************
SPRING_JPA_HIBERNATE_DDL_AUTO=validate
```

> ⚠️ **NÃO COMITAR O .env!** Ele está listado no .gitignore.

### 3. Configure o Render

1. Faça login no [Render Dashboard](https://dashboard.render.com/).
2. Clique em “New Web Service” → “Import from GitHub”.
3. Selecione este repositório.
4. No campo “Build Command”: 
5. No campo “Start Command”: 
6. Adicione variáveis de ambiente (usando as do Aiven):
   - 
   - 
   - 
7. Clique em “Create Web Service”.

✅ Pronto! Seu app estará disponível em poucos minutos.
## 🛠️ Dockerfile (para Render)

A aplicação será construída com Maven e empacotada como JAR. O Dockerfile usa multi-stage para otimização.

## 📌 Autor

**Paulo Evaristo F. da Silva**
- GitHub: [@filisteus](https://github.com/filisteus)
- Email: filisteus@gmail / pevaristo@msn.com

