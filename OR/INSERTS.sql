CREATE SEQUENCE E_ID_SEQ;
CREATE SEQUENCE P_ID_SEQ;
CREATE SEQUENCE PR_ID_SEQ;

------------------------------------------------------------17. INSERT INTO---------------------------------------------------------------
------------------------------------------------------------INSERTS ENDERECO--------------------------------------------------------------
INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, NULL, 'Rua Cassilandia', 'Várzea', 'Recife', 'Pernambuco', 'Casa');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, NULL, 'Av. Prof. Moraes Rego', 'Várzea', 'Recife', 'Pernambuco', NULL);

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, NULL, 'Rua Paraguai', 'Sucupira', 'Jaboatão', 'Pernambuco', 'Casa');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, NULL, 'Rua Professor Arthur de Sá', 'Várzea', 'Recife', 'Pernambuco', 'Apartamento');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 387, 'Avenida Agamenon Magalhães', 'Espinheiro', 'Recife', 'Pernambuco', NULL);

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 120, 'Rua Cassilandia', 'Várzea', 'Caruaru', 'Amazonas', 'Apartamento');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 70, 'Av. Prof. Moraes Rego', 'Várzea', 'Petrolina', 'Bahia', NULL);

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 320, 'Rua Paraguai', 'Sucupira', 'Jaboatão', 'Paraíba', 'Casa');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 54, 'Rua Professor Arthur de Sá', 'Várzea', 'Curitiba', 'Pernambuco', 'Apartamento');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 4002, 'Rua Portela', 'Curado', 'São José dos Campos', 'São Paulo', 'Apartamento');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 344, 'Rua dos Santos', 'Várzea', 'Olinda', 'Rio de Janeiro', 'Apartamento');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 33, 'Av. Prof. Moraes Souza', 'Bem fica', 'Recife', 'Rio Grande do Norte', 'Apartamento');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 211, 'Rua Paraguai', 'Monte Verde', 'Jaboatão', 'Tocantins', NULL);

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 2, 'Rua Arthur de Sá', 'Várzea', 'Garanhuns', 'Acre', 'Casa');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, NULL, 'Avenida Magalhães Silva', 'Espinheiro', 'Olinda', 'Acre', NULL);

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, NULL, 'Rua Cassilandia', 'Zumbi', 'Caruaru', 'Amazonas', 'Apartamento');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, NULL, 'Av. Prof. Moraes Rego', 'Várzea', 'Petrolina', 'Bahia', NULL);

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, NULL, 'Rua 25', 'Caetés 1', 'Abreu e Lima', 'Pernambuco', 'Casa');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 69, 'Rua Márcio Bonfin', 'Centro', 'Natal', 'Rio Grande do Norte', 'Apartamento');

INSERT INTO tb_endereco
VALUES  (E_ID_SEQ.NEXTVAL, 34, 'Av. Prof. Ruy de Queiroz', 'Arapiraca', 'Bom Jesus', 'Piauí', 'Casa');

------------------------------------------------------------18. SELECT REF----------------------------------------------------------------
------------------------------------------------------------INSERTS CLIENTE---------------------------------------------------------------
INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Matheus Amorim', '663.823.195-11', 'Masculino', TO_DATE ('11/11/1997', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 1),
        varray_telefone (tp_telefone ('9 0193-0039'), tp_telefone ('9 4559-6601')), 'matheus_amorim@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Lucas Albuquerque', '710.133.825-08', 'Masculino', TO_DATE ('29/07/1995', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 3),
        varray_telefone (tp_telefone ('9 3455-8903'), tp_telefone ('9 5290-5084')), 'lucas_albuquerque@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Pedro Veríssimo', '206.750.302-08', 'Masculino', TO_DATE ('16/10/1995', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 5),
        varray_telefone (tp_telefone ('9 2110-3341'), tp_telefone ('9 2390-5734')), 'pedro_veríssimo@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Carlos Intel', '593.659.850-05', 'Masculino', TO_DATE ('01/11/1940', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 7),
        varray_telefone (tp_telefone ('9 9009-1102')), 'carlos_intel@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Lucas Felipe', '164.328.910-19', 'Masculino', TO_DATE ('23/06/2005', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 9),
        varray_telefone (tp_telefone ('9 1102-2221')), 'lucas_felipe@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Maria Souza', '912.269.860-48', 'Feminino', TO_DATE ('06/02/2000', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 11),
        varray_telefone (tp_telefone ('9 8733-4422')), 'maria_souza@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Marta Souza', '690.839.360-74', 'Feminino', TO_DATE ('05/03/2002', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 13),
        varray_telefone (tp_telefone ('9 9022-0001')), 'marta_souza@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Ferreira Silvana', '745.834.610-89', 'Feminino', TO_DATE ('20/12/1999', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 15),
        varray_telefone (tp_telefone ('9 1092-3301')), 'ferreira_silvana@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Bruna Novas', '190.926.540-35', 'Feminino', TO_DATE ('13/10/2008', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 17),
        varray_telefone (tp_telefone ('9 9089-4481')), 'bruna_novas@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Juliana Souza', '385.719.150-32', 'Feminino', TO_DATE ('01/08/1989', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 19),
        varray_telefone (tp_telefone ('9 3390-4482')), 'juliana_souza@gmail.com');

------------------------------------------------------------18. SELECT REF----------------------------------------------------------------
------------------------------------------------------------INSERTS ESTOQUISTA------------------------------------------------------------
INSERT INTO tb_estoquista
VALUES  (P_ID_SEQ.NEXTVAL, 'Marcos Amd', '222.349.830-29', 'Masculino', TO_DATE ('08/01/1990', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 8),
        varray_telefone (tp_telefone ('9 3389-4419')), 1469.00, 'Estoquista', '19237483',
        tp_nt_setor (tp_setor ('Carretilha'), tp_setor ('Vara'), tp_setor ('Linha')));

INSERT INTO tb_estoquista
VALUES  (P_ID_SEQ.NEXTVAL, 'Felipe Henrique', '403.349.820-65', 'Masculino', TO_DATE ('15/03/1999', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 10),
        varray_telefone (tp_telefone ('9 3222-3315')), 1469.00, 'Estoquista', '59374401',
        tp_nt_setor (tp_setor ('Iscas'), tp_setor ('Anzóis')));

INSERT INTO tb_estoquista
VALUES  (P_ID_SEQ.NEXTVAL, 'Mariana Silva', '690.839.360-74', 'Feminino', TO_DATE ('30/03/2012', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 18),
        varray_telefone (tp_telefone ('9 3233-4469')), 1469.00, 'Estoquista', '91028337',
        tp_nt_setor (tp_setor ('Molinete'), tp_setor ('Acessórios')));

INSERT INTO tb_estoquista
VALUES  (P_ID_SEQ.NEXTVAL, 'Ferreira Mariana', '745.834.610-89', 'Feminino', TO_DATE ('24/02/1997', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 20),
        varray_telefone (tp_telefone ('9 3444-5591')), 1469.00, 'Estoquista', '01923384',
        tp_nt_setor (tp_setor ('Camping'), tp_setor ('Kits')));

------------------------------------------------------------18. SELECT REF----------------------------------------------------------------
------------------------------------------------------------INSERTS VENDEDOR--------------------------------------------------------------

INSERT INTO tb_vendedor
VALUES  (P_ID_SEQ.NEXTVAL, 'Anderson Silva', '704.149.146-19', 'Masculino', TO_DATE ('18/08/1996', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 2),
        varray_telefone (tp_telefone ('9 7681-7048')), 1918.00, 'Vendedor', '18274983', 230, P_ID_SEQ.CURRVAL);

INSERT INTO tb_vendedor
VALUES  (P_ID_SEQ.NEXTVAL, 'Gabriel Amancio', '368.251.117-16', 'Masculino', TO_DATE ('17/03/1997', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 4),
        varray_telefone (tp_telefone ('9 3637-7543')), 1918.00, 'Vendedor', '29847559', 215, P_ID_SEQ.CURRVAL - 1);

INSERT INTO tb_vendedor
VALUES  (P_ID_SEQ.NEXTVAL, 'Saulo Barros', '099.202.954-69', 'Masculino', TO_DATE ('18/06/1997', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 6),
        varray_telefone (tp_telefone ('9 7728-4491')), 1918.00, 'Vendedor', '38471102', 199, P_ID_SEQ.CURRVAL - 1);

INSERT INTO tb_vendedor
VALUES  (P_ID_SEQ.NEXTVAL, 'Silva Santos', '190.926.540-35', 'Feminino', TO_DATE ('01/07/2010', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 12),
        varray_telefone (tp_telefone ('9 4002-8912')), 1918.00, 'Vendedor', '98520666', 293, P_ID_SEQ.CURRVAL - 1);

INSERT INTO tb_vendedor
VALUES  (P_ID_SEQ.NEXTVAL, 'Juliana Ferreira', '385.719.150-32', 'Feminino', TO_DATE ('15/08/1980', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 14),
        varray_telefone (tp_telefone ('9 4345-4491')), 1918.00, 'Vendedor', '18052919', 252, P_ID_SEQ.CURRVAL - 1);

INSERT INTO tb_vendedor
VALUES  (P_ID_SEQ.NEXTVAL, 'Silveira Costa', '912.269.860-48', 'Feminino', TO_DATE ('23/03/1990', 'DD/MM/YYYY'),
        (SELECT REF (E) FROM tb_endereco E WHERE E.id_endereco = 16),
        varray_telefone (tp_telefone ('9 2339-4491')), 1918.00, 'Vendedor', '73839344', 210, P_ID_SEQ.CURRVAL - 1);

UPDATE tb_vendedor
SET id_supervisor = P_ID_SEQ.CURRVAL
WHERE cpf = '704.149.146-19';

------------------------------------------------------------INSERTS PRODUTO---------------------------------------------------------------
INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Carretilha Shimano Elétrica Force Master', 'Carretilha', 'Shimano', 5600.00, 6999.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Carretilha'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Carretilha Marine Sports Fierro 6000 Xwl Perfil Alto Manivela Esquerda', 'Carretilha', 'Marine Sports', 297.00, 371.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Carretilha'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Carretilha Vizel 12000 8.1:1 Drag 8kg Saint Plus - Manivela Esquerda', 'Carretilha', 'Vizel', 440.00, 549.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Carretilha'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Vara Lumis Infinity Green 601 (1,83m) 6-17lb Carretilha', 'Vara', 'Lumis Infinity', 235.00,  292.99,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Vara'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Vara Albatroz Fishing Colombia Carretilhas e Molinetes 20-25 lb 3 partes', 'Vara', 'Albatroz Fishing', 91.00, 112.52,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Vara'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Vara Albatroz Edge Telescópica – Ultra Light (molinete)', 'Vara', 'Albatroz Fishing', 85.00, 105.95,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Vara'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Vara Saint Challenge 4203-SP 100-200gr', 'Vara', 'Saint Challenge', 1359.00, 1698.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Vara'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'LINHA DE PESCA TITANIUM 8X Moss Green 300m', 'Linha', 'TITANIUM', 117.00, 146.03,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Linha'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Linha Monofilamento STUM mono c/300m', 'Linha', 'STUM', 50.00, 62.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Linha'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'LINHA DE PESCA FLY LINE WF 9F Green', 'Linha', 'FLY LINE', 71.00, 88.73,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Linha'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'ISCA CULTIVA MIRA BAIT RM65F 18', 'Iscas', 'Cultiva', 64.00, 79.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Iscas'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'ISCA CULTIVA RIPN MINNOW RM 90-50 - 9CM - 7g', 'Iscas', 'Cultiva', 72.00, 89.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Iscas'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'ISCA MARINE SPORTS SNAKE 115 - 11,5CM - 22G - COR 22G', 'Iscas', 'Marine Sports', 26.00, 32.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Iscas'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'ISCA JIG KAKAREKO OCTOPUS 270G', 'Iscas', 'KAKAREKO', 64.00, 79.90,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Iscas'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'ISCA BIG ONES - MORTAL SHAD - 9,6CM', 'Iscas', 'MORTAL SHAD', 24.00, 29.51,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Iscas'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'ANZOL OWNER 11576 S-61 SINGLE HOOK', 'Anzóis', 'Owner', 20.00, 24.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Anzóis'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'ANZOL BIG ONES - BIG EYE TWISTER - 10GR', 'Anzóis', 'Big Eye Twister', 13.00, 16.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Anzóis'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Anzol Garateia Celta GA-34 nº2/0', 'Anzóis', 'Celta', 9.00, 11.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Anzóis'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'ANZOL EAGLE CLAW OCTOPUS CIRCLE L7228BP', 'Anzóis', 'Eagle Claw', 7.00, 8.90,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Anzóis'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Anzol Suporte Hook Simple Live Bait Albatroz Fishing', 'Anzóis', 'Albatroz Fishing', 3.00, 4.33,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Anzóis'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'MOLINETE DAIWA BG 20 – VELOC 4.8:1 – 3 ROL', 'Molinete', 'Daiwa', 320.00, 399.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Molinete'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'MOLINETE SHIMANO SIENNA 4000 RE - 2 Rol - Veloc 5.1:1', 'Molinete', 'Shimano', 232.00, 289.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Molinete'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'MOLINETE OKUMA TRIO REX SURF TXSU-60', 'Molinete', 'Okuma', 584.00, 729.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Molinete'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Molinete Shimano Spirex 1000 RG', 'Molinete', 'Shimano', 320.00, 399.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Molinete'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Molinte Albatroz Fishing Octopus 9000', 'Molinete', 'Albatroz Fishing', 191.00, 238.14,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Molinete'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'GIRADOR SASAME SIMPLES 210-A N 1/0', 'Acessórios', 'Sasame', 12.00, 14.50,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Acessórios'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'ARGOLA OWNER HYPER WIRE - 5196', 'Acessórios', 'Owner', 29.00, 36.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Acessórios'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'ALICATE MULT FUNCAO CARBONO 17CM FP0105', 'Acessórios', 'Tacom', 32.00, 39.90,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Acessórios'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'BOIA APOIO FOGUETAO - 90g - 038', 'Acessórios', 'Apoio', 12.00, 14.90,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Acessórios'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Suporte Apoio Duplo p/Vara (AD404)', 'Acessórios', 'Apoio', 16.00, 19.50,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Acessórios'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'BARRACA ECHO LIFE EASY 6P AUTOMATICA BA0014', 'Camping', 'Echo life', 392.00, 489.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Camping'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'BOLSA AF17-0109 black mochila c/3 estojos', 'Camping', 'Albatroz Fishing', 470.00, 586.60,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Camping'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'LANTERNA NAUTIKA EKO 313002', 'Camping', 'Nautika', 32.00, 39.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Camping'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Saco de Dormir Nautika Antartik', 'Camping', 'Nautika', 196.00, 245.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Camping'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Repelente Baruel Spray - 13 horas - c/ Icaridina - 100ml', 'Camping', 'Baruel', 32.00, 39.90,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Camping'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Conjunto Pesca de Praia e Costeira - Vara + Molinete', 'Kits', 'Tacom', 352.00, 439.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Kits'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Combo Pack Rapala', 'Kits', 'Rapala', 264.00, 329.00,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Kits'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Kit Iscas Artificiais Robalo - 10 Iscas - Promoção', 'Kits', 'Robalo', 72.00, 89.90,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Kits'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Kit Iscas Artificiais Tucunaré - 6 Iscas - Promoçã', 'Kits', 'Tucunaré', 112.00, 139.90,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Kits'));

INSERT INTO tb_produto
VALUES  (PR_ID_SEQ.NEXTVAL, 'Kit kenzaki - 70Un. Anzol Chinu Black + Estojo', 'Kits', 'Kenzaki', 40.00, 49.90,
(SELECT id_pessoa FROM tb_estoquista te, TABLE (te.setor) T WHERE T.setor = 'Kits'));
