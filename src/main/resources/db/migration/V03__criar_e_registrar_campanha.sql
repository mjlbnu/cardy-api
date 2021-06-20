CREATE TABLE campaign (
    id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(50) NOT NULL,
    duration INT NOT NULL,
    validity_date DATE,
    id_establishment BIGINT(20) NOT NULL,
    FOREIGN KEY (id_establishment) REFERENCES establishment(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO campaign (description, duration, validity_date, id_establishment)
    values('Campaign 1', 12, '2021-06-19', 1);
INSERT INTO campaign (description, duration, validity_date, id_establishment)
    values('Campaign 2', 6, '2021-06-20', 2);
INSERT INTO campaign (description, duration, validity_date, id_establishment)
    values('Campaign 3', 10, '2021-06-21', 3);