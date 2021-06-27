CREATE TABLE IF NOT EXISTS client_establishment (
  id_client BIGINT(20) NOT NULL,
  id_establishment BIGINT(20) NOT NULL,
  PRIMARY KEY (id_client, id_establishment),
    FOREIGN KEY (id_client)
    REFERENCES client (id),
    FOREIGN KEY (id_establishment)
    REFERENCES establishment (id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO client_establishment (id_client, id_establishment) values (1,3);
INSERT INTO client_establishment (id_client, id_establishment) values (3,2);
INSERT INTO client_establishment (id_client, id_establishment) values (2,1);