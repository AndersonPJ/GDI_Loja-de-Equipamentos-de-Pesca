------------------------------------------------------------19. SELECT DEREF--------------------------------------------------------------
SELECT  C.id_pessoa, C.nome, C.cpf, C.sexo, C.data_nascimento,
        DEREF(C.endereco).numero AS NUMERO, DEREF(C.endereco).rua AS RUA, DEREF(C.endereco).bairro AS BAIRRO,
        DEREF(C.endereco).cidade AS CIDADE, DEREF(C.endereco).estado AS ESTADO, C.email
        FROM tb_cliente C
        ORDER BY C.id_pessoa ASC;

------------------------------------------------------------20. VALUE---------------------------------------------------------------------
SELECT  P.preco_de_compra AS PRECO_1,
        P2.preco_de_compra AS PRECO_2,
        P.compara_preco_de_compra (VALUE(P2)) AS PRECO_COMPARACAO
        FROM tb_produto P, tb_produto P2
        WHERE P2.codigo = 11;

------------------------------------------------------------22. CONSULTA A VARRAY---------------------------------------------------------
SELECT V.id_pessoa, V.nome, T.telefone FROM tb_vendedor V, TABLE(V.telefone) T;

------------------------------------------------------------24. CONSULTA A NESTED TABLE---------------------------------------------------
SELECT E.id_pessoa, E.nome, S.setor FROM tb_estoquista E, TABLE(E.setor) S;

------------------------------------------------------------SELECTS-----------------------------------------------------------------------
SELECT  DEREF (F.produto).codigo AS CODIGO, DEREF (F.produto).nome AS NOME, DEREF (F.produto).preco_de_compra AS PRECO_COMPRA,
        DEREF (F.produto).preco_de_venda AS PRECO_VENDA, DEREF (F.fornecedor).id_fornecedor AS ID_FORNECEDOR,
        DEREF (F.fornecedor).nome_fantasia AS NOME_FANTASIA, DEREF (F.fornecedor).razao_social AS RAZAO_SOCIAL, F.data_hora
        FROM tb_fornece F;

SELECT  DEREF(VE.vendedor).id_pessoa AS ID, DEREF(VE.vendedor).nome AS NOME,
        DEREF(VE.vendedor).comissao AS COMISSAO, DEREF(VE.vendedor).id_supervisor AS ID_SUPERVIDOR,
        DEREF(VE.produto_especial).codigo AS CODIGO, DEREF(VE.produto_especial).nome AS NOME_PRODUTO,
        DEREF(VE.produto_especial).preco_de_compra AS PRECO_COMPRA, DEREF(VE.produto_especial).preco_de_venda AS PRECO_VENDA,
        DEREF(VE.produto_especial).id_estoquista AS ID_ESTOQUISTA
        FROM tb_venda_especial VE;

SELECT  DEREF (CE.venda_especial.vendedor).id_pessoa AS ID_VENDEDOR, DEREF (CE.venda_especial.vendedor).nome AS NOME_VENDEDOR,
        DEREF (CE.venda_especial.produto_especial).codigo AS ID_PRODUTO, DEREF (CE.venda_especial.produto_especial).nome AS NOME_PRODUTO,
        DEREF (CE.cliente).id_pessoa AS ID_CLIENTE, DEREF (CE.cliente).nome AS NOME_CLIENTE, CE.data_hora
        FROM tb_compra_especial CE;

SELECT  DEREF(C.produto).codigo AS CODIGO, DEREF(C.produto).nome AS NOME_PRODUTO,
        DEREF(C.cliente).id_pessoa AS ID_CLIENTE, DEREF(C.cliente).nome AS NOME_CLIENTE,
        DEREF(C.vendedor).id_pessoa AS ID_VENDEDOR, DEREF(C.vendedor).nome AS NOME_VENDEDOR
        FROM tb_compra C;
