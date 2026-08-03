# 🌱 Rede Social de Apoio e Conscientização da Cultura Verde

[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

> Projeto de modelagem e implementação de Banco de Dados Relacional desenvolvido como trabalho acadêmico no curso de Engenharia de Software (UNIASSELVI).

---

## 📌 Sobre o Projeto

A **Rede Social Cultura Verde** tem como objetivo conectar pequenos empreendedores sustentáveis e consumidores focados em alimentação saudável e livre de agrotóxicos. A plataforma busca incentivar o consumo de alimentos frescos, reduzindo a dependência de produtos ultraprocessados através da criação de bancas digitais, interações, seguidores, comentários e curtidas.

---

## 📐 Estrutura e Modelagem do Banco de Dados

O banco de dados foi construído seguindo as etapas de **Modelagem Conceitual**, **Lógica** e **Física**:

### 📊 Entidades e Cardinalidades
- **`usuarios`**: Cadastro de usuários da plataforma.
  - Relacionamento $1 \to (0,1)$ com `banca_produtos` *(Um usuário pode possuir nenhuma ou no máximo uma banca)*.
  - Relacionamento $N \to M$ com `seguidores` *(Um usuário pode seguir vários usuários e ser seguido por vários)*.
- **`banca_produtos`**: Cadastro dos produtos sustentáveis disponíveis para venda.
  - Relacionamento $1 \to N$ com `comentarios` *(Uma banca pode receber de 0 a vários comentários)*.
  - Relacionamento $1 \to N$ com `curtidas` *(Uma banca pode receber de 0 a várias curtidas)*.
- **`comentarios`**: Armazena as avaliações e comentários dos compradores.
- **`curtidas`**: Registro de curtidas recebidas pelas bancas.
- **`seguidores`**: Tabela associativa com chave primária composta para gerenciar a rede de conexões.

---

## 🛠️ Tecnologias Utilizadas

- **SGBD:** MySQL / MySQL Workbench
- **Modelagem:** Miro & MySQL Workbench (Diagramas ER)
- **Linguagem SQL:** DDL (Data Definition Language) & DML (Data Manipulation Language)

---

## ⚙️ Recursos Implementados no Script SQL

- [x] Criação do schema `rede_social_cultura_verde`
- [x] Criação de tabelas com chaves primárias (`PRIMARY KEY`) e regras de integridade (`UNIQUE`, `NOT NULL`, `AUTO_INCREMENT`)
- [x] Criação de chaves estrangeiras (`FOREIGN KEY`) conectando o modelo relacional
- [x] Criptografia de senhas de usuários utilizando a função `MD5()`
- [x] Script de carga inicial de dados (massa de testes) para validação das consultas

---

## 🚀 Como Executar o Projeto

1. Certifique-se de ter o **MySQL Server** e o **MySQL Workbench** (ou outro cliente SQL de sua preferência) instalados.
2. Clone este repositório ou baixe o arquivo `Rede_social_cultura_verde.sql`:
   ```bash
   git clone [https://github.com/EduardoDvv/rede_social_cultura_verde.git](https://github.com/EduardoDvv/rede_social_cultura_verde.git)
