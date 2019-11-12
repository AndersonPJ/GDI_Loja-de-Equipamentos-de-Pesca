CREATE SEQUENCE ENDERECO_ID_SEQ;
CREATE SEQUENCE CLIENTE_ID_SEQ;
CREATE SEQUENCE ESTOQUISTA_ID_SEQ;
CREATE SEQUENCE VENDEDOR_ID_SEQ;
CREATE SEQUENCE PRODUTO_ID_SEQ;
CREATE SEQUENCE PRODUTO_ESP_ID_SEQ;
CREATE SEQUENCE FORNECEDOR_ID_SEQ;
CREATE SEQUENCE DEPENDENTE_ID_SEQ;

------------------------------------------------------------INSERTS ENDERECO--------------------------------------------------------------
------------------------------------------------------------17. INSERT INTO---------------------------------------------------------------
INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, NULL, 'Rua Cassilandia', 'Várzea', 'Recife', 'Pernambuco', 'Casa'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, NULL, 'Av. Prof. Moraes Rego', 'Várzea', 'Recife', 'Pernambuco', NULL));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, NULL, 'Rua Paraguai', 'Sucupira', 'Jaboatão', 'Pernambuco', 'Casa'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, NULL, 'Rua Professor Arthur de Sá', 'Várzea', 'Recife', 'Pernambuco', 'Apartamento'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 387, 'Avenida Agamenon Magalhães', 'Espinheiro', 'Recife', 'Pernambuco', NULL));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 120, 'Rua Cassilandia', 'Várzea', 'Caruaru', 'Amazonas', 'Apartamento'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 70, 'Av. Prof. Moraes Rego', 'Várzea', 'Petrolina', 'Bahia', NULL));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 320, 'Rua Paraguai', 'Sucupira', 'Jaboatão', 'Paraíba', 'Casa'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 54, 'Rua Professor Arthur de Sá', 'Várzea', 'Curitiba', 'Pernambuco', 'Apartamento'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 4002, 'Rua Portela', 'Curado', 'São José dos Campos', 'São Paulo', 'Apartamento'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 344, 'Rua dos Santos', 'Várzea', 'Olinda', 'Rio de Janeiro', 'Apartamento'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 33, 'Av. Prof. Moraes Souza', 'Bem fica', 'Recife', 'Rio Grande do Norte', 'Apartamento'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 211, 'Rua Paraguai', 'Monte Verde', 'Jaboatão', 'Tocantins', NULL));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 2, 'Rua Arthur de Sá', 'Várzea', 'Garanhuns', 'Acre', 'Casa'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, NULL, 'Avenida Magalhães Silva', 'Espinheiro', 'Olinda', 'Acre', NULL));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, NULL, 'Rua Cassilandia', 'Zumbi', 'Caruaru', 'Amazonas', 'Apartamento'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, NULL, 'Av. Prof. Moraes Rego', 'Várzea', 'Petrolina', 'Bahia', NULL));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, NULL, 'Rua 25', 'Caetés 1', 'Abreu e Lima', 'Pernambuco', 'Casa'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 69, 'Rua Márcio Bonfin', 'Centro', 'Natal', 'Rio Grande do Norte', 'Apartamento'));

INSERT INTO tb_endereco
VALUES  (tp_endereco (ENDERECO_ID_SEQ.NEXTVAL, 34, 'Av. Prof. Ruy de Queiroz', 'Arapiraca', 'Bom Jesus', 'Piauí', 'Casa'));

------------------------------------------------------------INSERTS CLIENTE---------------------------------------------------------------
------------------------------------------------------------17. INSERT INTO & 18. SELECT REF----------------------------------------------
INSERT INTO tb_cliente
VALUES  (tp_cliente (CLIENTE_ID_SEQ.NEXTVAL, 'Matheus Amorim', '663.823.195-11', 'Masculino', TO_DATE ('11/11/1997', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 1),
        varray_telefone (tp_telefone ('9 0193-0039'), tp_telefone ('9 4559-6601')), 'matheus_amorim@gmail.com'));

INSERT INTO tb_cliente
VALUES  (tp_cliente (CLIENTE_ID_SEQ.NEXTVAL, 'Lucas Albuquerque', '710.133.825-08', 'Masculino', TO_DATE ('29/07/1995', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 3),
        varray_telefone (tp_telefone ('9 3455-8903'), tp_telefone ('9 5290-5084')), 'lucas_albuquerque@gmail.com'));

INSERT INTO tb_cliente
VALUES  (tp_cliente (CLIENTE_ID_SEQ.NEXTVAL, 'Pedro Veríssimo', '206.750.302-08', 'Masculino', TO_DATE ('16/10/1995', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 5),
        varray_telefone (tp_telefone ('9 2110-3341'), tp_telefone ('9 2390-5734')), 'pedro_veríssimo@gmail.com'));

INSERT INTO tb_cliente
VALUES  (tp_cliente (CLIENTE_ID_SEQ.NEXTVAL, 'Carlos Intel', '593.659.850-05', 'Masculino', TO_DATE ('01/11/1940', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 7),
        varray_telefone (tp_telefone ('9 9009-1102')), 'carlos_intel@gmail.com'));

INSERT INTO tb_cliente
VALUES  (tp_cliente (CLIENTE_ID_SEQ.NEXTVAL, 'Lucas Felipe', '164.328.910-19', 'Masculino', TO_DATE ('23/06/2005', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 9),
        varray_telefone (tp_telefone ('9 1102-2221')), 'lucas_felipe@gmail.com'));

INSERT INTO tb_cliente
VALUES  (tp_cliente (CLIENTE_ID_SEQ.NEXTVAL, 'Maria Souza', '912.269.860-48', 'Feminino', TO_DATE ('06/02/2000', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 11),
        varray_telefone (tp_telefone ('9 8733-4422')), 'maria_souza@gmail.com'));

INSERT INTO tb_cliente
VALUES  (tp_cliente (CLIENTE_ID_SEQ.NEXTVAL, 'Marta Souza', '690.839.360-74', 'Feminino', TO_DATE ('05/03/2002', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 13),
        varray_telefone (tp_telefone ('9 9022-0001')), 'marta_souza@gmail.com'));

INSERT INTO tb_cliente
VALUES  (tp_cliente (CLIENTE_ID_SEQ.NEXTVAL, 'Ferreira Silvana', '745.834.610-89', 'Feminino', TO_DATE ('20/12/1999', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 15),
        varray_telefone (tp_telefone ('9 1092-3301')), 'ferreira_silvana@gmail.com'));

INSERT INTO tb_cliente
VALUES  (tp_cliente (CLIENTE_ID_SEQ.NEXTVAL, 'Bruna Novas', '190.926.540-35', 'Feminino', TO_DATE ('13/10/2008', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 17),
        varray_telefone (tp_telefone ('9 9089-4481')), 'bruna_novas@gmail.com'));

INSERT INTO tb_cliente
VALUES  (tp_cliente (CLIENTE_ID_SEQ.NEXTVAL, 'Juliana Souza', '385.719.150-32', 'Feminino', TO_DATE ('01/08/1989', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 19),
        varray_telefone (tp_telefone ('9 3390-4482')), 'juliana_souza@gmail.com'));

------------------------------------------------------------INSERTS ESTOQUISTA------------------------------------------------------------
------------------------------------------------------------17. INSERT INTO & 18. SELECT REF----------------------------------------------
INSERT INTO tb_estoquista
VALUES  (tp_estoquista (ESTOQUISTA_ID_SEQ.NEXTVAL, 'Marcos Amd', '222.349.830-29', 'Masculino', TO_DATE ('08/01/1990', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 8),
        varray_telefone (tp_telefone ('9 3389-4419')), 1469.00, 'Estoquista', '19237483',
        tp_nt_setor (tp_setor ('Carretilha'), tp_setor ('Vara'), tp_setor ('Linha'))));

INSERT INTO tb_estoquista
VALUES  (tp_estoquista (ESTOQUISTA_ID_SEQ.NEXTVAL, 'Felipe Henrique', '403.349.820-65', 'Masculino', TO_DATE ('15/03/1999', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 10),
        varray_telefone (tp_telefone ('9 3222-3315')), 1469.00, 'Estoquista', '59374401',
        tp_nt_setor (tp_setor ('Iscas'), tp_setor ('Anzóis'))));

INSERT INTO tb_estoquista
VALUES  (tp_estoquista (ESTOQUISTA_ID_SEQ.NEXTVAL, 'Mariana Silva', '690.839.360-74', 'Feminino', TO_DATE ('30/03/2012', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 18),
        varray_telefone (tp_telefone ('9 3233-4469')), 1469.00, 'Estoquista', '91028337',
        tp_nt_setor (tp_setor ('Molinete'), tp_setor ('Acessórios'))));

INSERT INTO tb_estoquista
VALUES  (tp_estoquista (ESTOQUISTA_ID_SEQ.NEXTVAL, 'Ferreira Mariana', '745.834.610-89', 'Feminino', TO_DATE ('24/02/1997', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 20),
        varray_telefone (tp_telefone ('9 3444-5591')), 1469.00, 'Estoquista', '01923384',
        tp_nt_setor (tp_setor ('Camping'), tp_setor ('Kits'))));

------------------------------------------------------------INSERTS VENDEDOR--------------------------------------------------------------
------------------------------------------------------------17. INSERT INTO & 18. SELECT REF----------------------------------------------
INSERT INTO tb_vendedor
VALUES  (tp_vendedor (VENDEDOR_ID_SEQ.NEXTVAL, 'Anderson Silva', '704.149.146-19', 'Masculino', TO_DATE ('18/08/1996', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 2),
        varray_telefone (tp_telefone ('9 7681-7048')), 1918.00, 'Vendedor', '18274983', 230, VENDEDOR_ID_SEQ.CURRVAL));

INSERT INTO tb_vendedor
VALUES  (tp_vendedor (VENDEDOR_ID_SEQ.NEXTVAL, 'Gabriel Amancio', '368.251.117-16', 'Masculino', TO_DATE ('17/03/1997', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 4),
        varray_telefone (tp_telefone ('9 3637-7543')), 1918.00, 'Vendedor', '29847559', 215, VENDEDOR_ID_SEQ.CURRVAL - 1));

INSERT INTO tb_vendedor
VALUES  (tp_vendedor (VENDEDOR_ID_SEQ.NEXTVAL, 'Saulo Barros', '099.202.954-69', 'Masculino', TO_DATE ('18/06/1997', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 6),
        varray_telefone (tp_telefone ('9 7728-4491')), 1918.00, 'Vendedor', '38471102', 199, VENDEDOR_ID_SEQ.CURRVAL - 1));

INSERT INTO tb_vendedor
VALUES  (tp_vendedor (VENDEDOR_ID_SEQ.NEXTVAL, 'Silva Santos', '190.926.540-35', 'Feminino', TO_DATE ('01/07/2010', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 12),
        varray_telefone (tp_telefone ('9 4002-8912')), 1918.00, 'Vendedor', '98520666', 293, VENDEDOR_ID_SEQ.CURRVAL - 1));

INSERT INTO tb_vendedor
VALUES  (tp_vendedor (VENDEDOR_ID_SEQ.NEXTVAL, 'Juliana Ferreira', '385.719.150-32', 'Feminino', TO_DATE ('15/08/1980', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 14),
        varray_telefone (tp_telefone ('9 4345-4491')), 1918.00, 'Vendedor', '18052919', 252, VENDEDOR_ID_SEQ.CURRVAL - 1));

INSERT INTO tb_vendedor
VALUES  (tp_vendedor (VENDEDOR_ID_SEQ.NEXTVAL, 'Silveira Costa', '912.269.860-48', 'Feminino', TO_DATE ('23/03/1990', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 16),
        varray_telefone (tp_telefone ('9 2339-4491')), 1918.00, 'Vendedor', '73839344', 210, VENDEDOR_ID_SEQ.CURRVAL - 1));

UPDATE tb_vendedor
SET id_supervisor = VENDEDOR_ID_SEQ.CURRVAL
WHERE cpf = '704.149.146-19';

------------------------------------------------------------INSERTS PRODUTO---------------------------------------------------------------
------------------------------------------------------------17. INSERT INTO---------------------------------------------------------------
INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Carretilha Marine Sports Fierro 6000 Xwl Perfil Alto Manivela Esquerda', 'Carretilha', 'Marine Sports', 297.00, 371.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Carretilha')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Vara Lumis Infinity Green 601 (1,83m) 6-17lb Carretilha', 'Vara', 'Lumis Infinity', 235.00,  292.99,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Vara')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Vara Albatroz Fishing Colombia Carretilhas e Molinetes 20-25 lb 3 partes', 'Vara', 'Albatroz Fishing', 91.00, 112.52,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Vara')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Vara Albatroz Edge Telescópica – Ultra Light (molinete)', 'Vara', 'Albatroz Fishing', 85.00, 105.95,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Vara')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'LINHA DE PESCA TITANIUM 8X Moss Green 300m', 'Linha', 'TITANIUM', 117.00, 146.03,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Linha')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Linha Monofilamento STUM mono c/300m', 'Linha', 'STUM', 50.00, 62.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Linha')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'LINHA DE PESCA FLY LINE WF 9F Green', 'Linha', 'FLY LINE', 71.00, 88.73,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Linha')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'ISCA CULTIVA MIRA BAIT RM65F 18', 'Iscas', 'Cultiva', 64.00, 79.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Iscas')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'ISCA CULTIVA RIPN MINNOW RM 90-50 - 9CM - 7g', 'Iscas', 'Cultiva', 72.00, 89.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Iscas')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'ISCA MARINE SPORTS SNAKE 115 - 11,5CM - 22G - COR 22G', 'Iscas', 'Marine Sports', 26.00, 32.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Iscas')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'ISCA JIG KAKAREKO OCTOPUS 270G', 'Iscas', 'KAKAREKO', 64.00, 79.90,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Iscas')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'ISCA BIG ONES - MORTAL SHAD - 9,6CM', 'Iscas', 'MORTAL SHAD', 24.00, 29.51,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Iscas')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'ANZOL OWNER 11576 S-61 SINGLE HOOK', 'Anzóis', 'Owner', 20.00, 24.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Anzóis')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'ANZOL BIG ONES - BIG EYE TWISTER - 10GR', 'Anzóis', 'Big Eye Twister', 13.00, 16.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Anzóis')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Anzol Garateia Celta GA-34 nº2/0', 'Anzóis', 'Celta', 9.00, 11.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Anzóis')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'ANZOL EAGLE CLAW OCTOPUS CIRCLE L7228BP', 'Anzóis', 'Eagle Claw', 7.00, 8.90,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Anzóis')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Anzol Suporte Hook Simple Live Bait Albatroz Fishing', 'Anzóis', 'Albatroz Fishing', 3.00, 4.33,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Anzóis')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'MOLINETE DAIWA BG 20 – VELOC 4.8:1 – 3 ROL', 'Molinete', 'Daiwa', 320.00, 399.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Molinete')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'MOLINETE SHIMANO SIENNA 4000 RE - 2 Rol - Veloc 5.1:1', 'Molinete', 'Shimano', 232.00, 289.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Molinete')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Molinete Shimano Spirex 1000 RG', 'Molinete', 'Shimano', 320.00, 399.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Molinete')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Molinte Albatroz Fishing Octopus 9000', 'Molinete', 'Albatroz Fishing', 191.00, 238.14,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Molinete')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'GIRADOR SASAME SIMPLES 210-A N 1/0', 'Acessórios', 'Sasame', 12.00, 14.50,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Acessórios')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'ARGOLA OWNER HYPER WIRE - 5196', 'Acessórios', 'Owner', 29.00, 36.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Acessórios')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'ALICATE MULT FUNCAO CARBONO 17CM FP0105', 'Acessórios', 'Tacom', 32.00, 39.90,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Acessórios')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'BOIA APOIO FOGUETAO - 90g - 038', 'Acessórios', 'Apoio', 12.00, 14.90,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Acessórios')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Suporte Apoio Duplo p/Vara (AD404)', 'Acessórios', 'Apoio', 16.00, 19.50,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Acessórios')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'LANTERNA NAUTIKA EKO 313002', 'Camping', 'Nautika', 32.00, 39.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Camping')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Saco de Dormir Nautika Antartik', 'Camping', 'Nautika', 196.00, 245.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Camping')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Repelente Baruel Spray - 13 horas - c/ Icaridina - 100ml', 'Camping', 'Baruel', 32.00, 39.90,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Camping')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Combo Pack Rapala', 'Kits', 'Rapala', 264.00, 329.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Kits')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Kit Iscas Artificiais Robalo - 10 Iscas - Promoção', 'Kits', 'Robalo', 72.00, 89.90,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Kits')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Kit Iscas Artificiais Tucunaré - 6 Iscas - Promoçã', 'Kits', 'Tucunaré', 112.00, 139.90,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Kits')));

INSERT INTO tb_produto
VALUES  (tp_produto (PRODUTO_ID_SEQ.NEXTVAL, 'Kit kenzaki - 70Un. Anzol Chinu Black + Estojo', 'Kits', 'Kenzaki', 40.00, 49.90,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Kits')));

------------------------------------------------------------INSERTS PRODUTO_ESPECIAL------------------------------------------------------
------------------------------------------------------------17. INSERT INTO---------------------------------------------------------------
INSERT INTO tb_produto_especial
VALUES  (tp_produto_especial (PRODUTO_ESP_ID_SEQ.NEXTVAL, 'Carretilha Shimano Elétrica Force Master', 'Carretilha', 'Shimano', 5600.00, 6999.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Carretilha'), tp_nt_restricao (tp_restricao ('Apenas Cartão'))));

INSERT INTO tb_produto_especial
VALUES  (tp_produto_especial (PRODUTO_ESP_ID_SEQ.NEXTVAL, 'Carretilha Vizel 12000 8.1:1 Drag 8kg Saint Plus - Manivela Esquerda', 'Carretilha', 'Vizel', 440.00, 549.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Carretilha'), tp_nt_restricao (tp_restricao ('Não aceita cheque'))));

INSERT INTO tb_produto_especial
VALUES  (tp_produto_especial (PRODUTO_ESP_ID_SEQ.NEXTVAL, 'Vara Saint Challenge 4203-SP 100-200gr', 'Vara', 'Saint Challenge', 1359.00, 1698.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Vara'), tp_nt_restricao (tp_restricao ('Apenas Cartão'))));

INSERT INTO tb_produto_especial
VALUES  (tp_produto_especial (PRODUTO_ESP_ID_SEQ.NEXTVAL, 'MOLINETE OKUMA TRIO REX SURF TXSU-60', 'Molinete', 'Okuma', 584.00, 729.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Molinete'), tp_nt_restricao (tp_restricao ('Apenas Cartão'))));

INSERT INTO tb_produto_especial
VALUES  (tp_produto_especial (PRODUTO_ESP_ID_SEQ.NEXTVAL, 'BARRACA ECHO LIFE EASY 6P AUTOMATICA BA0014', 'Camping', 'Echo life', 392.00, 489.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Camping'), tp_nt_restricao (tp_restricao ('Não aceita cheque'))));

INSERT INTO tb_produto_especial
VALUES  (tp_produto_especial (PRODUTO_ESP_ID_SEQ.NEXTVAL, 'BOLSA AF17-0109 black mochila c/3 estojos', 'Camping', 'Albatroz Fishing', 470.00, 586.60,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Camping'), tp_nt_restricao (tp_restricao ('Não aceita cheque'))));

INSERT INTO tb_produto_especial
VALUES  (tp_produto_especial (PRODUTO_ESP_ID_SEQ.NEXTVAL, 'Conjunto Pesca de Praia e Costeira - Vara + Molinete', 'Kits', 'Tacom', 352.00, 439.00,
        (SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Kits'), tp_nt_restricao (tp_restricao ('Não aceita cheque'))));

------------------------------------------------------------INSERTS FORNECEDOR------------------------------------------------------------
------------------------------------------------------------17. INSERT INTO & 18. SELECT REF----------------------------------------------
INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Albatroz Fishing', 'Albatroz Fishing LTDA', '02.293.447/0002-94', '84.572.346',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 8), varray_telefone (tp_telefone ('9 3234-3394')),
        tp_nt_email (tp_email ('albatroz_fishing@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Shimano', 'Shimano LTDA', '03.485.285/0001-99', '55.284.895',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 8), varray_telefone (tp_telefone ('9 2029-3394')),
        tp_nt_email (tp_email ('shimano@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Apoio', 'Apoio LTDA', '10.847.482/0004-03', '02.339.493',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 8), varray_telefone (tp_telefone ('9 3230-4493')),
        tp_nt_email (tp_email ('apoio@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Cultiva', 'Cultiva LTDA', '04.384.274/0001-90', '29.394.958',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 8), varray_telefone (tp_telefone ('9 2904-2947')),
        tp_nt_email (tp_email ('cultiva@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Marine Sports', 'Marine Sports LTDA', '43.485.385/0002-08', '12.394.538',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 9), varray_telefone (tp_telefone ('9 2039-4956')),
        tp_nt_email (tp_email ('marine_sports@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Nautika', 'Nautika LTDA', '39.485.903/0001-01', '13.348.504',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 9), varray_telefone (tp_telefone ('9 3044-5582')),
        tp_nt_email (tp_email ('nautika@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Owner', 'Owner LTDA', '34.486.493/0002-39', '39.495.405',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 9), varray_telefone (tp_telefone ('9 4032-4958')),
        tp_nt_email (tp_email ('owner@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Tacom', 'Tacom LTDA', '26.485.385/0000-01', '20.395.485',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 9), varray_telefone (tp_telefone ('9 4052-4868')),
        tp_nt_email (tp_email ('tacom@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Baruel', 'Baruel LTDA', '00.293.483/0010-99', '83.940.001',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 10), varray_telefone (tp_telefone ('9 4955-4857')),
        tp_nt_email (tp_email ('baruel@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Big Eye Twister', 'Big Eye Twister LTDA', '10.294.503/0003-10', '11.203.491',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 10), varray_telefone (tp_telefone ('9 3048-6005')),
        tp_nt_email (tp_email ('big_eye_twister@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Celta', 'Celta LTDA', '90.293.483/0000-29', '28.495.350',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 10), varray_telefone (tp_telefone ('9 3349-9584')),
        tp_nt_email (tp_email ('celta@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Daiwa', 'Daiwa LTDA', '89.394.059/0102-39', '38.587.450',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 10), varray_telefone (tp_telefone ('9 4405-4955')),
        tp_nt_email (tp_email ('daiwa@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Eagle Claw', 'Eagle Claw LTDA', '09.283.485/1029-90', '03.498.593',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 11), varray_telefone (tp_telefone ('9 2003-2945')),
        tp_nt_email (tp_email ('eagle_claw@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Echo life', 'Echo life LTDA', '00.937.491/2930-09', '99.492.498',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 11), varray_telefone (tp_telefone ('9 2304-5843')),
        tp_nt_email (tp_email ('echo_life@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'FLY LINE', 'FLY LINE LTDA', '38.493.930/0090-03', '29.398.593',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 11), varray_telefone (tp_telefone ('9 2405-3840')),
        tp_nt_email (tp_email ('fly_line@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'KAKAREKO', 'KAKAREKO LTDA', '28.394.032/0092-00', '11.203.405',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 11), varray_telefone (tp_telefone ('9 2000-3841')),
        tp_nt_email (tp_email ('kakareko@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Kenzaki', 'Kenzaki LTDA', '89.394.492/0003-04', '30.498.590',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 12), varray_telefone (tp_telefone ('9 2639-4958')),
        tp_nt_email (tp_email ('kenzaki@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Lumis Infinity', 'Lumis Infinity LTDA', '99.493.204/0920-00', '39.492.300',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 12), varray_telefone (tp_telefone ('9 3990-4971')),
        tp_nt_email (tp_email ('lumis_infinity@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'MORTAL SHAD', 'MORTAL SHAD LTDA', '83.492.394/0999-34', '88.495.920',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 12), varray_telefone (tp_telefone ('9 4001-2948')),
        tp_nt_email (tp_email ('mortal_shad@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Okuma', 'Okuma LTDA', '50.395.385/0002-04', '87.485.603',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 12), varray_telefone (tp_telefone ('9 3894-2975')),
        tp_nt_email (tp_email ('okuma@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Rapala', 'Rapala LTDA', '78.488.405/8933-94', '77.394.592',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 19), varray_telefone (tp_telefone ('9 3583-8890')),
        tp_nt_email (tp_email ('rapala@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Robalo', 'Robalo LTDA', '56.482.394/5648-32', '36.475.483',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 19), varray_telefone (tp_telefone ('9 2784-3943')),
        tp_nt_email (tp_email ('robalo@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'STUM', 'STUM LTDA', '45.483.495/9830-56', '59.495.950',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 19), varray_telefone (tp_telefone ('9 2903-4985')),
        tp_nt_email (tp_email ('stum@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Saint Challenge', 'Saint Challenge LTDA', '39.496.395/0006-05', '95.495.385',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 19), varray_telefone (tp_telefone ('9 3109-3875')),
        tp_nt_email (tp_email ('saint_challenge@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Sasame', 'Sasame LTDA', '54.594.394/0950-12', '58.949.600',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 20), varray_telefone (tp_telefone ('9 3849-5945')),
        tp_nt_email (tp_email ('sasame@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'TITANIUM', 'TITANIUM LTDA', '39.495.949/0909-38', '67.583.495',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 20), varray_telefone (tp_telefone ('9 4109-2975')),
        tp_nt_email (tp_email ('titanium@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Tucunaré', 'Tucunaré LTDA', '38.482.395/9844-09', '65.489.493',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 20), varray_telefone (tp_telefone ('9 4985-4985')),
        tp_nt_email (tp_email ('tucunare@gmail.com'))));

INSERT INTO tb_fornecedor
VALUES  (tp_fornecedor (FORNECEDOR_ID_SEQ.NEXTVAL, 'Vizel', 'Vizel LTDA', '67.584.596/6857-98', '34.596.493',
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 20), varray_telefone (tp_telefone ('9 4895-4958')),
        tp_nt_email (tp_email ('vizel@gmail.com'))));

------------------------------------------------------------INSERTS DEPENDENTE------------------------------------------------------------
------------------------------------------------------------17. INSERT INTO---------------------------------------------------------------
INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 2, '372.384.492-36', 'Sabrina Silva', 'Feminino',
        TO_DATE ('01/01/2000', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 9844-5873'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 2, '010.293.485-32', 'Severina Silva', 'Feminino',
        TO_DATE ('28/02/1982', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 8375-3654'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 4, '293.448.394-23', 'Jorge Amancio', 'Masculino',
        TO_DATE ('21/12/1997', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 8375-9365'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 4, '112.394.382-44', 'Bianca Amancio', 'Feminino',
        TO_DATE ('13/06/1999', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 3846-2584'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 6, '198.090.293-04', 'Costa Barros', 'Masculino',
        TO_DATE ('01/11/1991', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 3874-5974'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 6, '100.021.284-78', 'Miguel Barros', 'Masculino',
        TO_DATE ('10/08/1994', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 9908-4956'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 8, '100.293.485-23', 'Marileide Amd', 'Femenino',
        TO_DATE ('14/01/1981', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 9846-3975'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 8, '304.583-374-75', 'Altenberg Amd', 'Masculino',
        TO_DATE ('19/03/1980', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 8946-5863'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 10, '738.482.385-86', 'Diana Henrique', 'Femenino',
        TO_DATE ('25/12/1972', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 7896-4965'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 10, '283.090.027-11', 'Leon Henrique', 'Masculino',
        TO_DATE ('29/03/1977', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 7836-5972'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 12, '302.384.582-34', 'Marcio Santos', 'Masculino',
        TO_DATE ('30/10/2002', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 8946-8434'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 12, '192.384.374-99', 'Fabiano Santos', 'Masculino',
        TO_DATE ('30/09/1989', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 8001-2861'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 14, '090.293.384-15', 'Anabelle Ferreira', 'Feminino',
        TO_DATE ('15/08/1988', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 9731-1231'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 14, '293.495.485-32', 'Sara Ferreira', 'Feminino',
        TO_DATE ('22/09/1990', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 3642-3976'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 16, '088.009.291-01', 'Michelangelo Costa', 'Masculino',
        TO_DATE ('02/12/1992', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 3332-3764'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 16, '829.372.273-92', 'Lais Costa', 'Feminino',
        TO_DATE ('14/08/1992', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 8038-4873'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 20, '708.390.203-99', 'Viviane Mariana', 'Feminino',
        TO_DATE ('21/02/1993', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 9047-4972'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 20, '982.000.394-64', 'Leticia Mariana', 'Feminino',
        TO_DATE ('09/04/1988', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 9312-3964'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 20, '894.374.698-19', 'Natalia Mariana', 'Feminino',
        TO_DATE ('11/05/1990', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 8936-4862'))));

INSERT INTO tb_dependente
VALUES  (tp_dependente (DEPENDENTE_ID_SEQ.NEXTVAL, 20, '009.284.573-24', 'Cecilia Mariana', 'Feminino',
        TO_DATE ('07/09/1991', 'DD/MM/YYYY'), varray_telefone (tp_telefone ('9 9437-4861'))));

------------------------------------------------------------INSERTS FORNECE---------------------------------------------------------------
------------------------------------------------------------17. INSERT INTO & 18. SELECT REF----------------------------------------------
INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 1),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 1),
        TO_TIMESTAMP('2012-04-23 06:03:23', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 2),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 2),
        TO_TIMESTAMP('2013-01-05 23:14:44', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 3),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 3),
        TO_TIMESTAMP('2016-08-23 17:44:38', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 4),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 4),
        TO_TIMESTAMP('2000-08-14 22:42:58', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 5),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 5),
        TO_TIMESTAMP('2004-08-18 12:15:41', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 6),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 6),
        TO_TIMESTAMP('2009-06-06 09:00:00', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 7),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 7),
        TO_TIMESTAMP('2018-11-16 18:50:49', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 8),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 8),
        TO_TIMESTAMP('2017-10-30 17:59:11', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 9),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 9),
        TO_TIMESTAMP('2011-02-28 14:13:12', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 10),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 10),
        TO_TIMESTAMP('2010-03-18 19:43:56', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 11),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 11),
        TO_TIMESTAMP('2004-04-29 20:09:18', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 12),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 12),
        TO_TIMESTAMP('2016-07-04 13:19:55', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 13),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 13),
        TO_TIMESTAMP('2006-05-12 15:49:43', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 14),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 14),
        TO_TIMESTAMP('2007-09-07 01:04:09', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 15),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 15),
        TO_TIMESTAMP('2008-12-15 04:28:58', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 16),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 16),
        TO_TIMESTAMP('2001-01-31 08:51:21', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 17),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 17),
        TO_TIMESTAMP('2000-02-19 23:19:34', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 18),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 18),
        TO_TIMESTAMP('2019-01-19 19:10:09', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 19),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 19),
        TO_TIMESTAMP('2011-09-30 06:18:30', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_fornece
VALUES  (tp_fornece ((SELECT REF (P) FROM tb_produto P WHERE P.codigo = 20),
        (SELECT REF(F) FROM tb_fornecedor F, tb_produto P WHERE F.nome_fantasia = P.fabricante AND P.codigo = 20),
        TO_TIMESTAMP('2014-06-06 18:12:04', 'YYYY-MM-DD HH24:MI:SS')));

------------------------------------------------------------INSERTS VENDA_ESPECIAL--------------------------------------------------------
------------------------------------------------------------17. INSERT INTO & 18. SELECT REF----------------------------------------------
INSERT INTO tb_venda_especial
VALUES  (tp_venda_especial ((SELECT REF (V) FROM tb_vendedor V WHERE V.id_pessoa = 1),
        (SELECT REF (PE) FROM tb_produto_especial PE WHERE PE.codigo = 1)));

INSERT INTO tb_venda_especial
VALUES  (tp_venda_especial ((SELECT REF (V) FROM tb_vendedor V WHERE V.id_pessoa = 2),
        (SELECT REF (PE) FROM tb_produto_especial PE WHERE PE.codigo = 2)));

INSERT INTO tb_venda_especial
VALUES  (tp_venda_especial ((SELECT REF (V) FROM tb_vendedor V WHERE V.id_pessoa = 3),
        (SELECT REF (PE) FROM tb_produto_especial PE WHERE PE.codigo = 3)));

INSERT INTO tb_venda_especial
VALUES  (tp_venda_especial ((SELECT REF (V) FROM tb_vendedor V WHERE V.id_pessoa = 4),
        (SELECT REF (PE) FROM tb_produto_especial PE WHERE PE.codigo = 4)));

INSERT INTO tb_venda_especial
VALUES  (tp_venda_especial ((SELECT REF (V) FROM tb_vendedor V WHERE V.id_pessoa = 5),
        (SELECT REF (PE) FROM tb_produto_especial PE WHERE PE.codigo = 5)));

INSERT INTO tb_venda_especial
VALUES  (tp_venda_especial ((SELECT REF (V) FROM tb_vendedor V WHERE V.id_pessoa = 6),
        (SELECT REF (PE) FROM tb_produto_especial PE WHERE PE.codigo = 6)));

INSERT INTO tb_venda_especial
VALUES  (tp_venda_especial ((SELECT REF (V) FROM tb_vendedor V WHERE V.id_pessoa = 1),
        (SELECT REF (PE) FROM tb_produto_especial PE WHERE PE.codigo = 7)));

------------------------------------------------------------INSERTS COMPRA_ESPECIAL-------------------------------------------------------
------------------------------------------------------------17. INSERT INTO & 18. SELECT REF----------------------------------------------
INSERT INTO tb_compra_especial
VALUES  (tp_compra_especial ((SELECT REF (VE) FROM tb_venda_especial VE WHERE DEREF (VE.produto_especial).codigo = 1),
        (SELECT REF (C) FROM tb_cliente C WHERE C.id_pessoa = 1), TO_TIMESTAMP('2010-04-15 15:00:00', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_compra_especial
VALUES  (tp_compra_especial ((SELECT REF (VE) FROM tb_venda_especial VE WHERE DEREF (VE.produto_especial).codigo = 2),
        (SELECT REF (C) FROM tb_cliente C WHERE C.id_pessoa = 3), TO_TIMESTAMP('2014-09-10 16:42:00', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_compra_especial
VALUES  (tp_compra_especial ((SELECT REF (VE) FROM tb_venda_especial VE WHERE DEREF (VE.produto_especial).codigo = 3),
        (SELECT REF (C) FROM tb_cliente C WHERE C.id_pessoa = 5), TO_TIMESTAMP('2001-12-25 23:59:59', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_compra_especial
VALUES  (tp_compra_especial ((SELECT REF (VE) FROM tb_venda_especial VE WHERE DEREF (VE.produto_especial).codigo = 4),
        (SELECT REF (C) FROM tb_cliente C WHERE C.id_pessoa = 7), TO_TIMESTAMP('2015-03-22 18:53:20', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_compra_especial
VALUES  (tp_compra_especial ((SELECT REF (VE) FROM tb_venda_especial VE WHERE DEREF (VE.produto_especial).codigo = 5),
        (SELECT REF (C) FROM tb_cliente C WHERE C.id_pessoa = 6), TO_TIMESTAMP('2005-11-07 19:41:09', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_compra_especial
VALUES  (tp_compra_especial ((SELECT REF (VE) FROM tb_venda_especial VE WHERE DEREF (VE.produto_especial).codigo = 6),
        (SELECT REF (C) FROM tb_cliente C WHERE C.id_pessoa = 4), TO_TIMESTAMP('2012-01-02 01:01:15', 'YYYY-MM-DD HH24:MI:SS')));

INSERT INTO tb_compra_especial
VALUES  (tp_compra_especial ((SELECT REF (VE) FROM tb_venda_especial VE WHERE DEREF (VE.produto_especial).codigo = 7),
        (SELECT REF (C) FROM tb_cliente C WHERE C.id_pessoa = 2), TO_TIMESTAMP('2018-09-30 00:13:07', 'YYYY-MM-DD HH24:MI:SS')));

------------------------------------------------------------INSERTS COMPRA----------------------------------------------------------------
------------------------------------------------------------17. INSERT INTO & 18. SELECT REF----------------------------------------------
