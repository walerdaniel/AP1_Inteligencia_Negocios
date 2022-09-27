
CREATE TABLE nk_terno (
                sk_terno INTEGER NOT NULL,
                nk_terno INTEGER NOT NULL,
                cor VARCHAR(20) NOT NULL,
                modelo VARCHAR(20) NOT NULL,
                tamanho VARCHAR(10) NOT NULL,
                CONSTRAINT dim_terno PRIMARY KEY (sk_terno)
);


CREATE TABLE nk_cliente (
                sk_cliente INTEGER NOT NULL,
                nk_cliente INTEGER NOT NULL,
                nome VARCHAR(50) NOT NULL,
                cidade VARCHAR(20) NOT NULL,
                dt_nascimento DATE NOT NULL,
                CONSTRAINT dim_cliente PRIMARY KEY (sk_cliente)
);


CREATE SEQUENCE nk_pedido_sk_pedido_seq;

CREATE TABLE nk_pedido (
                sk_pedido INTEGER NOT NULL DEFAULT nextval('nk_pedido_sk_pedido_seq'),
                nk_pedido INTEGER NOT NULL,
                dt_pedido DATE NOT NULL,
                CONSTRAINT dim_pedido PRIMARY KEY (sk_pedido)
);


ALTER SEQUENCE nk_pedido_sk_pedido_seq OWNED BY nk_pedido.sk_pedido;

CREATE SEQUENCE nk_vendedor_sk_vendedor_seq;

CREATE TABLE nk_vendedor (
                sk_vendedor INTEGER NOT NULL DEFAULT nextval('nk_vendedor_sk_vendedor_seq'),
                nk_vendedor INTEGER NOT NULL,
                nome VARCHAR(50) NOT NULL,
                CONSTRAINT dim_vendedor PRIMARY KEY (sk_vendedor)
);


ALTER SEQUENCE nk_vendedor_sk_vendedor_seq OWNED BY nk_vendedor.sk_vendedor;

CREATE SEQUENCE nk_evento_sk_evento_seq;

CREATE TABLE nk_evento (
                sk_evento INTEGER NOT NULL DEFAULT nextval('nk_evento_sk_evento_seq'),
                nk_evento INTEGER NOT NULL,
                nome_evento VARCHAR(50) NOT NULL,
                dt_evento DATE NOT NULL,
                CONSTRAINT dim_evento PRIMARY KEY (sk_evento)
);


ALTER SEQUENCE nk_evento_sk_evento_seq OWNED BY nk_evento.sk_evento;

CREATE TABLE ft_aluguel (
                sk_cliente INTEGER NOT NULL,
                sk_vendedor INTEGER NOT NULL,
                sk_evento INTEGER NOT NULL,
                sk_pedido INTEGER NOT NULL,
                sk_terno INTEGER NOT NULL
);


ALTER TABLE ft_aluguel ADD CONSTRAINT nk_terno_ft_aluguel_fk
FOREIGN KEY (sk_terno)
REFERENCES nk_terno (sk_terno)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE ft_aluguel ADD CONSTRAINT nk_cliente_ft_aluguel_fk
FOREIGN KEY (sk_cliente)
REFERENCES nk_cliente (sk_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE ft_aluguel ADD CONSTRAINT nk_pedido_ft_aluguel_fk
FOREIGN KEY (sk_pedido)
REFERENCES nk_pedido (sk_pedido)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE ft_aluguel ADD CONSTRAINT nk_vendedor_ft_aluguel_fk
FOREIGN KEY (sk_vendedor)
REFERENCES nk_vendedor (sk_vendedor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE ft_aluguel ADD CONSTRAINT nk_evento_ft_aluguel_fk
FOREIGN KEY (sk_evento)
REFERENCES nk_evento (sk_evento)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
