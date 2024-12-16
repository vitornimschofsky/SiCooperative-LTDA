USE sicooperative;

CREATE TABLE associado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    sobrenome VARCHAR(255),
    idade INT,
    email VARCHAR(255)
);

CREATE TABLE conta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50),
    data_criacao TIMESTAMP,
    id_associado INT,
    FOREIGN KEY (id_associado) REFERENCES associado(id)
);

CREATE TABLE cartao (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    num_cartao INT,
    nom_impresso VARCHAR(100),
    id_conta INT,
    id_associado INT,
    FOREIGN KEY (id_conta) REFERENCES conta(id),
    FOREIGN KEY (id_associado) REFERENCES associado(id)
);

CREATE TABLE movimento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vlr_transacao DECIMAL(10,2),
    des_transacao VARCHAR(255),
    data_movimento TIMESTAMP,
    id_cartao INT,
    FOREIGN KEY (id_cartao) REFERENCES cartao(id)
);
