-- ctrl + t ( nova guia )

-- AS -> Apelido 

USE operadores_libbs;

-- Operadores Aritméticos
SELECT 10 + 5 AS soma;
SELECT 10 - 5 AS subtracao;
SELECT 10 * 5 AS multiplicacao;
SELECT 10 / 5 AS divisao;
SELECT 10 % 3 AS modulo;

-- Operadores de Comparação 
SELECT * FROM clientes WHERE idade = 25; -- Todo mundo que tem essa idade
SELECT * FROM clientes WHERE idade != 25; -- Todos que não tem essa idade
SELECT * FROM produtos WHERE preco > 100; -- maior
SELECT * FROM produtos WHERE preco < 50; -- menor
SELECT * FROM produtos WHERE preco >= 10; -- maior igual
SELECT * FROM produtos WHERE preco <= 20; -- menor igual
SELECT * FROM produtos WHERE preco BETWEEN 1 AND 5; -- esteja entre
SELECT * FROM clientes WHERE  nome IN ('Rapha', 'Vivi'); -- Diversos
SELECT * FROM clientes WHERE nome LIKE ('%a%'); -- vai buscar algo semelhante para completar 
SELECT * FROM clientes WHERE nome LIKE ('R%'); -- vai buscar algo semelhante para completar apenas a frente
SELECT * FROM clientes WHERE nome LIKE ('%a'); -- vai buscar algo semelhante para completar apenas atrás
SELECT * FROM clientes WHERE nome IS NULL; -- Selecionando quem é nulo

-- Operadores Lógicos
SELECT * FROM clientes WHERE idade > 15 AND idade < 25; -- &&
SELECT * FROM clientes WHERE idade > 15 OR idade < 25; -- ||
SELECT * FROM clientes 	WHERE NOT idade = 18 ; -- não seja

-- Função de Agregação
SELECT COUNT(*) FROM clientes; -- Contar linhas do banco
SELECT SUM(quantidade) FROM produtos; -- Somar
SELECT AVG(quantidade) FROM produtos; -- Média
SELECT MIN(quantidade) FROM produtos; -- Mínimo
SELECT MAX(quantidade) FROM produtos; -- Máximo

-- Função de String
SELECT CONCAT(nome, idade) FROM clientes; -- concatenar
SELECT LOWER(nome) FROM clientes; -- deixar tudo minusculo
SELECT UPPER(nome) FROM clientes; -- deixar tudo maisculo
SELECT SUBSTRING(nome, 2, 5) FROM clientes; -- cortar palavra, inicio e fim

-- Função de Data e Hora
SELECT NOW(); -- retorna a data e hora atual
SELECT CURDATE(); -- Retorna a data atual
SELECT CURTIME(); -- Retorna a hora atual

-- Funções Matemáticas 
SELECT ABS (-534.25); -- Retorne um valor absoluto 
SELECT CEIL (43.65); -- Arredonda para um num inteiro pra cima
SELECT CEILING(43.65); -- Arredonda para um num inteiro  pra cima
SELECT FLOOR(45.97); -- Arredonda para um num inteiro para baixo
SELECT ROUND(45.44, 0); -- Arredondar com base na casas decimais
SELECT SQRT(26); -- Raiz quadrada

