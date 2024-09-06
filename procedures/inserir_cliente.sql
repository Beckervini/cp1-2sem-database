CREATE OR REPLACE PROCEDURE inserir_cliente (
    p_id_cliente NUMBER,
    p_nome_cliente VARCHAR2,
    p_data_cadastro DATE
) IS
BEGIN
    -- Validação de dados
    IF p_id_cliente IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'ID do cliente não pode ser nulo');
    ELSIF LENGTH(p_nome_cliente) < 3 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Nome do cliente muito curto');
    END IF;

    -- Inserção de dados
    INSERT INTO CLIENTE (COD_CLIENTE, NOM_CLIENTE, DAT_CADASTRO)
    VALUES (p_id_cliente, p_nome_cliente, p_data_cadastro);

EXCEPTION
    WHEN OTHERS THEN
        -- Tratamento de erros
        DBMS_OUTPUT.PUT_LINE('Erro ao inserir cliente: ' || SQLERRM);
END inserir_cliente;
/
