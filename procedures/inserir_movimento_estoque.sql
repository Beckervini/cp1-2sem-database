CREATE OR REPLACE PROCEDURE inserir_movimento_estoque (
    p_seq_movimento NUMBER,
    p_cod_produto NUMBER,
    p_data_movimento DATE,
    p_qtd_movimentacao NUMBER,
    p_cod_tipo_movimento NUMBER
) IS
BEGIN
    -- Validação de dados
    IF p_seq_movimento IS NULL THEN
        RAISE_APPLICATION_ERROR(-20001, 'ID do movimento de estoque não pode ser nulo');
    ELSIF p_cod_produto IS NULL THEN
        RAISE_APPLICATION_ERROR(-20002, 'Código do produto não pode ser nulo');
    END IF;

    -- Inserção de dados
    INSERT INTO MOVIMENTO_ESTOQUE (SEQ_MOVIMENTO_ESTOQUE, COD_PRODUTO, DAT_MOVIMENTO_ESTOQUE, QTD_MOVIMENTACAO_ESTOQUE, COD_TIPO_MOVIMENTO_ESTOQUE)
    VALUES (p_seq_movimento, p_cod_produto, p_data_movimento, p_qtd_movimentacao, p_cod_tipo_movimento);

EXCEPTION
    WHEN OTHERS THEN
        -- Tratamento de erros
        DBMS_OUTPUT.PUT_LINE('Erro ao inserir movimento de estoque: ' || SQLERRM);
END inserir_movimento_estoque;
/
