------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_endereco OF tp_endereco (
    id_endereco                 PRIMARY KEY
);
/

------------------------------------------------------------13. CREATE TABLE OF & 14. WITH ROWID REFERENCES-------------------------------
CREATE TABLE tb_cliente OF tp_cliente (
    id_pessoa                   PRIMARY KEY,
    endereco                    WITH ROWID REFERENCES tb_endereco
);
/

------------------------------------------------------------13. CREATE TABLE OF & 16. SCOPE IS & 23. NESTED TABLE-------------------------
CREATE TABLE tb_estoquista OF tp_estoquista (
    id_pessoa                   PRIMARY KEY,
    endereco                    SCOPE IS tb_endereco
) NESTED TABLE setor STORE AS nt_setor;
/

------------------------------------------------------------13. CREATE TABLE OF & 16. SCOPE IS--------------------------------------------
CREATE TABLE tb_vendedor OF tp_vendedor (
    id_pessoa                   PRIMARY KEY,
    endereco                    SCOPE IS tb_endereco,
    id_supervisor               REFERENCES tb_vendedor (id_pessoa)
);
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_produto OF tp_produto (
    codigo                      PRIMARY KEY,
    id_estoquista               REFERENCES tb_estoquista (id_pessoa)
);
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_produto_especial OF tp_produto_especial (
    codigo                      PRIMARY KEY,
    id_estoquista               REFERENCES tb_estoquista (id_pessoa)
) NESTED TABLE restricao STORE AS nt_restricao;
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_fornecedor OF tp_fornecedor (
    id_fornecedor               PRIMARY KEY,
    endereco                    WITH ROWID REFERENCES tb_endereco
) NESTED TABLE email STORE AS nt_email;
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_dependente OF tp_dependente (
    PRIMARY KEY                 (id_dependente, id_funcionario)
);
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_fornece OF tp_fornece (
    produto                     WITH ROWID REFERENCES tb_produto,
    fornecedor				    WITH ROWID REFERENCES tb_fornecedor
);
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_venda_especial OF tp_venda_especial (
    vendedor					WITH ROWID REFERENCES tb_vendedor,
    produto_especial		    WITH ROWID REFERENCES tb_produto_especial
);
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_compra_especial OF tp_compra_especial (
    venda_especial				WITH ROWID REFERENCES tb_venda_especial,
    cliente					    WITH ROWID REFERENCES tb_cliente
);
/

------------------------------------------------------------13. CREATE TABLE OF-----------------------------------------------------------
CREATE TABLE tb_compra OF tp_compra (
    produto                     WITH ROWID REFERENCES tb_produto,
    cliente					    WITH ROWID REFERENCES tb_cliente,
    vendedor					WITH ROWID REFERENCES tb_vendedor
);
/
