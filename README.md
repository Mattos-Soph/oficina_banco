\# Projeto: Agenda de Serviços de Oficina



\## Autores

\- Sophia Mattos e Thauanny da Cruz



\## Descrição

Sistema simples para controle de clientes, veículos, serviços e agendamentos de uma oficina mecânica.  

Objetivo: modelar o esquema básico em SQL (DDL), \*\*sem chaves estrangeiras\*\*, apenas referências por id.



\## Requisitos e Supostos

\- Cada cliente pode ter vários veículos.

\- Cada agendamento está vinculado a um cliente e a um veículo.

\- O status do agendamento pode ser: `PENDENTE`, `EM\_ANDAMENTO`, `CONCLUÍDO`, `CANCELADO`.

\- Telefones seguem o formato brasileiro (ex: `(11) 99999-8888`).

\- Placa de veículo segue o padrão `AAA-9A99`.



\## Banco escolhido

PostgreSQL



\## Estrutura de tabelas

1\. \*\*clientes\*\* — dados básicos de identificação e contato.  

2\. \*\*veiculos\*\* — informações dos veículos atendidos.  

3\. \*\*servicos\*\* — catálogo de serviços prestados.  

4\. \*\*agendamentos\*\* — agenda com data, hora, status e referência de cliente e veículo.



\## Tipos e Boas Práticas

\- IDs são `SERIAL` (auto incremento).

\- Campos `NOT NULL` em todos os essenciais.

\- Constraints de validação (`CHECK`, `UNIQUE`) aplicadas em telefone, placa e status.

\- Nome de tabelas no \*\*singular\*\*, colunas autoexplicativas.



\## Teste

Os scripts foram testados no PostgreSQL usando:

```bash

psql -U postgres -f oficina\_schema.sql

psql -U postgres -f oficina\_dml.sql



