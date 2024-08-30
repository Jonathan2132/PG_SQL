CREATE INDEX idx_nombre ON clientes (nombre);


SELECT id_cliente, nombre, direccion, ciudad, estado, codigo_postal, pais
	FROM public.clientes WHERE nombre = 'Patricia González';