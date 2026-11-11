# API REST com Node.js e MySQL

- **Aluno:** Daniel Barbosa Moraes
- **Turma:** 3ºDSN
- **Disciplina:** Programação Web III (PW3)

API REST com Express e MySQL (driver `mysql2`, sem ORM), com queries parametrizadas contra SQL Injection.

## Pré-requisitos
- Node.js 18+
- MySQL em execução

## Instalação
```bash
npm install
```

## Banco de dados
Execute o script no MySQL (Workbench ou terminal):
```bash
mysql -u root -p < schema.sql
```

## Configuração
Copie `.env.example` para `.env` e preencha com suas credenciais:
```bash
cp .env.example .env
```

## Executando
```bash
node src/server.js
# ou, com recarga automática:
npm run watch
```
Servidor em `http://localhost:3000` (ou a `PORT` definida no `.env`).

## Rotas
| Método | Rota | Descrição | Corpo (JSON) |
|--------|------|-----------|--------------|
| POST | `/usuarios` | Cria usuário (201) | `{ "nome": "...", "email": "..." }` |
| GET | `/usuarios` | Lista usuários (200) | — |
| PUT | `/usuarios/:id` | Atualiza usuário (200 / 404) | `{ "nome": "...", "email": "..." }` |
| DELETE | `/usuarios/:id` | Remove usuário (200 / 404) | — |

Erros inesperados retornam 500; dados obrigatórios ausentes no POST retornam 400.
