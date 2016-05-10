/*BUSCAR NEGOCIO*/
SELECT n.id_negocio, n.neg_nombre, n.neg_descripcion_breve, n.neg_fecha_publicacion FROM negocio n JOIN publicidad_negocio p ON (n.id_negocio=p.id_negocio) AND (neg_nombre LIKE '%%' OR neg_descripcion_breve LIKE '%%') ORDER BY pub_monto_pagado DESC LIMIT 0,5;

SELECT n.id_negocio, n.neg_nombre, n.neg_descripcion_breve, n.neg_fecha_publicacion FROM negocio n JOIN publicidad_negocio p ON (n.id_negocio=p.id_negocio) AND (neg_nombre LIKE '%%' OR neg_descripcion_breve LIKE '%%') ORDER BY pub_monto_pagado DESC;



/*INDEX-producto*/
SELECT p.id_producto,p.pro_nombre,p.pro_descripcion_breve,p.pro_precio FROM producto p JOIN publicidad_producto o ON p.id_producto=o.id_producto AND o.pub_imagen='0' AND o.pub_monto_pagado>0.00 ORDER BY RAND() LIMIT 0,4;

/*INDEX-negocio*/
SELECT n.id_negocio,n.neg_nombre,n.neg_descripcion_breve FROM negocio n JOIN publicidad_negocio o ON n.id_negocio=o.id_negocio AND o.pub_imagen='0' AND o.pub_monto_pagado>0.00 ORDER BY RAND() LIMIT 0,4;

/*INDEX-servicio*/
SELECT s.id_servicio,s.ser_nombre,s.ser_descripcion_breve FROM servicio s JOIN publicidad_servicio o ON s.id_servicio=o.id_servicio AND o.pub_imagen='0' AND o.pub_monto_pagado>0.00 ORDER BY RAND() LIMIT 0,4;

/*Buscar*/
SELECT n.id_negocio, n.neg_nombre, n.neg_descripcion_breve FROM negocio n JOIN publicidad_negocio p ON (n.id_negocio=p.id_negocio) AND (neg_nombre LIKE '%%' OR neg_descripcion_breve LIKE '%%') AND p.pub_monto_pagado>0.00 ORDER BY RAND() LIMIT 0,8;

SELECT n.id_negocio, n.neg_nombre, n.neg_descripcion_breve FROM negocio n JOIN publicidad_negocio p ON (n.id_negocio=p.id_negocio) AND (neg_nombre LIKE '%%' OR neg_descripcion_breve LIKE '%%') AND p.pub_monto_pagado=0.00 ORDER BY RAND() LIMIT 0,8;



