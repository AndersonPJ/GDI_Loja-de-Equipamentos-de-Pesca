CREATE SEQUENCE P_ID_SEQ;

------------------------------------------------------------17. INSERT INTO---------------------------------------------------------------
------------------------------------------------------------INSERTS CLIENTE---------------------------------------------------------------
INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Matheus Amorim', '663.823.195-11', 'Masculino', TO_DATE ('11/11/1997', 'DD/MM/YYYY'),
        tp_endereco (NULL, 'Rua Paraguai', 'Sucupira', 'Jaboatão', 'Pernambuco', 'Casa'),
        varray_telefone (tp_telefone ('9 0193-0039'), tp_telefone ('9 4559-6601')), 'matheus_amorim@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Lucas Albuquerque', '710.133.825-08', 'Masculino', TO_DATE ('29/07/1995', 'DD/MM/YYYY'),
        tp_endereco (NULL, 'Rua Paraguai', 'Sucupira', 'Jaboatão', 'Pernambuco', 'Casa'),
        varray_telefone (tp_telefone ('9 3455-8903'), tp_telefone ('9 5290-5084')), 'lucas_albuquerque@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Pedro Veríssimo', '206.750.302-08', 'Masculino', TO_DATE ('16/10/1995', 'DD/MM/YYYY'),
        tp_endereco (387, 'Avenida Agamenon Magalhães', 'Espinheiro', 'Recife', 'Pernambuco', NULL),
        varray_telefone (tp_telefone ('9 2110-3341'), tp_telefone ('9 2390-5734')), 'pedro_veríssimo@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Carlos Intel', '593.659.850-05', 'Masculino', TO_DATE ('01/11/1940', 'DD/MM/YYYY'),
        tp_endereco (70, 'Av. Prof. Moraes Rego', 'Várzea', 'Petrolina', 'Bahia', NULL),
        varray_telefone (tp_telefone ('9 9009-1102')), 'carlos_intel@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Lucas Felipe', '164.328.910-19', 'Masculino', TO_DATE ('23/06/2005', 'DD/MM/YYYY'),
        tp_endereco (54, 'Rua Professor Arthur de Sá', 'Várzea', 'Curitiba', 'Pernambuco', 'Apartamento'),
        varray_telefone (tp_telefone ('9 1102-2221')), 'lucas_felipe@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Maria Souza', '912.269.860-48', 'Feminino', TO_DATE ('06/02/2000', 'DD/MM/YYYY'),
        tp_endereco (344, 'Rua dos Santos', 'Várzea', 'Olinda', 'Rio de Janeiro', 'Apartamento'),
        varray_telefone (tp_telefone ('9 8733-4422')), 'maria_souza@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Marta Souza', '690.839.360-74', 'Feminino', TO_DATE ('05/03/2002', 'DD/MM/YYYY'),
        tp_endereco (211, 'Rua Paraguai', 'Monte Verde', 'Jaboatão', 'Tocantins', NULL),
        varray_telefone (tp_telefone ('9 9022-0001')), 'marta_souza@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Ferreira Silvana', '745.834.610-89', 'Feminino', TO_DATE ('20/12/1999', 'DD/MM/YYYY'),
        tp_endereco (NULL, 'Avenida Magalhães Silva', 'Espinheiro', 'Olinda', 'Acre', NULL),
        varray_telefone (tp_telefone ('9 1092-3301')), 'ferreira_silvana@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Bruna Novas', '190.926.540-35', 'Feminino', TO_DATE ('13/10/2008', 'DD/MM/YYYY'),
        tp_endereco (NULL, 'Av. Prof. Moraes Rego', 'Várzea', 'Petrolina', 'Bahia', NULL),
        varray_telefone (tp_telefone ('9 9089-4481')), 'bruna_novas@gmail.com');

INSERT INTO tb_cliente
VALUES  (P_ID_SEQ.NEXTVAL, 'Juliana Souza', '385.719.150-32', 'Feminino', TO_DATE ('01/08/1989', 'DD/MM/YYYY'),
        tp_endereco (69, 'Rua Márcio Bonfin', 'Centro', 'Natal', 'Rio Grande do Norte', 'Apartamento'),
        varray_telefone (tp_telefone ('9 3390-4482')), 'juliana_souza@gmail.com');

------------------------------------------------------------INSERTS ESTOQUISTA------------------------------------------------------------
INSERT INTO tb_estoquista
VALUES  (P_ID_SEQ.NEXTVAL, 'Marcos Amd', '222.349.830-29', 'Masculino', TO_DATE ('08/01/1990', 'DD/MM/YYYY'),
        tp_endereco(320, 'Rua Paraguai', 'Sucupira', 'Jaboatão', 'Paraíba', 'Casa'),
        varray_telefone (tp_telefone ('9 3389-4419')), 1469.00, 'Estoquista', '19237483',
        tp_nt_setor (tp_setor ('Carretilha'), tp_setor ('Vara'), tp_setor ('Linha')));

INSERT INTO tb_estoquista
VALUES  (P_ID_SEQ.NEXTVAL, 'Felipe Henrique', '403.349.820-65', 'Masculino', TO_DATE ('15/03/1999', 'DD/MM/YYYY'),
        tp_endereco(4002, 'Rua Portela', 'Curado', 'São José dos Campos', 'São Paulo', 'Apartamento'),
        varray_telefone (tp_telefone ('9 3222-3315')), 1469.00, 'Estoquista', '59374401',
        tp_nt_setor (tp_setor ('Iscas'), tp_setor ('Anzóis')));

INSERT INTO tb_estoquista
VALUES  (P_ID_SEQ.NEXTVAL, 'Mariana Silva', '690.839.360-74', 'Feminino', TO_DATE ('30/03/2012', 'DD/MM/YYYY'),
        tp_endereco(NULL, 'Rua 25', 'Caetés 1', 'Abreu e Lima', 'Pernambuco', 'Casa'),
        varray_telefone (tp_telefone ('9 3233-4469')), 1469.00, 'Estoquista', '91028337',
        tp_nt_setor (tp_setor ('Molinete'), tp_setor ('Acessórios')));

INSERT INTO tb_estoquista
VALUES  (P_ID_SEQ.NEXTVAL, 'Ferreira Mariana', '745.834.610-89', 'Feminino', TO_DATE ('24/02/1997', 'DD/MM/YYYY'),
        tp_endereco(34, 'Av. Prof. Ruy de Queiroz', 'Arapiraca', 'Bom Jesus', 'Piauí', 'Casa'),
        varray_telefone (tp_telefone ('9 3444-5591')), 1469.00, 'Estoquista', '01923384',
        tp_nt_setor (tp_setor ('Camping'), tp_setor ('Kits')));