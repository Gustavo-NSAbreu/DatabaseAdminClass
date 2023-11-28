

CREATE USER bob IDENTIFIED BY '1234';
GRANT USAGE ON *.* TO bob;
GRANT ALL ON pessoas.* TO bob WITH GRANT OPTION;
GRANT SELECT ON enderecos.* TO bob WITH GRANT OPTION;
FLUSH PRIVILEGES;


/* ------------------------ BOB'S TEAM --------------------------------------------- */
CREATE USER betelgeuse IDENTIFIED BY '1234';
GRANT SELECT ON pessoas.pessoa TO betelgeuse;
GRANT SELECT ON enderecos.endereco TO betelgeuse;
FLUSH PRIVILEGES;

CREATE USER pitty IDENTIFIED BY '1234';
GRANT SELECT ON pessoas.usuario TO pitty;
GRANT INSERT ON pessoas.usuario TO pitty;
FLUSH PRIVILEGES;

CREATE USER kelly IDENTIFIED BY '1234';
GRANT USAGE ON *.* TO kelly;
GRANT ALL ON *.* TO kelly;
GRANT CREATE VIEW ON *.* TO kelly;
FLUSH PRIVILEGES;
/*--------------------- END BOB'S TEAM ---------------------------------------------*/



CREATE USER alice IDENTIFIED BY '1234';
GRANT USAGE ON *.* TO alice;
GRANT SELECT ON ensino.* TO alice WITH GRANT OPTION;
GRANT SELECT ON enderecos.* TO alice WITH GRANT OPTION;
FLUSH PRIVILEGES;

/*------------------------ ALICE'S TEAM ---------------------------------------------*/
CREATE USER thiago IDENTIFIED BY '1234';
GRANT SELECT ON enderecos.* TO thiago;
GRANT SELECT ON pessoas.usuario TO thiago;
GRANT SELECT ON pessoas.contato TO thiago;
FLUSH PRIVILEGES;


CREATE USER benedita IDENTIFIED BY '1234';
GRANT SELECT ON pessoas.usuario TO benedita;
GRANT SELECT ON pessoas.contato TO benedita; 
FLUSH PRIVILEGES;


/*---------------------- END ALICE'S TEAM ---------------------------------------------*/

CREATE USER nina IDENTIFIED BY '1234';
GRANT CREATE ON *.* TO nina;
GRANT ALL ON ensino.* TO nina WITH GRANT OPTION;
GRANT ALL ON pessoas.* TO nina;
GRANT SELECT ON pessoas.* TO nina WITH GRANT OPTION;
FLUSH PRIVILEGES;

/*------------------------ NINA'S TEAM ---------------------------------------------*/

CREATE USER Kyara IDENTIFIED BY '1234';

GRANT ALL ON *.* TO Kyara WITH GRANT OPTION;


CREATE USER ganimedes IDENTIFIED BY '1234';
GRANT SELECT, INSERT, UPDATE ON ensino.instituicao TO ganimedes;
GRANT SELECT, INSERT, UPDATE ON ensino.curso TO ganimedes;
GRANT SELECT, INSERT, UPDATE ON pessoas.pessoa TO ganimedes;
FLUSH PRIVILEGES;


CREATE USER folo IDENTIFIED BY '1234';
GRANT SELECT ON ensino.curso TO folo;
GRANT SELECT ON pessoas.pessoa TO folo;
FLUSH PRIVILEGES;
/*---------------------- END NINA'S TEAM ---------------------------------------------*/

------------------------------------ QUERY ALL USERS ---------------------------------
SELECT * FROM mysql.user;