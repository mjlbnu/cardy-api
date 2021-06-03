CREATE TABLE category (
    id BIGINT(20) primary key AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO category(name) values ('Barbearia');
INSERT INTO category(name) values ('Salão de beleza');
INSERT INTO category(name) values ('Petshop');