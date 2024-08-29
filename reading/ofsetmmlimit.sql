SELECT id_cliente, nombre, direccion, ciudad, estado, codigo_postal, pais
	FROM public.clientes LIMIT 1 OFFSET 2;