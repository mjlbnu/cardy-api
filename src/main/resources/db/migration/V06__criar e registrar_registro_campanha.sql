CREATE TABLE IF NOT EXISTS record (
  id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
  record_date DATE,
  id_client BIGINT(20) NOT NULL,
  id_campaign BIGINT(20) NOT NULL,
    FOREIGN KEY (id_client)
    REFERENCES client (id),
    FOREIGN KEY (id_campaign)
    REFERENCES campaign (id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO record (record_date, id_client, id_campaign) values ('2021-06-19', 1, 3);
INSERT INTO record (record_date, id_client, id_campaign) values ('2021-06-25', 2, 2);
INSERT INTO record (record_date, id_client, id_campaign) values ('2021-06-30', 3, 1);