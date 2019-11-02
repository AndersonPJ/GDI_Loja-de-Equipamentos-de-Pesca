------------------------------------------------------------7. INSERT INTO----------------------------------------------------------------

------------------------------------------------------------INSERTS ENDERECO--------------------------------------------------------------
INSERT INTO 
  ENDERECO (id_endereco, rua, complemento, bairro, cidade, estado)
VALUES 
  (END_ID_SEQ.NEXTVAL, 'Rua Cassilandia', 'Casa', 'Várzea', 'Recife', 'Pernambuco');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Av. Prof. Moraes Rego', 'Várzea', 'Recife', 'Pernambuco');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, complemento, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Rua Paraguai', 'Casa', 'Sucupira', 'Jaboatão', 'Pernambuco');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, complemento, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Rua Professor Arthur de Sá', 'Apartamento', 'Várzea', 'Recife', 'Pernambuco');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, numero, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Avenida Agamenon Magalhães', 387, 'Espinheiro', 'Recife', 'Pernambuco');

INSERT INTO 
  ENDERECO (id_endereco, rua, numero, complemento, bairro, cidade, estado)
VALUES 
  (END_ID_SEQ.NEXTVAL, 'Rua Cassilandia', 120, 'Apartamento', 'Várzea', 'Caruaru', 'Amazonas');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, numero, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Av. Prof. Moraes Rego', 70, 'Várzea', 'Petrolina', 'Bahia');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, numero, complemento, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Rua Paraguai', 320, 'Casa', 'Sucupira', 'Jaboatão', 'Paraíba');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, numero, complemento, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Rua Professor Arthur de Sá', 54, 'Apartamento', 'Várzea', 'Curitiba', 'Pernambuco');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, numero, complemento, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Rua Portela', 4002, 'Apartamento', 'Curado', 'São José dos Campos', 'São Paulo');

INSERT INTO 
  ENDERECO (id_endereco, rua, numero, complemento, bairro, cidade, estado)
VALUES 
  (END_ID_SEQ.NEXTVAL, 'Rua dos Santos', 344, 'Apartamento', 'Várzea', 'Olinda', 'Rio de Janeiro');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, numero, complemento, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Av. Prof. Moraes Souza', 33, 'Apartamento', 'Bem fica', 'Recife', 'Rio Grande do Norte');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, numero, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Rua Paraguai', 211, 'Monte Verde', 'Jaboatão', 'Tocantins');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, numero, complemento, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Rua Arthur de Sá', 2, 'Casa', 'Várzea', 'Garanhuns', 'Acre');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Avenida Magalhães Silva', 'Espinheiro', 'Olinda', 'Acre');

INSERT INTO 
  ENDERECO (id_endereco, rua, complemento, bairro, cidade, estado)
VALUES 
  (END_ID_SEQ.NEXTVAL, 'Rua Cassilandia', 'Apartamento', 'Zumbi', 'Caruaru', 'Amazonas');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Av. Prof. Moraes Rego', 'Várzea', 'Petrolina', 'Bahia');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, complemento, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Rua 25', 'Casa', 'Caetés 1', 'Abreu e Lima', 'Pernambuco');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, numero, complemento, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Rua Márcio Bonfin', 69, 'Apartamento', 'Centro', 'Natal', 'Rio Grande do Norte');
  
INSERT INTO 
  ENDERECO (id_endereco, rua, numero, complemento, bairro, cidade, estado)
VALUES
  (END_ID_SEQ.NEXTVAL, 'Av. Prof. Ruy de Queiroz', 34, 'Casa', 'Arapiraca', 'Bom Jesus', 'Piauí');

------------------------------------------------------------8. UPDATE---------------------------------------------------------------------
UPDATE ENDERECO
SET numero = 388, complemento = 'Térreo'
WHERE rua = 'Rua Cassilandia';

------------------------------------------------------------9. DELETE---------------------------------------------------------------------
DELETE FROM ENDERECO
WHERE rua = 'Rua Cassilandia';

------------------------------------------------------------INSERTS PESSOA----------------------------------------------------------------
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
  ('663.823.195-11', 'Matheus Amorim', 'Masculino', '11-NOV-1997', 3);

INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
  ('704.149.146-19', 'Anderson Silva', 'Masculino', '18-AUG-1996', 2);
  
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
  ('710.133.825-08', 'Lucas Albuquerque', 'Masculino', '29-JUL-1995', 3);
  
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
  ('368.251.117-16', 'Gabriel Amancio', 'Masculino', '17-MAR-1997', 4);
  
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('206.750.302-08', 'Pedro Veríssimo', 'Masculino', '16-OCT-1990', 5);

INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('099.202.954-69', 'Saulo Barros', 'Masculino', '18-JUN-1997', 7);

INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
  ('593.659.850-05', 'Carlos Intel', 'Masculino', '1-NOV-1940', 7);

INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
  ('222.349.830-29', 'Marcos Amd', 'Masculino', '8-JAN-1990', 8);
  
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
  ('164.328.910-19', 'Lucas Felipe', 'Masculino', '23-JUN-2005', 9);
  
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
  ('403.349.820-65', 'Felipe Henrique', 'Masculino', '15-MAR-1999', 10);
  
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('912.269.860-48', 'Maria Souza', 'Feminino', '6-FEB-2000', 11);

INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('190.926.540-35', 'Silva Santos', 'Feminino', '1-JUL-2010', 12);
  
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('690.839.360-74', 'Marta Souza', 'Feminino', '5-MAR-2002', 13);

INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('385.719.150-32', 'Juliana Ferreira', 'Feminino', '15-AUG-1980', 14);
  
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('745.834.610-89', 'Ferreira Silvana', 'Feminino', '20-DEC-1999', 15);

INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('912.269.860-48', 'Silveira Costa', 'Feminino', '23-MAR-1990', 15);

INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('190.926.540-35', 'Bruna Novas', 'Feminino', '13-OCT-2008', 17);
  
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('690.839.360-74', 'Mariana Silva', 'Feminino', '30-MAR-2012', 18);

INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('385.719.150-32', 'Juliana Souza', 'Feminino', '1-AUG-1989', 19);
  
INSERT INTO
  PESSOA (cpf, nome, sexo, data_nascimento, id_endereco)
VALUES
	('745.834.610-89', 'Ferreira Mariana', 'Feminino', '24-FEB-1997', 20);

------------------------------------------------------------INSERTS CLIENTE---------------------------------------------------------------
INSERT INTO 
	CLIENTE (id_cliente, email)
VALUES
	(1, 'matheus_amorim@gmail.com');
  
INSERT INTO 
	CLIENTE (id_cliente, email)
VALUES
	(3, 'lucas_albuquerque@gmail.com');
  
INSERT INTO 
	CLIENTE (id_cliente, email)
VALUES
	(5, 'pedro_veríssimo@gmail.com');

INSERT INTO 
	CLIENTE (id_cliente, email)
VALUES
	(7, 'carlos_intel@gmail.com');
  
INSERT INTO 
	CLIENTE (id_cliente, email)
VALUES
	(9, 'lucas_felipe@gmail.com');
  
INSERT INTO 
	CLIENTE (id_cliente, email)
VALUES
	(11, 'maria_souza@gmail.com');
  
INSERT INTO 
	CLIENTE (id_cliente, email)
VALUES
	(13, 'marta_souza@gmail.com');
  
INSERT INTO 
	CLIENTE (id_cliente, email)
VALUES
	(15, 'ferreira_silvana@gmail.com');
  
INSERT INTO 
	CLIENTE (id_cliente, email)
VALUES
	(17, 'bruna_novas@gmail.com');
  
INSERT INTO 
	CLIENTE (id_cliente, email)
VALUES
	(19, 'juliana_souza@gmail.com');

------------------------------------------------------------INSERTS FUNCIONARIO-----------------------------------------------------------
INSERT INTO
	FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
	(2, 1918, 'Vendedor', '18274983');

INSERT INTO
	FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
	(4, 1918, 'Vendedor', '29847559');

INSERT INTO
	FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
	(6, 1918, 'Vendedor', '38471102');

INSERT INTO
	FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
	(8, 1469, 'Estoquista', '19237483');

INSERT INTO
	FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
	(10, 1469, 'Estoquista', '59374401');

INSERT INTO
	FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
	(12, 1918, 'Vendedor', '98520666');
  
INSERT INTO
	FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
	(14, 1918, 'Vendedor', '18052919');

INSERT INTO
	FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
	(16, 1918, 'Vendedor', '73839344');

INSERT INTO
	FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
	(18, 1469, 'Estoquista', '91028337');

INSERT INTO
	FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
	(20, 1469, 'Estoquista', '01923384');

------------------------------------------------------------INSERTS TELEFONE_PESSOA-------------------------------------------------------
INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(1, '9 0193-0039');
  
INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(2, '9 7681-7048');
  
INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(3, '9 5290-5084');
  
INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(4, '9 3637-7543');
  
INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(5, '9 2390-5734');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(6, '9 7728-4491');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(7, '9 9009-1102');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(8, '9 3389-4419');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(9, '9 1102-2221');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(10, '9 3222-3315');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(11, '9 8733-4422');
  
INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(12, '9 4002-8912');
  
INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(13, '9 9022-0001');
  
INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(14, '9 4345-4491');
  
INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(15, '9 1092-3301');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(16, '9 2339-4491');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(17, '9 9089-4481');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(18, '9 3233-4469');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(19, '9 3390-4482');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(20, '9 3444-5591');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(1, '9 4559-6601');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(3, '9 3455-8903');

INSERT INTO 
	TELEFONE_PESSOA (id_pessoa, telefone_pessoa)
VALUES
	(5, '9 2110-3341');

------------------------------------------------------------INSERTS VENDEDOR--------------------------------------------------------------
INSERT INTO
	VENDEDOR (id_vendedor, comissao, id_supervisor)
VALUES
	(2, 230, 2);

INSERT INTO
	VENDEDOR (id_vendedor, comissao, id_supervisor)
VALUES
	(4, 215, 2);

INSERT INTO
	VENDEDOR (id_vendedor, comissao, id_supervisor)
VALUES
	(6, 199, 4);

INSERT INTO
	VENDEDOR (id_vendedor, comissao, id_supervisor)
VALUES
	(12, 293, 6);

INSERT INTO
	VENDEDOR (id_vendedor, comissao, id_supervisor)
VALUES
	(14, 252, 12);

INSERT INTO
	VENDEDOR (id_vendedor, comissao, id_supervisor)
VALUES
	(16, 210, 14);

UPDATE VENDEDOR
SET id_supervisor = 16
WHERE id_vendedor = 2;

------------------------------------------------------------INSERTS ESTOQUISTA------------------------------------------------------------
INSERT INTO
  ESTOQUISTA (id_estoquista)
VALUES
  (8);

INSERT INTO
  ESTOQUISTA (id_estoquista)
VALUES
  (10);

INSERT INTO
  ESTOQUISTA (id_estoquista)
VALUES
  (18);

INSERT INTO
  ESTOQUISTA (id_estoquista)
VALUES
  (20);

------------------------------------------------------------INSERTS SETOR-----------------------------------------------------------------
INSERT INTO
  SETOR (id_estoquista, setor)
VALUES
  (8, 'Carretilha, Vara e Linha');

INSERT INTO
  SETOR (id_estoquista, setor)
VALUES
  (10, 'Iscas e Anzóis');

INSERT INTO
  SETOR (id_estoquista, setor)
VALUES
  (18, 'Molinete e Acessórios');

INSERT INTO
  SETOR (id_estoquista, setor)
VALUES
  (20, 'Camping e Kits');

------------------------------------------------------------INSERTS PRODUTO---------------------------------------------------------------
INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0001, 'Carretilha Shimano Elétrica Force Master', 'Carretilha', 'Shimano', 5600, 6999, 8);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0002, 'Carretilha Marine Sports Fierro 6000 Xwl Perfil Alto Manivela Esquerda', 'Carretilha', 'Marine Sports', 297, 371, 8);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0003, 'Carretilha Vizel 12000 8.1:1 Drag 8kg Saint Plus - Manivela Esquerda', 'Carretilha', 'Vizel', 440, 549, 8);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0011, 'Vara Lumis Infinity Green 601 (1,83m) 6-17lb Carretilha', 'Vara', 'Lumis Infinity', 235,  292.99 , 8);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0012, 'Vara Albatroz Fishing Colombia Carretilhas e Molinetes 20-25 lb 3 partes', 'Vara', 'Albatroz Fishing', 91, 112.52, 8);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0013, 'Vara Albatroz Edge Telescópica – Ultra Light (molinete)', 'Vara', 'Albatroz Fishing', 85, 105.95, 8);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0014, 'Vara Saint Challenge 4203-SP 100-200gr', 'Vara', 'Saint Challenge', 1359, 1698, 8);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0021, 'LINHA DE PESCA TITANIUM 8X Moss Green 300m', 'Linha', 'TITANIUM', 117, 146.03, 8);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0022, 'Linha Monofilamento STUM mono c/300m', 'Linha', 'STUM', 50, 62, 8);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0023, 'LINHA DE PESCA FLY LINE WF 9F Green', 'Linha', 'FLY LINE', 71, 88.73, 8);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0101, 'ISCA CULTIVA MIRA BAIT RM65F 18', 'Iscas', 'Cultiva', 64, 79, 10);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0102, 'ISCA CULTIVA RIPN MINNOW RM 90-50 - 9CM - 7g', 'Iscas', 'Cultiva', 72, 89, 10);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0103, 'ISCA MARINE SPORTS SNAKE 115 - 11,5CM - 22G - COR 22G', 'Iscas', 'Marine Sports', 26, 32, 10);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0104, 'ISCA JIG KAKAREKO OCTOPUS 270G', 'Iscas', 'KAKAREKO', 64, 79.9, 10);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0105, 'ISCA BIG ONES - MORTAL SHAD - 9,6CM', 'Iscas', 'MORTAL SHAD', 24, 29.51, 10);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0111, 'ANZOL OWNER 11576 S-61 SINGLE HOOK', 'Anzóis', 'Owner', 20, 24, 10);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0112, 'ANZOL BIG ONES - BIG EYE TWISTER - 10GR', 'Anzóis', 'Big Eye Twister', 13, 16, 10);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0113, 'Anzol Garateia Celta GA-34 nº2/0', 'Anzóis', 'Celta', 9, 11, 10);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0114, 'ANZOL EAGLE CLAW OCTOPUS CIRCLE L7228BP', 'Anzóis', 'Eagle Claw', 7, 8.9, 10);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0115, 'Anzol Suporte Hook Simple Live Bait Albatroz Fishing', 'Anzóis', 'Albatroz Fishing', 3, 4.33, 10);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0201, 'MOLINETE DAIWA BG 20 – VELOC 4.8:1 – 3 ROL', 'Molinete', 'Daiwa', 320, 399, 18);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0202, 'MOLINETE SHIMANO SIENNA 4000 RE - 2 Rol - Veloc 5.1:1', 'Molinete', 'Shimano', 232, 289, 18);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0203, 'MOLINETE OKUMA TRIO REX SURF TXSU-60', 'Molinete', 'Okuma', 584, 729, 18);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0204, 'Molinete Shimano Spirex 1000 RG', 'Molinete', 'Shimano', 320, 399, 18);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0205, 'Molinte Albatroz Fishing Octopus 9000', 'Molinete', 'Albatroz Fishing', 191, 238.14, 18);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0211, 'GIRADOR SASAME SIMPLES 210-A N 1/0', 'Acessórios', 'Sasame', 12, 14.5, 18);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0212, 'ARGOLA OWNER HYPER WIRE - 5196', 'Acessórios', 'Owner', 29, 36, 18);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0213, 'ALICATE MULT FUNCAO CARBONO 17CM FP0105', 'Acessórios', 'Tacom', 32, 39.9, 18);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0214, 'BOIA APOIO FOGUETAO - 90g - 038', 'Acessórios', 'Apoio', 12, 14.9, 18);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0215, 'Suporte Apoio Duplo p/Vara (AD404)', 'Acessórios', 'Apoio', 16, 19.5, 18);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0301, 'BARRACA ECHO LIFE EASY 6P AUTOMATICA BA0014', 'Camping', 'Echo life', 392, 489, 20);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0302, 'BOLSA AF17-0109 black mochila c/3 estojos', 'Camping', 'Albatroz Fishing', 470, 586.6, 20);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0303, 'LANTERNA NAUTIKA EKO 313002', 'Camping', 'Nautika', 32, 39, 20);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0304, 'Saco de Dormir Nautika Antartik', 'Camping', 'Nautika', 196, 245, 20);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0305, 'Repelente Baruel Spray - 13 horas - c/ Icaridina - 100ml', 'Camping', 'Baruel', 32, 39.9, 20);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0311, 'Conjunto Pesca de Praia e Costeira - Vara + Molinete', 'Kits', 'Tacom', 352, 439, 20);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0312, 'Combo Pack Rapala', 'Kits', 'Rapala', 264, 329, 20);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0313, 'Kit Iscas Artificiais Robalo - 10 Iscas - Promoção', 'Kits', 'Robalo', 72, 89.9, 20);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0314, 'Kit Iscas Artificiais Tucunaré - 6 Iscas - Promoçã', 'Kits', 'Tucunaré', 112, 139.9, 20);

INSERT INTO
  PRODUTO (codigo, nome, categoria, fabricante, preco_de_compra, preco_de_venda, id_estoquista)
VALUES
  (0315, 'Kit kenzaki - 70Un. Anzol Chinu Black + Estojo', 'Kits', 'Kenzaki', 40, 49.9, 20);

------------------------------------------------------------INSERTS FORNECEDOR------------------------------------------------------------
INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Albatroz Fishing', 'Albatroz Fishing LTDA', '02.293.447/0002-94', '84.572.346', 8);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Shimano', 'Shimano LTDA', '03.485.285/0001-99', '55.284.895', 8);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Apoio', 'Apoio LTDA', '10.847.482/0004-03', '02.339.493', 8);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Cultiva', 'Cultiva LTDA', '04.384.274/0001-90', '29.394.958', 8);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Marine Sports', 'Marine Sports LTDA', '43.485.385/0002-08', '12.394.538', 9);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Nautika', 'Nautika LTDA', '39.485.903/0001-01', '13.348.504', 9);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Owner', 'Owner LTDA', '34.486.493/0002-39', '39.495.405', 9);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Tacom', 'Tacom LTDA', '26.485.385/0000-01', '20.395.485', 9);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Baruel', 'Baruel LTDA', '00.293.483/0010-99', '83.940.001', 10);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Big Eye Twister', 'Big Eye Twister LTDA', '10.294.503/0003-10', '11.203.491', 10);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Celta', 'Celta LTDA', '90.293.483/0000-29', '28.495.350', 10);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Daiwa', 'Daiwa LTDA', '89.394.059/0102-39', '38.587.450', 10);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Eagle Claw', 'Eagle Claw LTDA', '09.283.485/1029-90', '03.498.593', 11);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Echo life', 'Echo life LTDA', '00.937.491/2930-09', '99.492.498', 11);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('FLY LINE', 'FLY LINE LTDA', '38.493.930/0090-03', '29.398.593', 11);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('KAKAREKO', 'KAKAREKO LTDA', '28.394.032/0092-00', '11.203.405', 11);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Kenzaki', 'Kenzaki LTDA', '89.394.492/0003-04', '30.498.590', 12);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Lumis Infinity', 'Lumis Infinity LTDA', '99.493.204/0920-00', '39.492.300', 12);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('MORTAL SHAD', 'MORTAL SHAD LTDA', '83.492.394/0999-34', '88.495.920', 12);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Okuma', 'Okuma LTDA', '50.395.385/0002-04', '87.485.603', 12);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Rapala', 'Rapala LTDA', '78.488.405/8933-94', '77.394.592', 19);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Robalo', 'Robalo LTDA', '56.482.394/5648-32', '36.475.483', 19);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('STUM', 'STUM LTDA', '45.483.495/9830-56', '59.495.950', 19);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Saint Challenge', 'Saint Challenge LTDA', '39.496.395/0006-05', '95.495.385', 19);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Sasame', 'Sasame LTDA', '54.594.394/0950-12', '58.949.600', 20);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('TITANIUM', 'TITANIUM LTDA', '39.495.949/0909-38', '67.583.495', 20);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Tucunaré', 'Tucunaré LTDA', '38.482.395/9844-09', '65.489.493', 20);

INSERT INTO
  FORNECEDOR (nome_fantasia, razao_social, cnpj, inscricao_estadual, id_endereco)
VALUES
  ('Vizel', 'Vizel LTDA', '67.584.596/6857-98', '34.596.493', 20);

------------------------------------------------------------INSERTS EMAIL_FORNECEDOR------------------------------------------------------
INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (1, 'albatroz_fishing@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (2, 'shimano@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (3, 'apoio@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (4, 'cultiva@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (5, 'marine_sports@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (6, 'nautika@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (7, 'owner@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (8, 'tacom@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (9, 'baruel@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (10, 'big_eye_twister@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (11, 'celta@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (12, 'daiwa@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (13, 'eagle_claw@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (14, 'echo_life@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (15, 'fly_line@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (16, 'kakareko@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (17, 'kenzaki@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (18, 'lumis_infinity@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (19, 'mortal_shad@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (20, 'okuma@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (21, 'rapala@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (22, 'robalo@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (23, 'stum@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (24, 'saint_challenge@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (25, 'sasame@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (26, 'titanium@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (27, 'tucunare@gmail.com');

INSERT INTO
  EMAIL_FORNECEDOR (id_fornecedor, email)
VALUES
  (28, 'vizel@gmail.com');

------------------------------------------------------------INSERTS TELEFONE_FORNECEDOR---------------------------------------------------
INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (1, '9 3234-3394');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (2, '9 2029-3394');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (3, '9 3230-4493');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (4, '9 2904-2947');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (5, '9 2039-4956');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (6, '9 3044-5582');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (7, '9 4032-4958');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (8, '9 4052-4868');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (9, '9 4955-4857');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (10, '9 3048-6005');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (11, '9 3349-9584');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (12, '9 4405-4955');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (13, '9 2003-2945');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (14, '9 2304-5843');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (15, '9 2405=3840');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (16, '9 2000-3841');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (17, '9 2639-4958');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (18, '9 3990-4971');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (19, '9 4001-2948');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (20, '9 3894-2975');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (21, '9 3583-8890');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (22, '9 2784-3943');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (23, '9 2903-4985');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (24, '9 3109-3875');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (25, '9 3849-5945');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (26, '9 4109-2975');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (27, '9 4985-4985');

INSERT INTO
  TELEFONE_FORNECEDOR (id_fornecedor, telefone)
VALUES
  (28, '9 4895-4958');

------------------------------------------------------------INSERTS DEPENDENTE------------------------------------------------------------
INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (2, '372.384.492-36', 'Sabrina Silva', 'Feminino', '01-JAN-00');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (2, '010.293.485-32', 'Severina Silva', 'Feminino', '28-FEB-82');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (4, '293.448.394-23', 'Jorge Amancio', 'Masculino', '21-DEC-97');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (4, '112.394.382-44', 'Bianca Amancio', 'Feminino', '13-JUN-99');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (6, '198.090.293-04', 'Costa Barros', 'Masculino', '01-NOV-91');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (6, '100.021.284-78', 'Miguel Barros', 'Masculino', '10-AUG-94');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (8, '100.293.485-23', 'Marileide Amd', 'Femenino', '14-JAN-81');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (8, '304.583-374-75', 'Altenberg Amd', 'Masculino', '19-MAR-80');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (10, '738.482.385-86', 'Diana Henrique', 'Femenino', '25-DEC-72');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (10, '283.090.027-11', 'Leon Henrique', 'Masculino', '29-MAR-77');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (12, '302.384.582-34', 'Marcio Santos', 'Masculino', '30-OCT-02');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (12, '192.384.374-99', 'Fabiano Santos', 'Masculino', '30-SEP-89');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (14, '090.293.384-15', 'Anabelle Ferreira', 'Feminino', '15-AUG-88');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (14, '293.495.485-32', 'Sara Ferreira', 'Feminino', '22-SEP-90');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (16, '088.009.291-01', 'Michelangelo Costa', 'Masculino', '02-DEC-92');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (16, '829.372.273-92', 'Lais Costa', 'Feminino', '14-AUG-92');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (20, '708.390.203-99', 'Viviane Mariana', 'Feminino', '21-FEB-93');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (20, '982.000.394-64', 'Leticia Mariana', 'Feminino', '09-APR-88');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (20, '894.374.698-19', 'Natalia Mariana', 'Feminino', '11-MAY-90');

INSERT INTO
  DEPENDENTE (id_funcionario, cpf, nome, sexo, data_nascimento)
VALUES
  (20, '009.284.573-24', 'Cecilia Mariana', 'Feminino', '07-SEP-91');

------------------------------------------------------------INSERTS TELEFONE_DEPENDENTE---------------------------------------------------
INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (1, 2, '9 9844-5873');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (2, 2, '9 8375-3654');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (3, 4, '9 8375-9365');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (4, 4, '9 3846-2584');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (5, 6, '9 3874-5974');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (6, 6, '9 9908-4956');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (7, 8, '9 9846-3975');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (8, 8, '9 8946-5863');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (9, 10, '9 7896-4965');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (10, 10, '9 7836-5972');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (11, 12, '9 8946-8434');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (12, 12, '9 8001-2861');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (13, 14, '9 9731-1231');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (14, 14, '9 3642-3976');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (15, 16, '9 3332-3764');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (16, 16, '9 8038-4873');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (17, 20, '9 9047-4972');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (18, 20, '9 9312-3964');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (19, 20, '9 8936-4862');

INSERT INTO
  TELEFONE_DEPENDENTE (id_dependente, id_funcionario, telefone_pessoa)
VALUES
  (20, 20, '9 9437-4861');

------------------------------------------------------------INSERTS PRODUTO_ESPECIAL------------------------------------------------------
INSERT INTO
  PRODUTO_ESPECIAL (id_produto_especial)
VALUES
  (1);

INSERT INTO
  PRODUTO_ESPECIAL (id_produto_especial)
VALUES
  (3);

INSERT INTO
  PRODUTO_ESPECIAL (id_produto_especial)
VALUES
  (14);

INSERT INTO
  PRODUTO_ESPECIAL (id_produto_especial)
VALUES
  (203);

INSERT INTO
  PRODUTO_ESPECIAL (id_produto_especial)
VALUES
  (301);

INSERT INTO
  PRODUTO_ESPECIAL (id_produto_especial)
VALUES
  (302);

INSERT INTO
  PRODUTO_ESPECIAL (id_produto_especial)
VALUES
  (311);

------------------------------------------------------------INSERTS RESTRICAO-------------------------------------------------------------
INSERT INTO
  RESTRICAO (id_produto_especial, restricao)
VALUES
  (1, 'Apenas Cartão');

INSERT INTO
  RESTRICAO (id_produto_especial, restricao)
VALUES
  (3, 'Não aceita cheque');

INSERT INTO
  RESTRICAO (id_produto_especial, restricao)
VALUES
  (14, 'Apenas Cartão');

INSERT INTO
  RESTRICAO (id_produto_especial, restricao)
VALUES
  (203, 'Apenas Cartão');

INSERT INTO
  RESTRICAO (id_produto_especial, restricao)
VALUES
  (301, 'Não aceita cheque');

INSERT INTO
  RESTRICAO (id_produto_especial, restricao)
VALUES
  (302, 'Não aceita cheque');

INSERT INTO
  RESTRICAO (id_produto_especial, restricao)
VALUES
  (311, 'Não aceita cheque');

------------------------------------------------------------INSERTS FORNECE---------------------------------------------------------------
INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (1, 2, TO_TIMESTAMP('2010-02-02 16:34:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (2, 5, TO_TIMESTAMP('2012-04-23 06:03:23', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (3, 28, TO_TIMESTAMP('2014-07-02 06:14:05', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (11, 18, TO_TIMESTAMP('2013-01-05 23:14:44', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (12, 1, TO_TIMESTAMP('2016-08-23 17:44:38', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (13, 1, TO_TIMESTAMP('2000-08-14 22:42:58', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (14, 24, TO_TIMESTAMP('2001-12-25 22:00:33', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (21, 26, TO_TIMESTAMP('2004-08-18 12:15:41', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (22, 23, TO_TIMESTAMP('2009-06-06 09:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (23, 15, TO_TIMESTAMP('2018-11-16 18:50:49', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (101, 4, TO_TIMESTAMP('2017-10-30 17:59:11', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (102, 4, TO_TIMESTAMP('2011-02-28 14:13:12', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (103, 5, TO_TIMESTAMP('2010-03-18 19:43:56', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (104, 16, TO_TIMESTAMP('2004-04-29 20:09:18', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (105, 19, TO_TIMESTAMP('2016-07-04 13:19:55', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (111, 7, TO_TIMESTAMP('2006-05-12 15:49:43', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (112, 10, TO_TIMESTAMP('2007-09-07 01:04:09', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (113, 11, TO_TIMESTAMP('2008-12-15 04:28:58', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (114, 13, TO_TIMESTAMP('2001-01-31 08:51:21', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (115, 1, TO_TIMESTAMP('2000-02-19 23:19:34', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (201, 12, TO_TIMESTAMP('2019-01-19 19:10:09', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (202, 2, TO_TIMESTAMP('2011-09-30 06:18:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (203, 20, TO_TIMESTAMP('2014-04-01 16:22:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (204, 2, TO_TIMESTAMP('2014-06-06 18:12:04', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (205, 1, TO_TIMESTAMP('2013-08-14 11:59:46', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (211, 25, TO_TIMESTAMP('2015-03-29 17:48:56', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (212, 7, TO_TIMESTAMP('2012-06-13 21:04:34', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (213, 8, TO_TIMESTAMP('2014-07-05 15:59:08', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (214, 3, TO_TIMESTAMP('2014-04-04 03:39:57', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (215, 3, TO_TIMESTAMP('2001-01-01 01:01:01', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (301, 14, TO_TIMESTAMP('2003-12-24 00:04:21', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (302, 1, TO_TIMESTAMP('2000-11-30 00:38:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (303, 6, TO_TIMESTAMP('2000-12-01 02:49:49', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (304, 6, TO_TIMESTAMP('2002-09-19 19:11:39', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (305, 9, TO_TIMESTAMP('2001-03-30 17:25:05', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (311, 8, TO_TIMESTAMP('2008-06-11 16:43:09', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (312, 21, TO_TIMESTAMP('2009-02-28 19:04:31', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (313, 22, TO_TIMESTAMP('2010-02-27 07:24:24', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (314, 27, TO_TIMESTAMP('2010-05-07 08:08:19', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  FORNECE (codigo_produto, id_fornecedor, data_hora)
VALUES
  (315, 17, TO_TIMESTAMP('2007-05-08 23:09:36', 'YYYY-MM-DD HH24:MI:SS'));

------------------------------------------------------------INSERTS VENDA_ESPECIAL--------------------------------------------------------
INSERT INTO
  VENDA_ESPECIAL (id_vendedor, id_produto_especial)
VALUES
  (14, 1);

INSERT INTO
  VENDA_ESPECIAL (id_vendedor, id_produto_especial)
VALUES
  (4, 3);

INSERT INTO
  VENDA_ESPECIAL (id_vendedor, id_produto_especial)
VALUES
  (14, 14);

INSERT INTO
  VENDA_ESPECIAL (id_vendedor, id_produto_especial)
VALUES
  (2, 203);

INSERT INTO
  VENDA_ESPECIAL (id_vendedor, id_produto_especial)
VALUES
  (12, 301);

INSERT INTO
  VENDA_ESPECIAL (id_vendedor, id_produto_especial)
VALUES
  (6, 302);

INSERT INTO
  VENDA_ESPECIAL (id_vendedor, id_produto_especial)
VALUES
  (16, 311);

------------------------------------------------------------INSERTS COMPRA_ESPECIAL-------------------------------------------------------
INSERT INTO
  COMPRA_ESPECIAL (id_vendedor, id_produto_especial, id_cliente, data_hora)
VALUES
  (2, 203, 1, TO_TIMESTAMP('2015-03-22 18:53:20', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA_ESPECIAL (id_vendedor, id_produto_especial, id_cliente, data_hora)
VALUES
  (4, 3, 3, TO_TIMESTAMP('2014-09-10 16:42:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA_ESPECIAL (id_vendedor, id_produto_especial, id_cliente, data_hora)
VALUES
  (6, 302, 5, TO_TIMESTAMP('2012-01-02 01:01:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA_ESPECIAL (id_vendedor, id_produto_especial, id_cliente, data_hora)
VALUES
  (12, 301, 7, TO_TIMESTAMP('2005-11-07 19:41:09', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA_ESPECIAL (id_vendedor, id_produto_especial, id_cliente, data_hora)
VALUES
  (14, 14, 9, TO_TIMESTAMP('2001-12-25 23:59:59', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA_ESPECIAL (id_vendedor, id_produto_especial, id_cliente, data_hora)
VALUES
  (14, 1, 11, TO_TIMESTAMP('2010-04-15 15:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA_ESPECIAL (id_vendedor, id_produto_especial, id_cliente, data_hora)
VALUES
  (16, 311, 13, TO_TIMESTAMP('2018-09-30 00:13:07', 'YYYY-MM-DD HH24:MI:SS'));

------------------------------------------------------------INSERTS COMPRA----------------------------------------------------------------
INSERT INTO
  COMPRA (codigo_produto, id_cliente, id_vendedor, data_hora)
VALUES
  (201, 11, 2, TO_TIMESTAMP('2019-03-01 17:05:07', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA (codigo_produto, id_cliente, id_vendedor, data_hora)
VALUES
  (204, 13, 4, TO_TIMESTAMP('2015-12-25 17:17:03', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA (codigo_produto, id_cliente, id_vendedor, data_hora)
VALUES
  (2, 15, 6, TO_TIMESTAMP('2013-02-27 11:00:51', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA (codigo_produto, id_cliente, id_vendedor, data_hora)
VALUES
  (312, 17, 12, TO_TIMESTAMP('2010-10-12 03:47:02', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA (codigo_produto, id_cliente, id_vendedor, data_hora)
VALUES
  (11, 19, 14, TO_TIMESTAMP('2013-02-01 11:04:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA (codigo_produto, id_cliente, id_vendedor, data_hora)
VALUES
  (202, 11, 16, TO_TIMESTAMP('2019-11-06 08:07:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA (codigo_produto, id_cliente, id_vendedor, data_hora)
VALUES
  (304, 3, 2, TO_TIMESTAMP('2004-07-11 06:59:34', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA (codigo_produto, id_cliente, id_vendedor, data_hora)
VALUES
  (205, 15, 14, TO_TIMESTAMP('2018-06-17 10:12:55', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA (codigo_produto, id_cliente, id_vendedor, data_hora)
VALUES
  (21, 7, 6, TO_TIMESTAMP('2008-09-07 12:00:45', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO
  COMPRA (codigo_produto, id_cliente, id_vendedor, data_hora)
VALUES
  (314, 19, 12, TO_TIMESTAMP('2019-10-08 01:01:01', 'YYYY-MM-DD HH24:MI:SS'));