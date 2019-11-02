------------------------------------------------------------4. CREATE SEQUENCE------------------------------------------------------------
CREATE SEQUENCE END_ID_SEQ;

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE ENDERECO (
  id_endereco             NUMBER,
  CONSTRAINT pk_endereco  PRIMARY KEY (id_endereco)
);

------------------------------------------------------------2. ALTER TABLE----------------------------------------------------------------
ALTER TABLE ENDERECO 
ADD (
	rua                     varchar2(50),
 	numero                  number,
 	complemento             varchar2(50),
 	bairro                  varchar2(50),
 	cidade                  varchar2(50),
 	estado                  varchar2(50)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE PESSOA (  
  id_pessoa                     NUMBER GENERATED ALWAYS AS IDENTITY,
  cpf                           varchar2(14) NOT NULL,
  nome                          varchar2(50) NOT NULL,
  sexo                          varchar2(50),
  data_nascimento               date,
  id_endereco                   number,
  CONSTRAINT pk_pessoa          PRIMARY KEY (id_pessoa),
  CONSTRAINT fk_pessoa_endereco FOREIGN KEY (id_endereco) REFERENCES ENDERECO (id_endereco)
);

------------------------------------------------------------6. CREATE INDEX---------------------------------------------------------------
CREATE INDEX idx_pessoa_nome ON PESSOA (nome);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE CLIENTE (
  id_cliente                    number,
  email                         varchar2(50),
  CONSTRAINT pk_cliente         PRIMARY KEY (id_cliente),
  CONSTRAINT fk_cliente_pessoa  FOREIGN KEY (id_cliente) REFERENCES PESSOA (id_pessoa)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE FUNCIONARIO (
  id_funcionario                      number,
  salario                             number NOT NULL,
  cargo                               varchar2(50),
  ctps                                varchar2(8) NOT NULL,
  CONSTRAINT pk_funcionario           PRIMARY KEY (id_funcionario),
  CONSTRAINT fk_funcionario_pessoa    FOREIGN KEY (id_funcionario) REFERENCES PESSOA (id_pessoa)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE TELEFONE_PESSOA (
  id_pessoa                               number,
  telefone_pessoa                         varchar2(50),
  CONSTRAINT pk_telefone_pessoa           PRIMARY KEY (id_pessoa, telefone_pessoa),
  CONSTRAINT fk_telefone_pessoa_pessoa    FOREIGN KEY (id_pessoa) REFERENCES PESSOA (id_pessoa)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE VENDEDOR (
  id_vendedor                         number,
  comissao                            number,
  id_supervisor                       number NOT NULL,
  CONSTRAINT pk_vendedor              PRIMARY KEY (id_vendedor),
  CONSTRAINT fk_vendedor_fucionario   FOREIGN KEY (id_vendedor) REFERENCES FUNCIONARIO (id_funcionario),
  CONSTRAINT fk_vendedor_vendedor     FOREIGN KEY (id_supervisor) REFERENCES VENDEDOR (id_vendedor)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE ESTOQUISTA (
  id_estoquista                           number,
  CONSTRAINT pk_estoquista                PRIMARY KEY (id_estoquista),
  CONSTRAINT fk_estoquista_funcionario    FOREIGN KEY (id_estoquista) REFERENCES FUNCIONARIO (id_funcionario)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE SETOR (
  id_estoquista                   number,
  setor                           varchar2(50) NOT NULL,
  CONSTRAINT pk_setor             PRIMARY KEY (id_estoquista, setor),
  CONSTRAINT fk_setor_estoquista  FOREIGN KEY (id_estoquista) REFERENCES ESTOQUISTA (id_estoquista)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE PRODUTO (
  codigo                              number,
  nome                                varchar2(100) NOT NULL,
  categoria                           varchar2(50),
  fabricante                          varchar2(50),
  preco_de_compra                     number NOT NULL,
  preco_de_venda                      number CHECK (preco_de_venda > 0) NOT NULL,
  id_estoquista                       number,
  CONSTRAINT pk_produto               PRIMARY KEY (codigo),
  CONSTRAINT fk_produto_estoquista    FOREIGN KEY (id_estoquista) REFERENCES ESTOQUISTA (id_estoquista)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE FORNECEDOR (
  id_fornecedor                       NUMBER GENERATED ALWAYS AS IDENTITY,
  nome_fantasia                       varchar2(50),
  razao_social                        varchar2(50),
  cnpj                                varchar2(18) NOT NULL,
  inscricao_estadual                  varchar2(10),
  id_endereco                         number,
  CONSTRAINT pk_fornecedor            PRIMARY KEY (id_fornecedor),
  CONSTRAINT fk_fornecedor_endereco   FOREIGN KEY (id_endereco) REFERENCES ENDERECO (id_endereco)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE EMAIL_FORNECEDOR (
  id_fornecedor                               number,
  email                                       varchar2(50),
  CONSTRAINT pk_email_fornecedor              PRIMARY KEY (id_fornecedor, email),
  CONSTRAINT fk_email_fornecedor_fornecedor   FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDOR (id_fornecedor)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE TELEFONE_FORNECEDOR (
  id_fornecedor                                   number,
  telefone                                        varchar2(50),
  CONSTRAINT pk_telefone_fornecedor               PRIMARY KEY (id_fornecedor, telefone),
  CONSTRAINT fk_telefone_fornecedor_fornecedor    FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDOR (id_fornecedor)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE DEPENDENTE (
	id_dependente                         NUMBER GENERATED ALWAYS AS IDENTITY,
  id_funcionario                        number,
  cpf                                   varchar2(14) NOT NULL,
  nome                                  varchar2(50) NOT NULL,
  sexo                                  varchar2(50),			
  data_nascimento                       date,
	CONSTRAINT pk_dependente              PRIMARY KEY (id_dependente, id_funcionario),
  CONSTRAINT fk_dependente_funcionario	FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO (id_funcionario)
);

------------------------------------------------------------6. CREATE INDEX---------------------------------------------------------------
CREATE INDEX idx_dependente_nome ON DEPENDENTE (nome);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE TELEFONE_DEPENDENTE (
	id_dependente																	number,
	id_funcionario																number,
  telefone_pessoa																varchar2(50),
  CONSTRAINT pk_telefone_dependente							PRIMARY KEY (id_dependente, id_funcionario, telefone_pessoa),
  CONSTRAINT fk_telefone_dependente_dependente 	FOREIGN KEY (id_dependente, id_funcionario) REFERENCES DEPENDENTE (id_dependente, id_funcionario)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE PRODUTO_ESPECIAL (
  id_produto_especial											number,
  CONSTRAINT pk_produto_especial          PRIMARY KEY (id_produto_especial),
  CONSTRAINT fk_produto_especial_produto	FOREIGN KEY (id_produto_especial) REFERENCES PRODUTO (codigo)
);
  
------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE RESTRICAO (
  id_produto_especial												number,
  restricao																	varchar2(50),
  CONSTRAINT pk_restricao 									PRIMARY KEY (id_produto_especial, restricao),
  CONSTRAINT fk_restricao_produto_especial 	FOREIGN KEY (id_produto_especial) REFERENCES PRODUTO_ESPECIAL (id_produto_especial)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE FORNECE (
  codigo_produto										number,
  id_fornecedor											number,
  data_hora													timestamp,
  CONSTRAINT fk_fornece_produto 		FOREIGN KEY (codigo_produto) REFERENCES PRODUTO (codigo),
  CONSTRAINT fk_fornece_fornecedor 	FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDOR (id_fornecedor)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE VENDA_ESPECIAL (
  id_vendedor																		number,
  id_produto_especial														number,
  CONSTRAINT pk_venda_especial                  PRIMARY KEY (id_vendedor, id_produto_especial),
  CONSTRAINT fk_venda_especial_vendedor 				FOREIGN KEY (id_vendedor) REFERENCES VENDEDOR (id_vendedor),
  CONSTRAINT fk_venda_especial_produto_especial FOREIGN KEY (id_produto_especial) REFERENCES PRODUTO_ESPECIAL (id_produto_especial)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE COMPRA_ESPECIAL (
  id_vendedor																		number,
  id_produto_especial														number,
  id_cliente																		number,
  data_hora																			timestamp,
  CONSTRAINT fk_compra_especial_venda_especial 	FOREIGN KEY (id_vendedor, id_produto_especial) REFERENCES VENDA_ESPECIAL (id_vendedor, id_produto_especial),
  CONSTRAINT fk_compra_especial_cliente 				FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente)
);

------------------------------------------------------------1. CREATE TABLE & 3. CLÁUSULA CONSTRAINT EM CREATE TABLE----------------------
CREATE TABLE COMPRA (
  codigo_produto                number,
  id_cliente                    number,
  id_vendedor                   number,
  data_hora                     timestamp,
  CONSTRAINT fk_compra_produto 	FOREIGN KEY (codigo_produto) REFERENCES PRODUTO (codigo),
  CONSTRAINT fk_compra_cliente 	FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id_cliente),
  CONSTRAINT fk_compra_vendedor FOREIGN KEY (id_vendedor) REFERENCES VENDEDOR (id_vendedor)
);