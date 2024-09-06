CREATE OR REPLACE PACKAGE pkg_etl IS
    -- Declaração das procedures no pacote
    PROCEDURE inserir_cliente (
        p_id_cliente NUMBER,
        p_nome_cliente VARCHAR2,
        p_data_cadastro DATE
    );

    PROCEDURE inserir_produto (
        p_id_produto NUMBER,
        p_nome_produto VARCHAR2,
        p_cod_barra VARCHAR2,
        p_sta_ativo CHAR,
        p_data_cadastro DATE
    );

    PROCEDURE inserir_vendedor (
        p_id_vendedor NUMBER,
        p_nome_vendedor VARCHAR2,
        p_sta_ativo CHAR
    );

    PROCEDURE inserir_movimento_estoque (
        p_seq_movimento NUMBER,
        p_cod_produto NUMBER,
        p_data_movimento DATE,
        p_qtd_movimentacao NUMBER,
        p_cod_tipo_movimento NUMBER
    );

END pkg_etl;
/
