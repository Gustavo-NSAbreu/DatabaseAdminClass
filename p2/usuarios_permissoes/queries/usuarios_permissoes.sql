
CREATE USER 'bob'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON pessoas.* TO 'bob'@'localhost' IDENTIFIED BY '1234';
FLUSH PRIVILEGES;
GRANT SELECT, GRANT OPTION ON enderecos.* TO 'bob'@'localhost' IDENTIFIED BY '1234';
FLUSH PRIVILEGES;
REVOKE CREATE FROM 'bob'@'localhost' IDENTIFIED BY '1234';
FLUSH PRIVILEGES;


CREATE USER alice@localhost IDENTIFIED BY '1234';


CREATE USER nina@localhost IDENTIFIED BY '1234';