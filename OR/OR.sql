------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_endereco AS OBJECT (
    id_endereco                   INTEGER
) FINAL;
/

------------------------------------------------------------12. ALTER TYPE----------------------------------------------------------------
ALTER TYPE tp_endereco
    ADD ATTRIBUTE (rua            VARCHAR2(50),
 	              numero          INTEGER,
 	              complemento     VARCHAR2(50),
 	              bairro          VARCHAR2(50),
 	              cidade          VARCHAR2(50),
 	              estado          VARCHAR2(50)) CASCADE;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
    telefone                      VARCHAR2(50)
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_setor AS OBJECT (
    setor                         VARCHAR2(50)
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_email AS OBJECT (
    email                         VARCHAR2(50)
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 10. NOT INSTANTIABLE TYPE/MEMBER------------------
CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (
    id_pessoa                     INTEGER,
    cpf                           VARCHAR2(14),
    nome                          VARCHAR2(50),
    sexo                          VARCHAR2(50),
    data_nascimento               DATE,
    endereco                      tp_endereco
) NOT FINAL NOT INSTANTIABLE;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 11. HERANÇA DE TIPOS (UNDER/NOT FINAL)------------
CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa (
    id_cliente                    INTEGER,
    email                         VARCHAR2(50)
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 11. HERANÇA DE TIPOS (UNDER/NOT FINAL)------------
CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
    id_funcionario                INTEGER,
    salario                       FLOAT,
    cargo                         VARCHAR2(50),
    ctps                          VARCHAR2(8)
) NOT FINAL NOT INSTANTIABLE;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 11. HERANÇA DE TIPOS (UNDER/NOT FINAL)------------
CREATE OR REPLACE TYPE tp_vendedor UNDER tp_funcionario (
    id_vendedor                   INTEGER,
    comissao                      FLOAT,
    id_supervisor                 INTEGER
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 11. HERANÇA DE TIPOS (UNDER/NOT FINAL)------------
CREATE OR REPLACE TYPE tp_estoquista UNDER tp_funcionario (
    id_estoquista                 INTEGER
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_produto AS OBJECT (
    codigo                        INTEGER,
    nome                          VARCHAR2(100),
    categoria                     VARCHAR2(50),
    fabricante                    VARCHAR2(50),
    preco_de_compra               FLOAT,
    preco_de_venda                FLOAT,
    id_estoquista                 INTEGER
) NOT FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 11. HERANÇA DE TIPOS (UNDER/NOT FINAL)------------
CREATE OR REPLACE TYPE tp_produto_especial UNDER tp_produto (
    id_produto_especial           INTEGER
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_fornecedor AS OBJECT (
    id_fornecedor                 INTEGER,
    nome_fantasia                 VARCHAR2(50),
    razao_social                  VARCHAR2(50),
    cnpj                          VARCHAR2(18),
    inscricao_estadual            VARCHAR2(10),
    id_endereco                   INTEGER
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_dependente AS OBJECT (
    id_dependente                 INTEGER,
    id_funcionario                INTEGER,
    cpf                           VARCHAR2(14),
    nome                          VARCHAR2(50),
    sexo                          VARCHAR2(50),			
    data_nascimento               DATE
) FINAL;
/



------------------------------------------------------------2. CREATE OR REPLACE TYPE BODY------------------------------------------------
------------------------------------------------------------3. MEMBER PROCEDURE-----------------------------------------------------------
------------------------------------------------------------4. MEMBER FUNCTION------------------------------------------------------------
------------------------------------------------------------5. ORDER MEMBER FUNCTION------------------------------------------------------
------------------------------------------------------------6. MAP MEMBER FUNCTION--------------------------------------------------------
------------------------------------------------------------7. CONSTRUCTOR FUNCTION-------------------------------------------------------
------------------------------------------------------------8. OVERRIDING MEMBER----------------------------------------------------------
------------------------------------------------------------9. FINAL MEMBER---------------------------------------------------------------
------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
------------------------------------------------------------14. WITH ROWID REFERENCES-----------------------------------------------------
------------------------------------------------------------15. REF-----------------------------------------------------------------------
------------------------------------------------------------16. SCOPE IS------------------------------------------------------------------
------------------------------------------------------------17. INSERT INTO---------------------------------------------------------------
------------------------------------------------------------18. SELECT REF----------------------------------------------------------------
------------------------------------------------------------19. SELECT DEREF--------------------------------------------------------------
------------------------------------------------------------20. VALUE---------------------------------------------------------------------
------------------------------------------------------------21. VARRAY--------------------------------------------------------------------
------------------------------------------------------------22. CONSULTA A VARRAY---------------------------------------------------------
------------------------------------------------------------23. NESTED TABLE--------------------------------------------------------------
------------------------------------------------------------24. CONSULTA A NESTED TABLE---------------------------------------------------
