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