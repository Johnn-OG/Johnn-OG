
CREATE TABLE proyecto(
producto_id int,
	tienda_id int,
	direccion text,
	promotion_id int,
	periodo_inicio varchar,
	periodo_final varchar,
	vendedor_id int,
	cliente text,
	stock int,
	provedor_id int,
	venta_online text,
	email text,
	telefono int
);	


	SELECT * FROM proyecto


CREATE VIEW view_ventas_online AS
  SELECT * FROM proyecto
WHERE stock <  '5' AND venta_online LIKE  'yes';
  

CREATE VIEW view_ventas AS
SELECT * FROM proyecto 
WHERE venta_online='no'and stock >  '5';
  
  
CREATE VIEW inventario AS
SELECT COUNT(cliente), promotion_id , stock , producto_id 
FROM proyecto
GROUP BY promotion_id, stock  ,producto_id 
order by stock asc;
  
  
  
  
  SELECT * FROM proyecto
WHERE venta_online='yes'
ORDER BY  stock DESC;

  SELECT * FROM proyecto
ORDER BY  cliente DESC;



SELECT * FROM proyecto 
WHERE venta_online='no';

SELECT * FROM proyecto
WHERE stock > (5)

SELECT * FROM proyecto
ORDER BY  stock DESC;

  
SELECT *
FROM proyecto
WHERE stock <  '5' AND venta_online LIKE  'yes';


  