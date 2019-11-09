------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_cliente OF tp_cliente (
    id_pessoa                     PRIMARY KEY
);
/

------------------------------------------------------------23. NESTED TABLE--------------------------------------------------------------
CREATE TABLE tb_estoquista OF tp_estoquista (
    id_pessoa                     PRIMARY KEY
) NESTED TABLE setor STORE AS nt_setor;
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_vendedor OF tp_vendedor (
    id_pessoa                     PRIMARY KEY,
    id_supervisor                 REFERENCES tb_vendedor (id_pessoa)
);
/