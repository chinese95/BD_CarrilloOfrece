/*--TABLA USUARIO------------------------------------------------------------------------------*/

INSERT INTO usuario (usu_nombre,usu_contrasenia) VALUES ('espadas950@gmail.com','1234'),
                           ('ernestovalent@gmail.com','valito'),
                           ('marquitos.pech@gmail.com','marcos'),
                           ('carlos_cituc@hotmail.com','dc599a9972fde3045dab59dbd1ae170b'),
                           ('felipe.tun@yahoo.com','felipito'),
                           ('elu_niño@gmail.com','elniño'),
                           ('berna.gatita@hotmail.com','barnabilitis'),
                           ('uex69@gmail.com','feo'),
                           ('eliezer_balam@outlook.com','santos'),
                           ('raul@gmail.com','pit');
                           

/*--TABLA PERSONA------------------------------------------------------------------------------*/                        
                           
 INSERT INTO persona (per_nombre,per_apellido,per_correo,per_correo_visible,per_telefono,per_telefono_visible,per_red_social,per_red_social_visible,id_usuario) VALUES ('Eric Rodrigo','Espadas Ku','espadas950@gmail.com',0,'9841228408',0,'',0,1),
                            ('Ernesto Valentin','Caamal Peech','ernestovalent@gmail.com',0,'9842548841',0,'',0,2),
                            ('Marcos','Pech Cruz','marquitos.pech@gmail.com',0,'9835412589',0,'',0,3),
                            ('Carlos Alberto','Cituc Chab','carlos_cituc@hotmail.com',0,'9833694582',0,'',0,4),
                            ('Luis Felipe','Tun Poot','felipe.tun@yahoo.com',0,'9832547895',0,'',0,5),
                            ('ELiu','Puc Puc','eliu_niño@gmail.com',0,'9834597854',0,'',0,6),
                            ('Bernabe','Cituk Caamal','berna.gatita@hotmail.com',0,'9834569875',0,'',0,7),
                            ('Victor','Uex Mis','uex69@gmail.com',0,'9835698546',0,'',0,8),
                            ('Eliezer','Balam Santos','eliezer_balam@outlook.com',0,'9834529872',0,'',0,9),
                            ('Raul Enrique','Dzids Ku','raul@gmail.com',0,'9836984256',0,'',0,10);                           
                        
/*--TABLA CATEGORIA_PRODUCTO------------------------------------------------------------------------------*/                                        
 INSERT INTO categoria_producto (cat_pro_nombre) VALUES ('Arte y antigüedades'),
                                        ('Computación y electrónica'),
                                        ('Deportes'),
                                        ('Electrodomésticos'),
                                        ('Entretenimiento'),
                                        ('Herramientas'),
                                        ('Inmuebles'),
                                        ('Mascotas'),
                                        ('Muebles'),
                                        ('Música y audio'),
                                        ('Refacciones'),
                                        ('Ropa y calzado'),
                                        ('Salud y belleza'),
                                        ('Vehículos');
                           

/*--TABLA PRODUCTO------------------------------------------------------------------------------*/                        
                           
 INSERT INTO producto (pro_nombre,pro_descripcion_breve,pro_descripcion_general,pro_precio,pro_fecha_publicacion,pro_estatus,id_categoria_producto,id_persona) VALUES ('Memoria RAM','Memoria RAM Kingston','El consejo JEDEC dicta los estándares de ingeniería de los productos de semiconductores y es el ente de estandarización de productos de semiconductores de la Alianza de Industrias Electrónicas (EIA, por su sigla en inglés). Aproximadamente unas 300 compañías que representan a todos los segmentos de la industria participan activamente en el desarrollo de estándares con el fin de satisfacer las necesidades de la industria. Como miembro de hace muchos años de la Junta Directiva del JEDEC, Kingston Technology contribuye a establecer los estándares de tecnología que rigen la industria de los productos de memoria. Todos los productos de memoria de Kingston cumplen con las especificaciones del JEDEC, que se encuentra entre las más importantes de las utilizadas por los fabricantes de productos de semiconductores.',2500.00,'2016-04-21',1,1,3),
                           ('USB ADATA','USB ADATA 16 GB, soporta reproduccion de video y audio 4K.','
El UE710 se adapta a una amplia audiencia mediante la combinación de la conectividad Rayo y USB certificado por Apple. Es compatible con los dispositivos iPhone, iPad y iPod, que permite la transferencia de datos, así como Ultra HD 4K de vídeo - los usuarios de desagüe de ancho de banda limitado con el intercambio de contenidos y el disfrute directo. Para archivos de gran tamaño y el compromiso social, unidades flash USB de primera calidad como la UE710 siguen siendo superiores a mover el contenido a través de Internet.',600.00,'2016-04-21',1,1,5),
                           ('Columpios (shackles)','Columpios (shackles) Para Cherokee Sport Xj + 2 Pulgadas.','Estos columpios aumentan la altura en la suspension trasera de tu Jeep Cherokee Sport XJ  dos pulgadas. Estan fabricadas en placa de 2" ancho y el espesor es de 1/4" son indestructibles.
La instalacion es sencilla y sin tener que efectuar adaptaciones, se colocan de manera directa.',1080.00,'2016-04-22',1,9,8),
                           ('Anuncio Antiguo De Chiclets Adams','Ponemos a la venta este anuncio antiguo de chiclets adams hecho de lamina fecha de 1951.
El anuncio se encuentra en muy buenas condiciones, muestra algunas ligeras rayaduras, fue hecho en Monterrey por la fabrica Famosa.
El anuncio mide 35.5 x 18 cms.','Antes de realizar la compra, lea con atención los siguientes puntos:
Estamos a sus órdenes para contestar cualquier duda que tenga. Favor de aclarar  cualquier inquietud que se le presente antes de realizar la compra.
Al momento de realizar la compra, se  adquiere un compromiso con el vendedor de pagar la pieza y concretar la operación, USTED es quien esta decidiendo hacer la compra.
Es muy importante que si ya decidió hacer la compra cuente con el dinero para pagar la pieza.
Toda compra en falso ocasionara que le ponga una calificación NEGATIVA, no se arriesgue a perjudicar su reputación.
Puede tener la seguridad y la confianza que su compra es totalmente segura con nosotros, revise nuestra reputación 100% positiva, todos nuestros clientes han estado totalmente satisfechos.
Puede realizar su pago por medio de cualquier tarjeta de crédito o debito directamente con nosotros y sin comisión.',1100.00,'2016-04-22',1,13,9),
                           ('Par De Pesas Mancuernas','Par De Pesas Mancuernas 36 Libras, Profesional 100% Metal.','2 mancuernas con discos intercambiables.
incluye.
2 barras metálicas con seguros estrella atornillables. 3 Kg. ( 6 libras)
4 discos de 2 Kg (16 libras)
4 discos de 1 Kg ( 8 libras)
4 discos de .5 kg ( 4 libras)
total. 17 kilos igual a 34 libras.
todo nuevo y 100% metal',575.00,'2016-04-23',1,3,4),
('Mouse Performance Inalámbrico','Performance Mouse
4 botones programables Cuenta con la tecnologia Darkfield.','Performance Mouse
4 botones programables Cuenta con la tecnologia Darkfield Navegacion precisa Diseño confortable Cuenta con cargador micro usb. Cuenta con la tecnologia Unyfying',1444.00,'2016-05-08',1,1,8),
('Mochila Para Laptop 17','Mochila para Laptop 17" Mobile Edge Alienware Vindicator Modelo AWVBP17','Máximo confort bajo cualquier carga: El panel reforzado, acolchado, moldeado y con ventilación posterior proporciona soporte mientras la costumbre acolchado y correas de los hombros y el pecho con aire de malla ajustable asegurar su comodidad mientras que la distribución del peso de su equipo. El Alienware Vindicador mochila tiene un diseño moderno y elegante que refleja el diseño industrial portátil Nueva Alienware. El exterior de nylon de alta densidad construida artículo protege su engranaje en estilo mientras que la cabeza Alienware icónica permite a todos saber que usted habla en serio.',2350.00,'2016-05-08',1,1,10),
('Pantalon Tactico Casual Idd','Estos pantalones se pueden acomodar típicos de 1,5 "y 1,75" correas (se venden por separado).','Estos pantalones se pueden acomodar típicos de 1,5 "y 1,75" correas (se venden por separado). Un total de 8 bolsillos! 60% algodón / 40% poliéster rip-stop tela Fundido de tela resistente Diamond Fuelle entrepierna Cintura Elastic Band Grandes bolsas de Carga One D-Ring Por Pocket Cargo Doble la rodilla Tela Aeropuerto friendly Hardware, Heavy Duty Asiento doble Dos bolsillos delanteros de hendidura Dual Front D Anillos Construido en el Strings blousing Slanted Flaps Carga de bolsillo para el acceso Seated Zipper mosca
100 %ÔRIGINALES Y NUEVOS.
GARANTIZADOS.
ENTREGADO EN TU PUERTA EN MENOS DE 5 DIAS HABILES.
SE ACEPTAN PEDIDOS A MEDIO MAYOREO , DESCUENTO A REVENDEDORES
TODA LA LINEA TACTICA,UNIFORMES Y ACCESORIOS.
DISTRIBUIMOS A TODA LA REPUBLICA MEXICANA.
BLACK KNIGHT SECURITY MEXICO',890.00,'2016-05-08',1,4,2),
('Playera Civil War','PLAYERA CIVIL WAR CAPITÁN AMÉRICA VS IRON MAN ARMADURA','Modelo: AMCW002M
Peso: 106 g/m2
Tejido: Chifón 100% algodón. 
¡Producto para venta exclusiva en México!',220.00,'2016-05-09',1,4,5),
('Mica Cristal Templado ','Mica Cristal Templado Curvo 9h Samsung Galaxy S7 Edge','nfinite Wishes
Tiene para ti
Mica Protectora de Cristal Templado
Samsumg Galaxy S7 edge
Grado de dureza 9H
Transparente, Plata, Dorada, Negra, Azul y Blanca.
Seguridad total para tu pantalla protegiendo ambas curvas de tu S7 edge

¡Atención a mayoristas con los mejores precios del mercado!

En Infinite Wishes estamos comprometidos con la satisfacción de nuestros clientes
Por lo que siempre te hablamos claro',345.00,'2016-05-09',1,1,7);

/*--TABLA PUBLICIDAD_PRODUCTO----------------------------------------------------------------------------*/

INSERT INTO publicidad_producto (pub_monto_pagado,pub_imagen,pub_meses,pub_fecha,id_producto) VALUES (0.00,'0',0,NULL,1),
                                (60.00,'0',2,'2016-05-09',2),
                                (100.00,'3',2,'2016-04-12',3),
                                (0.00,'0',0,NULL,4),
                                (100.00,'5',2,'2016-03-06',5),
                                (50.00,'6',1,'2016-07-09',6),
                                (0.00,'0',0,NULL,7),
                                (150.00,'8',3,'2016-06-15',8),
                                (30.00,'0',1,'2016-04-12',9),
                                (0.00,'0',0,NULL,10);
                           
/*--TABLA CATEGORIA_NEGOCIO------------------------------------------------------------------------------*/                        
                           
 INSERT INTO categoria_negocio (cat_neg_nombre) VALUES ('Alimentos y bebidas'),
                                      ('Arrendamiento'),
                                      ('Bar'),
                                      ('Computadoras y celulares'),
                                      ('Contables'),
                                      ('Créditos y finanzas'),
                                      ('Cyber café'),
                                      ('Domésticos'),
                                      ('Educación'),
                                      ('Electricidad'),
                                      ('Electrónica'),
                                      ('Entretenimiento'),
                                      ('Ferrotlapalería'),
                                      ('Internet'),
                                      ('Jurídicos'),
                                      ('Mecánico'),
                                      ('Música y audio'),
                                      ('Papelería'),
                                      ('Publicidad'),
                                      ('Purificadora'),
                                      ('Salón de eventos'),
                                      ('Salubridad'),
                                      ('Salud y belleza'),
                                      ('Seguros'),
                                      ('Comercial'),
                                      ('Transporte');
                                      
/*--TABLA COLONIA_NEGOCIO------------------------------------------------------------------------------*/                        
                           
 INSERT INTO colonia_negocio (direc_colonia,direc_codigo_postal) VALUES ('Constituyentes','77249'),
                            ('Cecilio Chi','77230'),
                            ('Emiliano Zapata','77229'),
                            ('Francisco May','77240'),
                            ('Centro','77200'),
                            ('Juan Bautista Vega','77250'),
                            ('Javier Rojo Gómez','77259'),
                            ('Leona Vicario','77210'),
                            ('Lázaro Cárdenas','77239'),
                            ('Martínez Ross','77220'),
                            ('Plan de Ayala','77214'),
                            ('Plan de Ayutla','77215'),
                            ('Plan de la Noria','77217'),
                            ('Plan de Guadalupe','77216'),
                            ('Rafel E Melgar','77238');
                           
/*--TABLA NEGOCIO------------------------------------------------------------------------------*/                        
                           
 INSERT INTO negocio (neg_nombre,neg_coordenadas,neg_telefono,neg_fecha_publicacion,neg_descripcion_breve,neg_descripcion_general,neg_correo,neg_calle,neg_cruzamiento,neg_referencia,neg_red_social,neg_img_busqueda,id_categoria_negocio,id_persona,id_colonia_negocio) VALUES ('Office Depot','1316494-46464469','9841228408','2016-04-21','En Office Depot puedes encontrar todo lo neceites en tu oficina y escuela','ffice DEPOT® de México abre sus puertas un 23 de Marzo de 1995 gracias a la alianza estratégica formada por Office DEPOT Inc. (Delray Beach, Florida, EEUU) y Grupo Gigante (Ciudad de México), con la idea de establecer en México el concepto de bodega de artículos de oficina. Este concepto vino a revolucionar no solo la venta de artículos de oficina, sino que creó un nuevo concepto de venta para artículos escolares, muebles, computadoras y electrónicos, buscando trasladar los beneficios de la compra al mayoreo a los consumidores finales.','officedepot@gmail.com','Galaxia','Entre jupiter y neptuno','Enfrente de don wicho.','', 1,20,4,1),
                           ('OfficeMax','54616516-119496896','9845552412','2016-04-21','Venta de suministros para oficinas, con entrega en su oficina, empresa o negocio.','Somos una cadena comercial de artículos de oficina y papelería, líder en el ramo. Iniciamos operaciones en México en 1996, ofreciendo un amplio catálogo de productos de calidad y un servicio confiable que hoy por hoy nos ha colocado dentro de la preferencia de nuestros clientes, que van desde estudiantes y padres de familia; micro-negocios y PYMES; hasta corporativos, instituciones educativas y de gobierno.','officemax@gmail.com','Benito Juarez','Entre Pepe y Juan','Enfrente de la casa de Uex','',1,20,5,2),
                           ('Tony tiendas','5164629-451484','9835269752','2016-04-22','Encuentra los horarios y teléfonos de las tiendas Tony Super Papelerías más cercanas a ti.','Tonu inicia operaciones en el año 1959, distinguiendose desde su inicio por ofrecer la más amplia variedad de articulos de los mejores fabricantes y siempre al más bajo precio. Es la fuerza de gente lo que ha hecho de Tony la empresa de super Papelerías más grande e importante del país.','tony@hotmail.com','Solaris','Entre Jose Francisco y Julion','A un lado de la baticueva','',1,16,1,3),
                           ('Sams club','164697-4664946','9838547159','2016-04-23','SAMS CLUB es una marca registrada de Nueva Wal-Mart de México S. de R.L. de C.V. Todos los derechos reservados.','Contamos con respaldo Wal-MArt, lo que nos da un gran poder de negociación en beneficio de nuestros socio. Al vender nuestra Membresía obtenemos mayor capacidad económica para negociar con anticipacióin el mejor precio para nuestros Socios.','samsclub@gmail.com','Ruiseñor','Entre Rocku y Balboa','A un costado de Aurrera','',1,20,6,4),
                           ('Chedraui','5416616-16546','9838475215','2016-04-24','Descubre las últimas ofertas de Chedraui en los catálogos y folletos online, y la información de sus tiendas','Al mes de Julio del 2015 contamos con 218 sucursales, de las cuales 152 son Tienda Chedraui, 51 Súper Chedraui, 15 tiendas en formato Selecto y contamos con 50 Tiendas El Super en Estados Unidos, a nivel compañía somos más de 35,000 colaboradores.','cheraui@hotmail.com','oropendula','Entre Bautista y Benito','Frente al Tec','',1,20,7,5),
                           ('Gropo Boxito','1518975-32525245','9842156325','2016-05-08','Todo para construccion, no lo pienses más..!','"Empresa líder con un modelo de negocio diferenciado, con presencia nacional e internacional, atractiva para el desarrollo de talento, capaz de duplicarse cada cinco años, siendo la solución integral para sus clientes logrando su recomendación a través de ahorita lo pides, ahorita lo tienes"','boxito@gmail.com','el negro','Entre 68 y 45','Frente al poder judicial','',1,21,6,6),
                           ('Coppel','14481454-45648456','9856322145','2016-05-08','Endeuda tu vida','Todo lo que compres en coppel por credito, te endeuda con sus intereses, al contado esta chevre.','coppel@hotmaol.com','El boxo','Entre 85 y 86','A lado de los valitos','',1,20,4,7),
                           ('Niplito','4155824-4121455','9842548546','2016-05-08','Conoce y aprovecha los multiples beneficios que te ofrecemos','Es un negocio dedicado a la construcción de una casa desde herramientas hasta piunturas, asi como también plomería y electrónica.','niplito@gmail.com','Chift','Entre 96 y 98','detrás del Oxxo','',1,21,1,8),
                           ('Banco Azteca','15496-51364','9865246245','2016-05-09','Banco Azteca es un banco que te ofrece, créditos y finanzas con seguridad.','anco Azteca es un banco que nació en octubre del 2002, ante la oportunidad derivada del bajo nivel de bancarización en México. El Banco está orientado al sector de menores ingresos, que representa un 70% de la población no atendida por los bancos tradicionales. Una gran ventaja desde el inicio de operaciones, fue la experiencia de más de 60 años de Grupo Elektra en el otorgamiento de crédito a dicho sector.','banco_azteca@gmail.com','Quetzal','Entre 52 y 54','Con Bernachif','',1,2,5,9),
                           ('Banamex','215545-5225452','9852145268','2016-05-09','Banamex ofrece los mejores productos y servicios financieros.', 'Tarjetas de Crédito, Créditos hipotecarios, Créditos personales, todo esto te ofrece banamex con toda la segurudad integrada, para administrar bien tu economía y finanzas.','banamex@hotmail.com','La serpiente','Entre 74 y 76','A lado del niño','',1,2,3,10);

/*--TABLA PUBLICIDAD_NEGOCIO----------------------------------------------------------------------------*/

INSERT INTO publicidad_negocio (pub_monto_pagado,pub_imagen,pub_meses,pub_fecha,id_negocio) VALUES (100.00,'1',2,'2016-05-09',1),
                                (0.00,'0',0,NULL,2),
                                (60.00,'0',2,'2016-05-15',3),
                                (0.00,'0',0,NULL,4),
                                (120.00,'0',4,'2016-04-09',5),
                                (0.00,'0',0,NULL,6),
                                (30.00,'0',1,'2016-03-20',7),
                                (350.00,'8',7,'2016-04-09',8),
                                (0.00,'0',0,NULL,9),
                                (200.00,'10',4,'2016-06-30',10);
                           

/*--TABLA CATEGORIA_SERVICIO------------------------------------------------------------------------------*/                        
                           
 INSERT INTO categoria_servicio (cat_ser_nombre) VALUES ('Albañilería'),
                                       ('Alimentos y bebidas'),
                                       ('Arrendamiento'),
                                       ('Computadoras y celulares'),
                                       ('Contables'),
                                       ('Créditos y finanzas'),
                                       ('Domésticos'),
                                       ('Educación'),
                                       ('Electricidad'),
                                       ('Electrónica'),
                                       ('Entretenimiento'),
                                       ('Internet'),
                                       ('Jurídicos'),
                                       ('Mecánico'),
                                       ('Música y audio'),
                                       ('Organización de eventos'),
                                       ('Plomería'),
                                       ('Publicidad'),
                                       ('Salubridad'),
                                       ('Salud y belleza'),
                                       ('Transporte');
 
                           
/*--TABLA COLONIA_SERVICIO------------------------------------------------------------------------------*/            
                           
 INSERT INTO colonia_servicio (direc_colonia,direc_codigo_postal) VALUES ('Constituyentes','77249'),
                            ('Cecilio Chi','77230'),
                            ('Emiliano Zapata','77229'),
                            ('Francisco May','77240'),
                            ('Centro','77200'),
                            ('Juan Bautista Vega','77250'),
                            ('Javier Rojo Gómez','77259'),
                            ('Leona Vicario','77210'),
                            ('Lázaro Cárdenas','77239'),
                            ('Martínez Ross','77220'),
                            ('Plan de Ayala','77214'),
                            ('Plan de Ayutla','77215'),
                            ('Plan de la Noria','77217'),
                            ('Plan de Guadalupe','77216'),
                            ('Rafel E Melgar','77238');
                           
/*--TABLA SERVICIO------------------------------------------------------------------------------*/                        
                           
 INSERT INTO servicio (ser_nombre,ser_descripcion_breve,ser_descripcion_general,ser_fecha_publicacion,ser_calle,ser_cruzamiento,ser_referencia,ser_red_social,id_categoria_servicio,id_persona,id_colonia_servicio) VALUES ('Mantenimiento de computo','Mantenimiento de computadoras a domicilio.','Se manejan precios accesibles, puede preguntar por cualquier paquete que ustes quiera conusltar, para más información puede hacer una llamada.','2016-04-21','De los animales','Entre hormiga y codorniz','Atrás del mercado','',4,5,1),
                           ('Mecanico','Tenemos los mejores precios y servicios automotriz','Tenemos varios tipos de refacciones así como originales, se pueden hacer pedidos. Contamos con serrvicios de balanceo y contamos con nitrigeno.','2016-04-21','Golondrina','Entre Javier antonio y Francisco May','A un costado de chedraui','',5,8,2),
                           ('Plomería','Servicio de plomería a domicilio, el mejor servicio..!','Cuento con habilidades para reparar caños rotos, instalación de tuberías normales y complejas.','2016-04-22','Liebre','Entre Flabio Y eugenio','A un lado del poder judicial','',17,6,3),
                           ('Taller de Bicicletas','Reparacion de biciletas con precios accesibles','Se reparan bicicletas, se venden refacciones, se engrasan y tambien contamoscon sistema de pedido.','2016-04-22','EL gallo','Entre paquita y Del barrio','A un costado del parque de las madres','',5,9,4),
                           ('Electricista','Servicio a domicilio con los mejores precios','Ofresco el servicio a domicilio de electricista, cuento con habilidades para reparación e instalacion de cables electricos en su hogar tomando en cuenta la segurudad.','2016-04-23','Hormiga','Entre Lazaro y Pedro','En frente del Conalep','',6,1,5),
                           ('Alnañiles','Servicio de construccion de calidad','Ofrecemos un buen servicio de calidad, hacemos cotizaciones de cualquier construccion, y construimos arte maya.','2016-05-08','Stax','Entre 25 y 28','Frente al parque de la croc','',20,6,6),
                           ('Vanes foráneas','El mejor transporte de carrillo','Tenemos diferentes tarifas y rutas para que llegues a tu destino, con un precio totalmente económico','2016-05-08','El tiburón','Entre 56 y 58','frente a Aristoss','',1,6,7),
                           ('Renta de trajes','Los mejores trajes para tus fiestas','Es un servicio de rentas de trajes de novia, de novios o inclusive para grduaciones, con precios económicos, sino, que le pregumten a Valito.','2016-05-08','El gallito','Entre 11 y 13','Frente al mercado','',18,2,8),
                           ('ADO','El mejor servicio en viajes cómodos.','Te ofrecemos servicios de autobus con los mejores precios y calidad, con diferentes clases.','2016-05-09','Don Wicho','Entre 69 y 70','A un costado de Nefta','',18,4,9),
                           ('Renta de bicicletas','Las mejores bicicletas económicas','Un servicio de renta de bicicletas al mejor precio, y con las mejores marcas de bicicletas en el mercado','2016-05-09','Chama','Entre 24 y 26','Por la taberna','',18,1,10);
                           
/*--TABLA PUBLICIDAD_SERVCIO----------------------------------------------------------------------------*/

INSERT INTO publicidad_servicio (pub_monto_pagado,pub_imagen,pub_meses,pub_fecha,id_servicio) VALUES (50.00,'1',1,'2016-05-09',1),
                                (0.00,'0',0,NULL,2),
                                (60.00,'0',2,'2016-04-09',3),
                                (0.00,'0',0,NULL,4),
                                (250.00,'5',5,'2016-06-08',5),
                                (0.00,'0',0,NULL,6),
                                (90.00,'0',3,'2016-05-18',7),
                                (150.00,'0',5,'2016-05-30',8),
                                (0.00,'0',0,NULL,9),
                                (100.00,'10',2,'2016-05-31',10);

/*--TABLA ADMINISTRADOR------------------------------------------------------------------------------*/ 
                           
INSERT INTO administrador (admin_usuario,admin_contrasenia,admin_tipo) VALUES ('Carlos','carlitos',1),
                            ('Valito','elmalito',1),
                            ('Eric','ericsito',1);
  
/*--TABLA FECHA------------------------------------------------------------------------------*/                          
INSERT INTO fecha (fec_fecha) VALUES ('2016-05-20');
                           
                           
                           
                           