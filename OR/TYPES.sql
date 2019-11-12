------------------------------------------------------------1. CREATE OR REPLACE TYPE & 6. MAP MEMBER FUNCTION----------------------------
CREATE OR REPLACE TYPE tp_endereco FORCE AS OBJECT (
    id_endereco                   INTEGER,
    numero                        INTEGER,
    rua                           VARCHAR2(50),
    bairro                        VARCHAR2(50),
    cidade                        VARCHAR2(50),
    estado                        VARCHAR2(50),
    MAP MEMBER FUNCTION get_endereco RETURN VARCHAR2
) FINAL;
/

------------------------------------------------------------12. ALTER TYPE----------------------------------------------------------------
ALTER TYPE tp_endereco
    ADD ATTRIBUTE (complemento    VARCHAR2(50)
) CASCADE;
/

------------------------------------------------------------2. CREATE OR REPLACE TYPE BODY------------------------------------------------
CREATE OR REPLACE TYPE BODY tp_endereco AS
    MAP MEMBER FUNCTION get_endereco RETURN VARCHAR2
        IS
        BEGIN
            return  ('ID: ' || SELF.id_endereco ||
                    ', NUMERO: ' || SELF.numero ||
                    ', RUA: ' || SELF.rua ||
                    ', COMPLEMENTO: ' || complemento ||
                    ', BAIRRO: ' || bairro ||
                    ', CIDADE: ' || cidade ||
                    ', ESTADO: ' || estado);
        END;
END;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_telefone FORCE AS OBJECT (
    telefone                      VARCHAR2(50)
) FINAL;
/

------------------------------------------------------------21. VARRAY--------------------------------------------------------------------
CREATE OR REPLACE TYPE varray_telefone FORCE AS VARRAY (3) OF tp_telefone; 
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_setor FORCE AS OBJECT (
    setor                         VARCHAR2(50)
) FINAL;
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE OR REPLACE TYPE tp_nt_setor FORCE AS TABLE OF tp_setor;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_restricao FORCE AS OBJECT (
    restricao                     VARCHAR2(50)
) FINAL;
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE OR REPLACE TYPE tp_nt_restricao FORCE AS TABLE OF tp_restricao;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_email FORCE AS OBJECT (
    email                         VARCHAR2(50)
) FINAL;
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE OR REPLACE TYPE  tp_nt_email FORCE AS TABLE OF tp_email;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 4. MEMBER FUNCTION & 9. FINAL MEMBER--------------
------------------------------------------------------------10. NOT INSTANTIABLE TYPE/MEMBER & 15. REF------------------------------------
CREATE OR REPLACE TYPE tp_pessoa FORCE AS OBJECT (
    id_pessoa                     INTEGER,
    nome                          VARCHAR2(50),
    cpf                           VARCHAR2(14),
    sexo                          VARCHAR2(50),
    data_nascimento               DATE,
    endereco                      REF tp_endereco,
    telefone                      varray_telefone,

    --CONSTRUCTOR FUNCTION tp_pessoa
    --    (f_id_pessoa NUMBER, f_nome VARCHAR2, f_cpf VARCHAR2, f_sexo VARCHAR2, f_data_nascimento DATE, f_endereco tp_endereco, f_telefone varray_telefone)
    --    RETURN SELF AS RESULT,
    
    FINAL MEMBER FUNCTION get_nome RETURN VARCHAR2
    
    --MEMBER PROCEDURE set_telefone (p_telefone varray_telefone)
) NOT FINAL NOT INSTANTIABLE;
/

------------------------------------------------------------2. CREATE OR REPLACE TYPE BODY------------------------------------------------
CREATE OR REPLACE TYPE BODY tp_pessoa AS
    --CONSTRUCTOR FUNCTION tp_pessoa
    --    (f_id_pessoa NUMBER, f_nome VARCHAR2, f_cpf VARCHAR2, f_sexo VARCHAR2, f_data_nascimento DATE, f_endereco tp_endereco, f_telefone varray_telefone)
    --    RETURN SELF AS RESULT IS
    --    BEGIN
    --        SELF.id_pessoa          := f_id_pessoa;
    --        SELF.nome               := f_nome;
    --        SELF.cpf                := f_cpf;
    --        SELF.sexo               := f_sexo;
    --        SELF.data_nascimento    := f_data_nascimento;
    --        SELF.endereco           := f_endereco;
    --        SELF.telefone           := f_telefone;
    --    END;
    
    FINAL MEMBER FUNCTION get_nome RETURN VARCHAR2
        IS
        BEGIN
            RETURN nome;
        END;

    --MEMBER PROCEDURE set_telefone (f_telefone varray_telefone)
    --    IS
    --    BEGIN
    --        SELF.telefone := f_telefone;
    --    END;
END;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 11. HERANÇA DE TIPOS (UNDER/NOT FINAL)------------
CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa (
    email                         VARCHAR2(50)
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 4. MEMBER FUNCTION--------------------------------
------------------------------------------------------------11. HERANÇA DE TIPOS (UNDER/NOT FINAL)----------------------------------------
CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
    salario                       FLOAT,
    cargo                         VARCHAR2(50),
    ctps                          VARCHAR2(8),
    MEMBER FUNCTION get_salario_total RETURN FLOAT
) NOT FINAL NOT INSTANTIABLE;
/

------------------------------------------------------------2. CREATE OR REPLACE TYPE BODY------------------------------------------------
CREATE OR REPLACE TYPE BODY tp_funcionario AS
    MEMBER FUNCTION get_salario_total RETURN FLOAT
        IS
        BEGIN
            RETURN SELF.salario;
        END;
END;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 11. HERANÇA DE TIPOS (UNDER/NOT FINAL)------------
CREATE OR REPLACE TYPE tp_estoquista UNDER tp_funcionario (
    setor                         tp_nt_setor
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 4. MEMBER FUNCTION--------------------------------
------------------------------------------------------------8. OVERRIDING MEMBER & 11. HERANÇA DE TIPOS (UNDER/NOT FINAL)-----------------
CREATE OR REPLACE TYPE tp_vendedor UNDER tp_funcionario (
    comissao                      FLOAT,
    id_supervisor                 INTEGER,
    OVERRIDING MEMBER FUNCTION get_salario_total RETURN FLOAT
) FINAL;
/

------------------------------------------------------------2. CREATE OR REPLACE TYPE BODY------------------------------------------------
CREATE OR REPLACE TYPE BODY tp_vendedor AS
    OVERRIDING MEMBER FUNCTION get_salario_total RETURN FLOAT 
        IS
        BEGIN
            RETURN SELF.salario + SELF.comissao;
        END;
END;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 5. ORDER MEMBER FUNCTION--------------------------
CREATE OR REPLACE TYPE tp_produto FORCE AS OBJECT (
    codigo                        INTEGER,
    nome                          VARCHAR2(100),
    categoria                     VARCHAR2(50),
    fabricante                    VARCHAR2(50),
    preco_de_compra               FLOAT,
    preco_de_venda                FLOAT,
    id_estoquista                 INTEGER,
    ORDER MEMBER FUNCTION compara_preco_de_compra (x tp_produto) RETURN FLOAT
) NOT FINAL;
/

------------------------------------------------------------2. CREATE OR REPLACE TYPE BODY------------------------------------------------
CREATE OR REPLACE TYPE BODY tp_produto AS
    ORDER MEMBER FUNCTION compara_preco_de_compra (x tp_produto) RETURN FLOAT
        IS
        BEGIN
            RETURN SELF.preco_de_compra - x.preco_de_compra;
        END;
END;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 11. HERANÇA DE TIPOS (UNDER/NOT FINAL)------------
CREATE OR REPLACE TYPE tp_produto_especial UNDER tp_produto (
    restricao                     tp_nt_restricao
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE & 15. REF-------------------------------------------
CREATE OR REPLACE TYPE tp_fornecedor FORCE AS OBJECT (
    id_fornecedor                 INTEGER,
    nome_fantasia                 VARCHAR2(50),
    razao_social                  VARCHAR2(50),
    cnpj                          VARCHAR2(18),
    inscricao_estadual            VARCHAR2(10),
    endereco                      REF tp_endereco,
    telefone                      varray_telefone,
    email                         tp_nt_email
) FINAL;
/

------------------------------------------------------------1. CREATE OR REPLACE TYPE-----------------------------------------------------
CREATE OR REPLACE TYPE tp_dependente FORCE AS OBJECT (
    id_dependente                 INTEGER,
    id_funcionario                INTEGER,
    cpf                           VARCHAR2(14),
    nome                          VARCHAR2(50),
    sexo                          VARCHAR2(50),			
    data_nascimento               DATE,
    telefone                      varray_telefone
) FINAL;
/

------------------------------------------------------------3. MEMBER PROCEDURE-----------------------------------------------------------
------------------------------------------------------------7. CONSTRUCTOR FUNCTION-------------------------------------------------------
