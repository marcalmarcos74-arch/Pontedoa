# PonteDoa

Sistema de Gestão de Doações desenvolvido para a disciplina Projeto Integrador Extensionista I - PIE I, do curso de Análise e Desenvolvimento de Sistemas.

## Sobre o projeto

O PonteDoa é um sistema web acadêmico criado para apoiar a organização fictícia NovaPonte Solidária, localizada em Campinas/SP.

A ONG fictícia atua na arrecadação e distribuição de alimentos, roupas e itens de higiene para famílias em situação de vulnerabilidade.

O sistema foi pensado para centralizar o cadastro de doadores, o registro de doações, a consulta de informações e a geração de relatórios.

## Objetivos principais

- Cadastrar e consultar doadores.
- Registrar e acompanhar doações.
- Organizar itens e categorias.
- Filtrar doações por período e status.
- Gerar relatórios mensais.
- Permitir acesso por usuários autenticados.
- Melhorar a organização e a rastreabilidade das informações.

## Tecnologias previstas

### Frontend
- HTML
- CSS
- JavaScript

### Backend
- Node.js
- Express

### Banco de Dados
- MySQL ou MariaDB

### Outras tecnologias
- Sequelize
- JWT
- Git
- GitHub

## Estrutura do projeto

```text
Pontedoa/
├── backend/
│   └── src/
│       ├── models/
│       ├── routes/
│       ├── controllers/
│       └── middleware/
│
├── database/
│   └── schema.sql
│
├── docs/
│   ├── diagramas/
│   ├── wireframes/
│   ├── Relatorio_Final_PIE_I_PonteDoa_FINAL.docx
│   └── Relatorio_Final_PIE_I_PonteDoa_FINAL.pdf
│
├── frontend/
│   └── src/
│
├── .env.example
├── .gitignore
└── README.md
