CREATE OR REPLACE PROCEDURE inserir_vendedor (
    p_id_vendedor NUMBER,
    p_nome_vendedor VARCHAR2,
    p_sta_ativo CHAR
) IS
BEGIN
    -- Validação de dados
    IF p_id_vendedor IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'ID do vendedor não pode ser nulo');
    ELSIF LENGTH(p_nome_vendedor) < 3 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Nome do vendedor muito curto');
    END IF;

    -- Inserção de dados
    INSERT INTO VENDEDOR (COD_VENDEDOR, NOM_VENDEDOR, STA_ATIVO)
    VALUES (p_id_vendedor, p_nome_vendedor, p_sta_ativo);

EXCEPTION
    WHEN OTHERS THEN
        -- Tratamento de erros
        DBMS_OUTPUT.PUT_LINE('Erro ao inserir vendedor: ' || SQLERRM);
END inserir_vendedor;
/
