CREATE TABLE IF NOT EXISTS ocorrencia
(
    id            BIGINT   NOT NULL AUTO_INCREMENT,
    entrega_id    BIGINT   NOT NULL,
    descricao      TEXT     NOT NULL,
    data_registro DATETIME NOT NULL,

    PRIMARY KEY (id)
);


ALTER TABLE ocorrencia
    ADD CONSTRAINT fk_ocorrencia_entrega
        FOREIGN KEY (entrega_id) references entrega (id);