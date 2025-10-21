🚗 AGENDA DE SERVIÇOS DE OFICINA
--------------------------------

Projeto acadêmico — Modelagem de banco de dados (DDL/DML) em PostgreSQL  
Sistema simples para controle de clientes, veículos, serviços e agendamentos de uma oficina mecânica.

--------------------------------
👩‍💻 AUTORAS
- Sophia Mattos
- Thauanny da Cruz

--------------------------------
🧩 OBJETIVO
Modelar um esquema de banco de dados relacional para uma oficina mecânica, com base em um cenário de agenda de serviços.
O foco é definir tabelas, tipos de dados e constraints, sem uso de chaves estrangeiras (somente campos de referência).

--------------------------------
📋 REQUISITOS E SUPORTES
- Cada cliente pode ter vários veículos.
- Cada agendamento está vinculado a um cliente, veículo e serviço.
- Status do agendamento: PENDENTE, EM_ANDAMENTO, CONCLUÍDO, CANCELADO.
- Telefone segue o formato (11) 99999-8888.
- Placa de veículo segue o formato AAA-9A99.

--------------------------------
🏗️ ESTRUTURA DO PROJETO
- oficina_schema.sql → Criação das tabelas (DDL)
- oficina_dml.sql → Inserções, consultas e atualizações (DML/DQL)
- README.md → Documentação do projeto
- diagrama.png (opcional) → Diagrama visual do banco

--------------------------------
🗄️ BANCO DE DADOS
SGBD: PostgreSQL  
Versão testada: 15+

--------------------------------
🧱 TABELAS
1. clientes — identificação e contato  
2. veiculos — dados básicos dos veículos  
3. servicos — catálogo de serviços  
4. agendamentos — data, hora e status do serviço

--------------------------------
⚙️ COMO EXECUTAR

1. Clonar o repositório:
   git clone https://github.com/seuusuario/oficina_banco.git
   cd oficina_banco

2. Rodar os scripts:
   psql -U postgres -f oficina_schema.sql
   psql -U postgres -f oficina_dml.sql

--------------------------------
🧠 DECISÕES DE PROJETO
- IDs automáticos (SERIAL)
- Campos NOT NULL em essenciais
- Validações CHECK em telefone, placa e status
- Estrutura pronta para relacionamentos futuros

--------------------------------
📜 LICENÇA
Uso educacional, desenvolvido para fins de aprendizado.
Distribuição e modificação permitidas com citação das autoras.

💬 "Dados bem estruturados são o motor de qualquer sistema confiável."
