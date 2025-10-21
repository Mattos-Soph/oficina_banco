DROP TABLE IF EXISTS agendamento;
DROP TABLE IF EXISTS servico;
DROP TABLE IF EXISTS veiculo;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS funcionario;


CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    celular VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE,
    data_cadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE veiculo (
    id_veiculo SERIAL PRIMARY KEY,
    id_cliente_ref INTEGER NOT NULL,
    placa VARCHAR(8) NOT NULL UNIQUE,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano_fabricacao INTEGER,
    cor VARCHAR(30)
);


CREATE TABLE servico (
    id_servico SERIAL PRIMARY KEY,
    nome_servico VARCHAR(100) NOT NULL UNIQUE,
    descricao TEXT,
    preco_estimado DECIMAL(10, 2) NOT NULL 
        CHECK (preco_estimado >= 0),
    tempo_estimado_minutos INTEGER 
        CHECK (tempo_estimado_minutos > 0)
);


CREATE TABLE funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    matricula VARCHAR(20) UNIQUE,
    data_admissao DATE,
    ativo BOOLEAN NOT NULL DEFAULT TRUE
);


CREATE TABLE agendamento (
    id_agendamento SERIAL PRIMARY KEY,
    
    id_veiculo_ref INTEGER NOT NULL,
    id_servico_ref INTEGER NOT NULL,
    id_funcionario_ref INTEGER,
    
    data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_hora_agendamento TIMESTAMP NOT NULL, 
    
    data_hora_inicio_real TIMESTAMP,
    data_hora_fim_real TIMESTAMP,

    status VARCHAR(20) NOT NULL DEFAULT 'Agendado' 
        CHECK (status IN (
            'Agendado',
            'Em Atendimento',
            'Aguardando Peças',
            'Concluído',
            'Cancelado',
            'Não Compareceu'
        )),
    
    obs_cliente TEXT,
    obs_tecnico TEXT,
    
    valor_final DECIMAL(10, 2)
        CHECK (valor_final IS NULL OR valor_final >= 0) 
);