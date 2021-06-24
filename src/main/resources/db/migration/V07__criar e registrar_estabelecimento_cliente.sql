CREATE TABLE IF NOT EXISTS client_campaign (
  id_client BIGINT(20) NOT NULL,
  id_campaign BIGINT(20) NOT NULL,
  PRIMARY KEY (id_client, id_campaign),
    FOREIGN KEY (id_client)
    REFERENCES client (id),
    FOREIGN KEY (id_campaign)
    REFERENCES campaign (id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO client_campaign (id_client, id_campaign) values (1,1);
INSERT INTO client_campaign (id_client, id_campaign) values (3,2);
INSERT INTO client_campaign (id_client, id_campaign) values (2,3);