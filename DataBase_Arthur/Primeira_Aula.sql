-- Comentário em BANCO DE DADOS
-- Criar novo arquivo -> CTRL + T
-- CTRL + SHIFT + ENTER -> Execute o código

-- Criar Usuário
CREATE USER 'novoUser'@'localhost

'
IDENTIFIED BY 'SENHA123';

-- Mostre permissões do user
SHOW GRANTS FOR 'novoUser'@'localhost';

GRANT 
	SELECT,
    INSERT,
    UPDATE
ON sys.sys_config
TO 'novoUser'@'localhost';


REVOKE
		SELECT,
    INSERT,
    UPDATE
ON sys.sys_config
FROM 'novoUser'@'localhost';

DROP USER 'novoUser'@'localhost';

SELECT * FROM products