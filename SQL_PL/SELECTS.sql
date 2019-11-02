------------------------------------------------------------SELECTS ENDERECO--------------------------------------------------------------
SELECT * FROM ENDERECO
ORDER BY id_endereco ASC;

------------------------------------------------------------10. SELECT-FROM-WHERE---------------------------------------------------------
SELECT * FROM ENDERECO
WHERE complemento = 'Apartamento';

------------------------------------------------------------12. IN------------------------------------------------------------------------
SELECT * FROM ENDERECO
WHERE cidade IN ('Caruaru', 'Jaboatão');

------------------------------------------------------------13. LIKE----------------------------------------------------------------------
SELECT * FROM ENDERECO
WHERE ESTADO LIKE 'P%' OR ESTADO LIKE 'p%';

------------------------------------------------------------14. IS NULL-------------------------------------------------------------------
SELECT * FROM ENDERECO
WHERE complemento IS NULL;

------------------------------------------------------------14. IS NOT NULL---------------------------------------------------------------
SELECT * FROM ENDERECO
WHERE numero IS NOT NULL;

------------------------------------------------------------22. SUBCONSULTA COM IN--------------------------------------------------------
SELECT * FROM (SELECT * FROM ENDERECO
WHERE cidade IN ('Várzea', 'Recife'));

------------------------------------------------------------23. SUBCONSULTA COM ANY-------------------------------------------------------
SELECT * FROM ENDERECO
WHERE cidade = ANY
(SELECT cidade FROM ENDERECO WHERE numero IS NOT NULL);

------------------------------------------------------------24. SUBCONSULTA COM ALL-------------------------------------------------------
SELECT * FROM ENDERECO
WHERE cidade != ALL
(SELECT DISTINCT cidade FROM ENDERECO WHERE numero IS NOT NULL);

------------------------------------------------------------SELECTS PESSOA----------------------------------------------------------------
SELECT * FROM PESSOA
ORDER BY id_pessoa ASC;

------------------------------------------------------------11. BETWEEN-------------------------------------------------------------------
SELECT cpf, nome FROM PESSOA
WHERE id_endereco BETWEEN 2 AND 5;

------------------------------------------------------------15. INNER JOIN----------------------------------------------------------------
SELECT * FROM PESSOA P INNER JOIN ENDERECO E ON P.id_endereco = E.id_endereco;

------------------------------------------------------------20. LEFT ou RIGHT ou FULL OUTER JOIN & 25. ORDER BY---------------------------
SELECT PESSOA.nome, ENDERECO.id_endereco
FROM PESSOA LEFT JOIN ENDERECO ON ENDERECO.id_endereco = PESSOA.id_endereco
ORDER BY PESSOA.nome ASC;

------------------------------------------------------------SELECTS CLIENTE---------------------------------------------------------------
SELECT * FROM CLIENTE
ORDER BY id_cliente ASC;

SELECT CLIENTE.id_cliente, PESSOA.nome, PESSOA.cpf, PESSOA.sexo, CLIENTE.email, PESSOA.data_nascimento
FROM CLIENTE INNER JOIN PESSOA ON CLIENTE.id_cliente = PESSOA.id_pessoa
ORDER BY CLIENTE.id_cliente ASC;

------------------------------------------------------------SELECTS FUNCIONARIO-----------------------------------------------------------
SELECT * FROM FUNCIONARIO
ORDER BY id_funcionario ASC;

SELECT FUNCIONARIO.id_funcionario, PESSOA.nome, PESSOA.cpf, PESSOA.sexo, PESSOA.data_nascimento, FUNCIONARIO.salario, FUNCIONARIO.cargo, FUNCIONARIO.ctps
FROM FUNCIONARIO INNER JOIN PESSOA ON FUNCIONARIO.id_funcionario = PESSOA.id_pessoa
ORDER BY FUNCIONARIO.id_funcionario ASC;

------------------------------------------------------------SELECTS TELEFONE_PESSOA-------------------------------------------------------
SELECT * FROM TELEFONE_PESSOA
ORDER BY id_pessoa ASC;

SELECT PESSOA.id_pessoa, PESSOA.nome, TELEFONE_PESSOA.telefone_pessoa
FROM TELEFONE_PESSOA INNER JOIN PESSOA ON TELEFONE_PESSOA.id_pessoa = PESSOA.id_pessoa
ORDER BY PESSOA.id_pessoa ASC;

------------------------------------------------------------SELECTS VENDEDOR--------------------------------------------------------------
SELECT * FROM VENDEDOR
ORDER BY id_vendedor ASC;

SELECT VENDEDOR.id_vendedor, PESSOA.nome AS nome_vendedor, VENDEDOR.comissao, VENDEDOR.id_supervisor, TABELA.nome AS nome_supervisor
FROM VENDEDOR INNER JOIN PESSOA ON VENDEDOR.id_vendedor = PESSOA.id_pessoa
     INNER JOIN (SELECT VENDEDOR.id_supervisor, PESSOA.nome FROM VENDEDOR INNER JOIN PESSOA ON VENDEDOR.id_supervisor = PESSOA.id_pessoa) TABELA ON TABELA.id_supervisor = VENDEDOR.id_supervisor
ORDER BY VENDEDOR.id_vendedor ASC;

------------------------------------------------------------SELECTS ESTOQUISTA------------------------------------------------------------
SELECT * FROM ESTOQUISTA
ORDER BY id_estoquista ASC;

SELECT ESTOQUISTA.id_estoquista, PESSOA.nome
FROM ESTOQUISTA INNER JOIN PESSOA ON ESTOQUISTA.id_estoquista = PESSOA.id_pessoa
ORDER BY ESTOQUISTA.id_estoquista ASC;

------------------------------------------------------------SELECTS SETOR-----------------------------------------------------------------
SELECT * FROM SETOR
ORDER BY id_estoquista ASC;

SELECT ESTOQUISTA.id_estoquista, PESSOA.nome, SETOR.setor
FROM SETOR INNER JOIN ESTOQUISTA ON ESTOQUISTA.id_estoquista = SETOR.id_estoquista
     INNER JOIN PESSOA ON SETOR.id_estoquista = PESSOA.id_pessoa
ORDER BY ESTOQUISTA.id_estoquista ASC;

------------------------------------------------------------SELECTS PRODUTO---------------------------------------------------------------
SELECT * FROM PRODUTO
ORDER BY codigo ASC;

------------------------------------------------------------16. MAX-----------------------------------------------------------------------
SELECT MAX (preco_de_venda) FROM PRODUTO;

------------------------------------------------------------17. MIN-----------------------------------------------------------------------
SELECT MIN (preco_de_venda) FROM PRODUTO;

------------------------------------------------------------18. AVG-----------------------------------------------------------------------
SELECT AVG (preco_de_venda) FROM PRODUTO;

------------------------------------------------------------19. COUNT---------------------------------------------------------------------
SELECT COUNT (preco_de_venda) FROM PRODUTO P WHERE P.preco_de_venda > 200;

------------------------------------------------------------21. SUBCONSULTA COM OPERADOR RELACIONAL---------------------------------------
SELECT MIN (preco_de_venda) FROM (SELECT preco_de_venda FROM PRODUTO P WHERE P.preco_de_venda > 200);

------------------------------------------------------------26. GROUP BY------------------------------------------------------------------
SELECT categoria, MAX (preco_de_venda) AS preco FROM PRODUTO GROUP BY categoria ORDER BY categoria ASC;

------------------------------------------------------------26. GROUP BY & 27. HAVING-----------------------------------------------------
SELECT categoria, MAX (preco_de_venda) AS preco FROM PRODUTO GROUP BY categoria HAVING MAX (preco_de_venda) > 500 ORDER BY categoria ASC;

------------------------------------------------------------28. UNION ou INTERSECT ou MINUS-----------------------------------------------
SELECT * FROM PRODUTO WHERE preco_de_venda = ANY
(SELECT MAX (preco_de_venda) AS PRECO FROM PRODUTO UNION SELECT MIN (preco_de_venda) AS PRECO FROM PRODUTO);

------------------------------------------------------------SELECTS FORNECEDOR------------------------------------------------------------

------------------------------------------------------------29. CREATE VIEW---------------------------------------------------------------
CREATE VIEW PRODUTO_FORNECEDOR AS
SELECT  PRODUTO.codigo, PRODUTO.nome, PRODUTO.categoria, PRODUTO.preco_de_compra, 
        PRODUTO.preco_de_venda, (PRODUTO.preco_de_venda - PRODUTO.preco_de_compra) AS Lucro,
        FORNECEDOR.razao_social AS FORNECEDOR
FROM PRODUTO INNER JOIN FORNECEDOR ON fabricante = nome_fantasia
ORDER BY PRODUTO.codigo ASC;

SELECT * FROM FORNECEDOR ORDER BY id_fornecedor ASC;
SELECT * FROM PRODUTO_FORNECEDOR;

------------------------------------------------------------SELECTS EMAIL_FORNECEDOR------------------------------------------------------
SELECT * FROM EMAIL_FORNECEDOR
ORDER BY id_fornecedor ASC;

SELECT FORNECEDOR.id_fornecedor, FORNECEDOR.nome_fantasia AS fornecedor, EMAIL_FORNECEDOR.email
FROM EMAIL_FORNECEDOR INNER JOIN FORNECEDOR ON FORNECEDOR.id_fornecedor = EMAIL_FORNECEDOR.id_fornecedor
ORDER BY FORNECEDOR.id_fornecedor ASC;

------------------------------------------------------------SELECTS TELEFONE_FORNECEDOR---------------------------------------------------
SELECT * FROM TELEFONE_FORNECEDOR
ORDER BY id_fornecedor ASC;

SELECT FORNECEDOR.id_fornecedor, FORNECEDOR.nome_fantasia AS fornecedor, TELEFONE_FORNECEDOR.telefone
FROM TELEFONE_FORNECEDOR INNER JOIN FORNECEDOR ON FORNECEDOR.id_fornecedor = TELEFONE_FORNECEDOR.id_fornecedor
ORDER BY FORNECEDOR.id_fornecedor ASC;

------------------------------------------------------------SELECTS DEPENDENTE------------------------------------------------------------
SELECT * FROM DEPENDENTE
ORDER BY id_dependente ASC;

SELECT DEPENDENTE.id_dependente, DEPENDENTE.nome, DEPENDENTE.cpf, DEPENDENTE.sexo, DEPENDENTE.data_nascimento,
       PESSOA.id_pessoa, PESSOA.nome
       FROM DEPENDENTE INNER JOIN PESSOA ON DEPENDENTE.id_funcionario = PESSOA.id_pessoa
ORDER BY DEPENDENTE.id_dependente ASC;

------------------------------------------------------------SELECTS TELEFONE_DEPENDENTE---------------------------------------------------
SELECT * FROM TELEFONE_DEPENDENTE
ORDER BY id_dependente ASC;

SELECT DEPENDENTE.id_dependente, DEPENDENTE.nome AS nome_dependente, PESSOA.id_pessoa AS id_funcionario, PESSOA.nome AS nome_funcionario, TELEFONE_DEPENDENTE.telefone_pessoa AS telefone_dependente
FROM TELEFONE_DEPENDENTE INNER JOIN DEPENDENTE ON TELEFONE_DEPENDENTE.id_dependente = DEPENDENTE.id_dependente
     INNER JOIN PESSOA ON TELEFONE_DEPENDENTE.id_funcionario = PESSOA.id_pessoa
ORDER BY DEPENDENTE.id_dependente ASC;

------------------------------------------------------------SELECTS PRODUTO_ESPECIAL------------------------------------------------------
SELECT * FROM PRODUTO_ESPECIAL
ORDER BY id_produto_especial ASC;

SELECT id_produto_especial, nome FROM PRODUTO_ESPECIAL INNER JOIN PRODUTO ON PRODUTO.codigo = PRODUTO_ESPECIAL.id_produto_especial ORDER BY id_produto_especial ASC;

------------------------------------------------------------SELECTS RESTRICAO-------------------------------------------------------------

------------------------------------------------------------29. CREATE VIEW---------------------------------------------------------------
CREATE VIEW PRODUTO_ESPECIAL_RESTRICAO AS
SELECT codigo, nome, restricao FROM RESTRICAO INNER JOIN PRODUTO_ESPECIAL ON RESTRICAO.id_produto_especial = PRODUTO_ESPECIAL.id_produto_especial,
PRODUTO_ESPECIAL INNER JOIN PRODUTO ON PRODUTO_ESPECIAL.id_produto_especial = codigo
WHERE RESTRICAO.id_produto_especial = codigo
ORDER BY codigo ASC;

SELECT * FROM RESTRICAO ORDER BY id_produto_especial ASC;
SELECT * FROM PRODUTO_ESPECIAL_RESTRICAO;

------------------------------------------------------------SELECTS FORNECE---------------------------------------------------------------
SELECT * FROM FORNECE ORDER BY codigo_produto ASC, id_fornecedor ASC;

SELECT FORNECE.codigo_produto, PRODUTO.nome AS nome_produto, FORNECEDOR.id_fornecedor, FORNECEDOR.nome_fantasia AS nome_fornecedor, FORNECE.data_hora
FROM FORNECE INNER JOIN PRODUTO ON PRODUTO.codigo = FORNECE.codigo_produto
     INNER JOIN FORNECEDOR ON FORNECE.id_fornecedor = FORNECEDOR.id_fornecedor
ORDER BY codigo_produto ASC, id_fornecedor ASC;

------------------------------------------------------------SELECTS VENDA_ESPECIAL--------------------------------------------------------

------------------------------------------------------------29. CREATE VIEW---------------------------------------------------------------
CREATE VIEW VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL AS
SELECT VENDA_ESPECIAL.id_vendedor AS codigo_vendedor, PESSOA.nome AS vendedor, PRODUTO.codigo AS codigo_produto, PRODUTO.nome AS produto
FROM VENDA_ESPECIAL INNER JOIN VENDEDOR ON VENDA_ESPECIAL.id_vendedor = VENDEDOR.id_vendedor
     INNER JOIN FUNCIONARIO ON VENDEDOR.id_vendedor = FUNCIONARIO.id_funcionario
     INNER JOIN PESSOA ON FUNCIONARIO.id_funcionario = PESSOA.id_pessoa INNER JOIN PRODUTO_ESPECIAL ON VENDA_ESPECIAL.id_produto_especial = PRODUTO_ESPECIAL.id_produto_especial
     INNER JOIN PRODUTO ON PRODUTO_ESPECIAL.id_produto_especial = PRODUTO.codigo
     ORDER BY PESSOA.id_pessoa ASC, Codigo_Produto ASC;

SELECT * FROM VENDA_ESPECIAL ORDER BY id_vendedor ASC, id_produto_especial ASC;
SELECT * FROM VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL;

------------------------------------------------------------SELECTS COMPRA_ESPECIAL-------------------------------------------------------

------------------------------------------------------------29. CREATE VIEW---------------------------------------------------------------
CREATE VIEW VENDEDOR_ESPECIAL_CLIENTE_COMPRA_ESPECIAL AS
SELECT  VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL.codigo_vendedor, VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL.vendedor,
        PESSOA.id_pessoa AS codigo_cliente, PESSOA.nome AS cliente,
        VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL.codigo_produto, VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL.produto,
        COMPRA_ESPECIAL.data_hora AS hora_compra
FROM COMPRA_ESPECIAL INNER JOIN VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL ON VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL.Codigo_Vendedor = COMPRA_ESPECIAL.id_vendedor
     AND VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL.Codigo_Produto = COMPRA_ESPECIAL.id_produto_especial
     INNER JOIN PESSOA ON COMPRA_ESPECIAL.id_cliente = PESSOA.id_pessoa
ORDER BY VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL.codigo_vendedor ASC, codigo_cliente ASC, VENDEDOR_ESPECIAL_PRODUTO_ESPECIAL.codigo_produto ASC;

SELECT * FROM COMPRA_ESPECIAL ORDER BY id_vendedor ASC, id_produto_especial ASC, id_cliente ASC;
SELECT * FROM VENDEDOR_ESPECIAL_CLIENTE_COMPRA_ESPECIAL;

------------------------------------------------------------SELECTS COMPRA----------------------------------------------------------------

------------------------------------------------------------29. CREATE VIEW---------------------------------------------------------------
CREATE VIEW VENDEDOR_CLIENTE_COMPRA AS
SELECT COMPRA.id_vendedor, PESSOA.nome AS nome_vendedor,
       COMPRA.codigo_produto, PRODUTO.nome AS nome_produto,
       COMPRA.id_cliente, TABELA.nome AS nome_cliente
FROM COMPRA INNER JOIN VENDEDOR ON COMPRA.id_vendedor = VENDEDOR.id_vendedor
     INNER JOIN PESSOA ON VENDEDOR.id_vendedor = PESSOA.id_pessoa
     INNER JOIN PRODUTO ON COMPRA.codigo_produto = PRODUTO.codigo
     INNER JOIN (SELECT DISTINCT id_pessoa AS id_cliente, nome FROM PESSOA INNER JOIN COMPRA ON COMPRA.id_cliente = PESSOA.id_pessoa) TABELA ON TABELA.id_cliente = COMPRA.id_cliente
ORDER BY COMPRA.id_vendedor ASC, COMPRA.codigo_produto ASC, COMPRA.id_cliente ASC;

SELECT * FROM COMPRA ORDER BY codigo_produto ASC, id_cliente ASC, id_vendedor ASC;
SELECT * FROM VENDEDOR_CLIENTE_COMPRA;

------------------------------------------------------------30. GRANT / REVOKE------------------------------------------------------------
CREATE USER user_admin IDENTIFIED BY 12345678;
GRANT DROP ON PESSOA TO user_admin;
REVOKE DROP ON PESSOA FROM user_admin;
