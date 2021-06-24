CREATE TABLE IF NOT EXISTS client_campaign (
  id_client BIGINT(20) NOT NULL,
  id_campanha BIGINT(20) NOT NULL,
  PRIMARY KEY (id_client, id_campanha),
    FOREIGN KEY (id_client)
    REFERENCES client (id),
    FOREIGN KEY (id_campanha)
    REFERENCES campaign (id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO client_campaign (id_client, id_campanha) values (1,1);
INSERT INTO client_campaign (id_client, id_campanha) values (3,2);
INSERT INTO client_campaign (id_client, id_campanha) values (2,3);