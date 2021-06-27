CREATE TABLE client (
    id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    cpf BIGINT(11) UNIQUE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO client (name, cpf) values ('Client 1',12345678000134);
INSERT INTO client (name, cpf) values ('Client 2',03057679954);
INSERT INTO client (name, cpf) values ('Client 3',03057678854);
