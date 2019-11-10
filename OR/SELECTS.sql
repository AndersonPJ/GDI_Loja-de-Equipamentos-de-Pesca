------------------------------------------------------------SELECTS-----------------------------------------------------------------------

------------------------------------------------------------SELECTS CLIENTE---------------------------------------------------------------
------------------------------------------------------------19. SELECT DEREF--------------------------------------------------------------
SELECT  C.id_pessoa, C.nome, C.cpf, C.sexo, C.data_nascimento,
        DEREF(C.endereco).numero AS NUMERO, DEREF(C.endereco).rua AS RUA, DEREF(C.endereco).bairro AS BAIRRO,
        DEREF(C.endereco).cidade AS CIDADE, DEREF(C.endereco).estado AS ESTADO, C.email from tb_cliente C
        ORDER BY C.id_pessoa ASC;