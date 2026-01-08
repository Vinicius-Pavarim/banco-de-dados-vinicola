# Banco de Dados – Modelo de Lanchonete e Sistema de Vinícolas

Este repositório contém a modelagem de uma **lanchonete** e a implementação de um banco de dados relacional
desenvolvido para o gerenciamento de **vinícolas, vinhos e regiões produtoras**.

O projeto foi desenvolvido com fins acadêmicos, demonstrando conceitos
fundamentais de modelagem de dados e SQL utilizando **MySQL**.

---

## Conteúdo do Repositório

O projeto é composto por três principais artefatos:

 **Modelo Lógico**  
  Diagrama Entidade-Relacionamento (DER), representando as entidades, atributos
  e relacionamentos do sistema.

 **Modelo Físico**  
  Representação do banco com chaves primárias, chaves estrangeiras e tipos de dados.

 **Script SQL (`Vinhos.sql`)**  
  Implementação completa do banco de dados, incluindo:
  - Criação do banco
  - Criação das tabelas
  - Definição de chaves primárias e estrangeiras
  - Inserção de dados de exemplo
  - Criação de usuário e controle de permissões

---

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes entidades principais:

- **Região**  
  Representa regiões produtoras de vinho.

- **Vinícola**  
  Armazena informações das vinícolas, associadas a uma região.

- **Vinho**  
  Contém os vinhos produzidos por cada vinícola.

### Relacionamentos
- Uma **Região** pode possuir várias **Vinícolas** (1:N)
- Uma **Vinícola** pode produzir vários **Vinhos** (1:N)

---

## Tecnologias e Conceitos Utilizados

- MySQL
- SQL (DDL e DML)
- Modelagem de Banco de Dados
- Diagrama Entidade-Relacionamento (DER)
- Chaves primárias e estrangeiras
- Relacionamentos 1:N
- Controle de acesso com usuários e permissões

---

## Autor

**Vinicius Pavarim**  
Estudante de Análise e Desenvolvimento de Sistemas (ADS)

---

## Licença

Este projeto está licenciado sob a licença MIT.  
