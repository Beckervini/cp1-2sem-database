-- Criação das tabelas

@create_tables_Scriptmodelo.sql;

-- Adição das constraints
@alter_tables.sql;

-- Inserção de dados
@inserts/insert_data.sql;

-- Carregamento de dados
@data-load/carga_movimento_estoque.sql;
@data-load/carga_produto_composto.sql;
@data-load/carga_item_pedido.sql;

-- Procedures e pacotes
@procedures/inserir_cliente.sql;
@procedures/pacote_etl.sql;
