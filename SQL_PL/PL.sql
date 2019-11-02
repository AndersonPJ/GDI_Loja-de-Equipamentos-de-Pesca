------------------------------------------------------------1. USO DE RECORD--------------------------------------------------------------
DECLARE TYPE ENDERECO IS RECORD (
 	rua    VARCHAR2(50),
 	numero NUMBER,
 	bairro VARCHAR2(15),
 	cidade VARCHAR2(15),
 	estado VARCHAR2(15)
);

end1 ENDERECO;

BEGIN
end1.rua    := 'avenida caxangá';
end1.numero := 0;
end1.bairro := 'iputinga';
end1.cidade := 'recife';
end1.estado := 'PE';
END;
/

------------------------------------------------------------3. BLOCO ANÔNIMO & 13. SELECT ... INTO & 15. EXCEPTION WHEN 2. USO DE ESTRUTURA DE DADOS DO TIPO TABLE-------------------
DECLARE
  cpf_pessoa VARCHAR2(14):= '704.149.146-19';
  cpf_aux    VARCHAR2(14);
  TYPE pessoa_cpf IS TABLE OF PESSOA.cpf%TYPE INDEX BY VARCHAR2(14);
BEGIN
  SELECT cpf INTO cpf_aux
  FROM PESSOA 
  WHERE cpf_pessoa = PESSOA.cpf;
EXCEPTION
  WHEN NO_DATA_FOUND THEN 
    DBMS_OUTPUT.put_line ('Pessoa não cadastrada');
  WHEN OTHERS THEN 
    DBMS_OUTPUT.put_line ('ERRO');
END;
/


------------------------------------------------------------4. CREATE PROCEDURE & 6. %TYPE & 16. USO DE PAR METROS (IN, OUT ou IN OUT)----
CREATE OR REPLACE PROCEDURE insert_funcionario (
  f_id_funcionario  IN FUNCIONARIO.id_funcionario%TYPE,
  f_salario         IN FUNCIONARIO.salario%TYPE,
  f_cargo           IN FUNCIONARIO.cargo%TYPE,
  f_ctps            IN FUNCIONARIO.ctps%TYPE
) IS
BEGIN
INSERT INTO
  FUNCIONARIO (id_funcionario, salario, cargo, ctps)
VALUES
  (f_id_funcionario, f_salario, f_cargo, f_ctps);
COMMIT;
END insert_funcionario;
/

EXECUTE insert_funcionario (1, 1000, 'Chefe', 12345678);

SELECT * FROM FUNCIONARIO WHERE id_funcionario = 1;

------------------------------------------------------------5. CREATE FUNCTION & 8. IF ELSIF----------------------------------------------
CREATE OR REPLACE FUNCTION diminui_salario
RETURN NUMBER
    IS
        retorno NUMBER;
BEGIN
SELECT MAX (salario) INTO retorno FROM FUNCIONARIO;
IF    retorno >= 17000 THEN retorno := 13000;
ELSIF retorno >= 13000 THEN retorno := 11000;
ELSE  retorno:= 9000;
END IF;
RETURN retorno;
END;
/

BEGIN
    dbms_output.put_line(diminui_salario);
END;
/

---------------------------------------10. LOOP EXIT WHEN & 11. WHILE LOOP & 12. FOR IN LOOP ---------------------------------------------
CREATE OR REPLACE FUNCTION contar RETURN
INTEGER IS
  cont    NUMBER := 0;
  counte  NUMBER := 0;
BEGIN
LOOP
  cont := cont + 1;
  EXIT WHEN cont = 5;
END LOOP;

WHILE counte < 5 LOOP
  counte := counte + 1;
END LOOP;

FOR m IN 1..10 LOOP
  DBMS_OUTPUT.put_line(m);
END LOOP;
RETURN cont;
END contar;
/

BEGIN
    dbms_output.put_line(contar);
END;
/

------------------------------------------------------------9. CASE WHEN------------------------------------------------------------------
CREATE OR REPLACE FUNCTION diminui_salario_2 RETURN
INTEGER IS
  retorno INTEGER;
BEGIN
  SELECT MAX (salario) INTO retorno FROM FUNCIONARIO;
CASE retorno IS NOT NULL
  WHEN retorno >= 17000 THEN retorno := 13000;
  WHEN retorno >= 13000 THEN retorno := 11000;
  ELSE retorno:= 9000;
END CASE;
 	RETURN retorno;

END diminui_salario_2;
/

BEGIN
    dbms_output.put_line(diminui_salario_2);
END;
/

------------------------------------------------------------7. %ROWTYPE & 14. CURSOR (OPEN, FETCH e CLOSE)--------------------------------
DECLARE
  CURSOR c_pessoa IS
  SELECT cpf, nome 
  FROM PESSOA
  WHERE sexo = 'masculino';
  v_pessoa  c_pessoa%ROWTYPE;
BEGIN
  OPEN c_pessoa;
  LOOP
    FETCH c_pessoa INTO v_pessoa;
    EXIT WHEN c_pessoa%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('CPF' + v_pessoa.cpf + 'Nome' + v_pessoa.nome);
  END LOOP;
CLOSE c_pessoa;
END;
/

------------------------------------------------------------17. CREATE OR REPLACE PACKAGE-------------------------------------------------
CREATE OR REPLACE PACKAGE p_pessoa AS
    FUNCTION get_nome (f_id_pessoa NUMBER)
        RETURN VARCHAR2;
    FUNCTION get_cpf (f_id_pessoa NUMBER)
        RETURN VARCHAR2;
END p_pessoa;
/

------------------------------------------------------------18. CREATE OR REPLACE PACKAGE BODY--------------------------------------------
CREATE OR REPLACE PACKAGE BODY p_pessoa AS
    FUNCTION get_nome (f_id_pessoa NUMBER)
        RETURN VARCHAR2 IS is_nome PESSOA.nome%TYPE;
    BEGIN
        SELECT nome INTO is_nome FROM PESSOA WHERE f_id_pessoa = id_pessoa;
        RETURN is_nome;
        
        EXCEPTION
            WHEN NO_DATA_FOUND THEN RETURN NULL;
            WHEN TOO_MANY_ROWS THEN RETURN NULL;
    END;
        
        
    FUNCTION get_cpf (f_id_pessoa NUMBER)
        RETURN VARCHAR2 IS is_cpf PESSOA.cpf%TYPE;
    BEGIN
        SELECT cpf INTO is_cpf FROM PESSOA WHERE f_id_pessoa = id_pessoa;
        RETURN is_cpf;
        
        EXCEPTION
            WHEN NO_DATA_FOUND THEN RETURN NULL;
            WHEN TOO_MANY_ROWS THEN RETURN NULL;
    END;
END p_pessoa;
/

BEGIN
  DBMS_OUTPUT.PUT_LINE(p_pessoa.get_nome(1));
  DBMS_OUTPUT.PUT_LINE(p_pessoa.get_cpf(1));
END;
/

------------------------------------------------------------19. CREATE OR REPLACE TRIGGER (COMANDO​)---------------------------------------
CREATE OR REPLACE TRIGGER hora_trabalho
BEFORE INSERT OR UPDATE OR DELETE ON FUNCIONARIO
BEGIN
    IF TO_CHAR (SYSDATE, 'hh24:mm:ss') NOT BETWEEN '09:00:00' AND '23:00:00' THEN
        RAISE_APPLICATION_ERROR(-20102, 'Fora do horário permitido!');
    END IF;
END jobs_biud;
/

------------------------------------------------------------20. CREATE OR REPLACE TRIGGER (LINHA​)-----------------------------------------
CREATE OR REPLACE TRIGGER salario_func
BEFORE INSERT OR UPDATE ON FUNCIONARIO
FOR EACH ROW
BEGIN
  IF :NEW.salario < 998 THEN
    RAISE_APPLICATION_ERROR(-20101,'Salário não pode ser menor que o salário mínimo!');
  END IF;
END;
/