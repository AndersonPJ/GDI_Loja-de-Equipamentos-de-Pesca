------------------------------------------------------------SELECTS CLIENTE---------------------------------------------------------------
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