CREATE OR REPLACE PROCEDURE inserir_produto (
    p_id_produto NUMBER,
    p_nome_produto VARCHAR2,
    p_cod_barra VARCHAR2,
    p_sta_ativo CHAR,
    p_data_cadastro DATE
) IS
BEGIN
    -- Validação de dados
    IF p_id_produto IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'ID do produto não pode ser nulo');
    ELSIF LENGTH(p_nome_produto) < 3 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Nome do produto muito curto');
    END IF;

    -- Inserção de dados
    INSERT INTO PRODUTO (COD_PRODUTO, NOM_PRODUTO, COD_BARRA, STA_ATIVO, DAT_CADASTRO)
    VALUES (p_id_produto, p_nome_produto, p_cod_barra, p_sta_ativo, p_data_cadastro);

EXCEPTION
    WHEN OTHERS THEN
        -- Tratamento de erros
        DBMS_OUTPUT.PUT_LINE('Erro ao inserir produto: ' || SQLERRM);
END inserir_produto;
/
