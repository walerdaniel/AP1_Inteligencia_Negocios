create table pedido (
	id_pedido INTEGER PRIMARY KEY,
	dt_pedido DATE,
	qtd INTEGER,
	cod_cliente VARCHAR(20),
	cod_vendedor INTEGER,
	cod_evento INTEGER,
	cod_terno VARCHAR(20),
	
	FOREIGN KEY (cod_cliente)REFERENCES cliente (cpf),
	FOREIGN KEY (cod_vendedor)REFERENCES vendedor (matricula),
	FOREIGN KEY (cod_evento)REFERENCES evento (id_evento),
	FOREIGN KEY (cod_terno)REFERENCES terno (cod_terno)
);
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (1, '22/02/2018', 6, '000.470.238-12', 316, 1, '00.61.7550');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (2, '06/02/2019', 4, '000.923.300-47', 316, 2, '00.61.8525');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (3, '02/04/2018', 2, '003.838.362-10', 337, 3, '00.79.0295');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (4, '22/01/2019', 2, '004.087.533-59', 337, 4, '03.91.2765');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (5, '06/06/2019', 2, '005.811.245-28', 480, 5, '01.71.8837');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (6, '26/04/2020', 4, '006.119.251-35', 480, 6, '04.18.6370');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (7, '22/06/2020', 6, '006.787.085-74', 480, 7, '04.90.9450');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (8, '24/08/2020', 20, '007.146.501-78', 480, 8, '05.07.0328');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (9, '24/02/2019', 2, '007.333.048-89', 560, 9, '05.36.3485');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (10, '20/03/2020', 20, '007.486.176-57', 560, 10, '05.71.4606');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (11, '24/03/2020', 4, '008.090.380-72', 560, 11, '06.41.3545');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (12, '26/09/2020', 2, '014.633.201-60', 560, 12, '09.82.2131');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (13, '26/10/2018', 2, '026.210.801-22', 480, 13, '10.34.6599');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (14, '06/10/2019', 20, '026.899.453-40', 721, 14, '10.60.8229');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (15, '22/02/2021', 2, '027.675.801-51', 721, 15, '10.93.1375');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (16, '02/12/2021', 20, '034.961.262-51', 721, 16, '11.63.7827');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (17, '24/12/2021', 6, '035.317.667-35', 721, 17, '12.35.6602');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (18, '01/11/2021', 4, '037.078.404-23', 721, 18, '14.50.4669');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (19, '05/05/2019', 20, '038.896.067-39', 337, 19, '14.91.8501');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (20, '18/04/2021', 8, '040.283.696-64', 480, 20, '15.93.4643');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (21, '01/12/2018', 20, '040.523.899-70', 721, 21, '17.57.3232');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (22, '22/03/2021', 8, '042.370.525-68', 560, 22, '25.04.0746');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (23, '06/04/2018', 4, '043.260.572-58', 560, 23, '25.45.4646');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (24, '22/02/2019', 4, '046.479.728-14', 721, 24, '92.80.5364');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (25, '24/10/2020', 6, '051.477.882-51', 480, 25, '93.17.2578');
insert into pedido (id_pedido, dt_pedido, qtd, cod_cliente, cod_vendedor, cod_evento, cod_terno) values (26, '22/07/2019', 2, '054.738.356-43', 337, 26, '93.60.6350');