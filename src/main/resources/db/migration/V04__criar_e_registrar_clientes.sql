CREATE TABLE establishment (
    id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    cnpj BIGINT(14) UNIQUE NOT NULL,
    id_category BIGINT(20) NOT NULL,
    FOREIGN KEY (id_category) REFERENCES category(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO establishment (name, cnpj, id_category) values ('Establishment 1',12345678000134, 11);
INSERT INTO establishment (name, cnpj, id_category) values ('Establishment 1',12345678000135, 12);
INSERT INTO establishment (name, cnpj, id_category) values ('Establishment 1',12345678000136, 13);
