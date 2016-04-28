--TABLA USUARIO------------------------------------------------------------------------------

INSERT INTO usuario VALUES ('espadas950@gmail.com','1234'),
                           ('ernestovalent@gmail.com','valito'),
                           ('marquitos.pech@gmail.com','marcos'),
                           ('carlos_cituc@hotmail.com','carlos'),
                           ('felipe.tun@yahoo.com','felipito'),
                           ('elu_niño@gmail.com','elniño'),
                           ('berna.gatita@hotmail.com','barnabilitis'),
                           ('uex69@gmail.com','feo'),
                           ('eliezer_balam@outlook.com','santos'),
                           ('raul@gmail.com','pit');
                           

--TABLA PERSONA------------------------------------------------------------------------------                        
                           
 INSERT INTO persona VALUES ('Eric Rodrigo','Espadas Ku','espadas950@gmail.com',0,'9841228408',0,'',0,1),
                            ('Ernesto Valentin','Caamal Peech','ernestovalent@gmail.com',0,'9842548841',0,'',0,2),
                            ('Marcos','Pech Cruz','marquitos.pech@gmail.com',0,'9835412589',0,'',0,3),
                            ('Carlos Alberto','Cituc Chab','carlos_cituc@hotmail.com',0,'9833694582',0,'',0,4),
                            ('Luis Felipe','Tun Poot','felipe.tun@yahoo.com',0,'9832547895',0,'',0,5),
                            ('ELiu','Puc Puc','eliu_niño@gmail.com',0,'9834597854',0,'',0,6),
                            ('Bernabe','Cituk Caamal','berna.gatita@hotmail.com',0,'9834569875',0,'',0,7),
                            ('Victor','Uex Mis','uex69@gmail.com',0,'9835698546',0,'',0,8),
                            ('Eliezer','Balam Santos','eliezer_balam@outlook.com',0,'9834529872',0,'',0,9),
                            ('Raul Enrique','Dzids Ku','raul@gmail.com',0,'9836984256',0,'',0,10);                           
                        
--TABLA CATEGORIA_PRODUCTO------------------------------------------------------------------------------                        
                           
 INSERT INTO categoria_producto VALUES ('Computación y electrónica'),
                                        ('Electrodomésticos'),
                                        ('Salud y belleza'),
                                        ('Ropa y calzado'),
                                        ('Muebles'),
                                        ('Vehículo'),
                                        ('Mascotas'),
                                        ('Herramientas'),
                                        ('Refacciones'),
                                        ('Entretenimiento'),
                                        ('Deportes'),
                                        ('Inmuebles'),
                                        ('Arte y antigüedades'),
                                        ('Instrumentos musicales y audio'),
                                        ('Otros');
                           

--TABLA PRODUCTO------------------------------------------------------------------------------                        
                           
 INSERT INTO producto VALUES ('Memoria RAM','Memoria RAM Kingston','El consejo JEDEC dicta los estándares de ingeniería de los productos de semiconductores y es el ente de estandarización de productos de semiconductores de la Alianza de Industrias Electrónicas (EIA, por su sigla en inglés). Aproximadamente unas 300 compañías que representan a todos los segmentos de la industria participan activamente en el desarrollo de estándares con el fin de satisfacer las necesidades de la industria. Como miembro de hace muchos años de la Junta Directiva del JEDEC, Kingston Technology contribuye a establecer los estándares de tecnología que rigen la industria de los productos de memoria. Todos los productos de memoria de Kingston cumplen con las especificaciones del JEDEC, que se encuentra entre las más importantes de las utilizadas por los fabricantes de productos de semiconductores.',2500.00,150.00,'2016-04-21','imagen1','',1,3),
                           ('USB ADATA','USB ADATA 16 GB, soporta reproduccion de video y audio 4K.','
El UE710 se adapta a una amplia audiencia mediante la combinación de la conectividad Rayo y USB certificado por Apple. Es compatible con los dispositivos iPhone, iPad y iPod, que permite la transferencia de datos, así como Ultra HD 4K de vídeo - los usuarios de desagüe de ancho de banda limitado con el intercambio de contenidos y el disfrute directo. Para archivos de gran tamaño y el compromiso social, unidades flash USB de primera calidad como la UE710 siguen siendo superiores a mover el contenido a través de Internet.',600.00,200.00,'2016-04-21','Imagen2','',1,5),
                           ('Columpios (shackles)','Columpios (shackles) Para Cherokee Sport Xj + 2 Pulgadas.','Estos columpios aumentan la altura en la suspension trasera de tu Jeep Cherokee Sport XJ  dos pulgadas. Estan fabricadas en placa de 2" ancho y el espesor es de 1/4" son indestructibles.
La instalacion es sencilla y sin tener que efectuar adaptaciones, se colocan de manera directa.',1080.00,100.00,'2016-04-22','Imagen1','',9,8),
                           ('Anuncio Antiguo De Chiclets Adams','Ponemos a la venta este anuncio antiguo de chiclets adams hecho de lamina fecha de 1951.
El anuncio se encuentra en muy buenas condiciones, muestra algunas ligeras rayaduras, fue hecho en Monterrey por la fabrica Famosa.
El anuncio mide 35.5 x 18 cms.','Antes de realizar la compra, lea con atención los siguientes puntos:
Estamos a sus órdenes para contestar cualquier duda que tenga. Favor de aclarar  cualquier inquietud que se le presente antes de realizar la compra.
Al momento de realizar la compra, se  adquiere un compromiso con el vendedor de pagar la pieza y concretar la operación, USTED es quien esta decidiendo hacer la compra.
Es muy importante que si ya decidió hacer la compra cuente con el dinero para pagar la pieza.
Toda compra en falso ocasionara que le ponga una calificación NEGATIVA, no se arriesgue a perjudicar su reputación.
Puede tener la seguridad y la confianza que su compra es totalmente segura con nosotros, revise nuestra reputación 100% positiva, todos nuestros clientes han estado totalmente satisfechos.
Puede realizar su pago por medio de cualquier tarjeta de crédito o debito directamente con nosotros y sin comisión.',1100.00,250.00,'2016-04-22','Imagen1','',13,9),
                           ('Par De Pesas Mancuernas','Par De Pesas Mancuernas 36 Libras, Profesional 100% Metal.','2 mancuernas con discos intercambiables.
incluye.
2 barras metálicas con seguros estrella atornillables. 3 Kg. ( 6 libras)
4 discos de 2 Kg (16 libras)
4 discos de 1 Kg ( 8 libras)
4 discos de .5 kg ( 4 libras)
total. 17 kilos igual a 34 libras.
todo nuevo y 100% metal',575.00,150.00,'2016-04-23','Imagen1','',3,4);
                           
--TABLA CATEGORIA_NEGOCIO------------------------------------------------------------------------------                        
                           
 INSERT INTO categoria_negocio VALUES ('Transporte'),
                                      ('Créditos y finanzas'),
                                      ('Seguros'),
                                      ('Mantenimiento de cómputo y/o electrónica'),
                                      ('Mecánico'),
                                      ('Electricidad y/o electrónica'),
                                      ('Jurídicos'),
                                      ('Contables'),
                                      ('Salón de eventos'),
                                      ('Educación'),
                                      ('Arrendamientos inmuebles'),
                                      ('Entretenimiento'),
                                      ('Salubridad'),
                                      ('Alimentos y bebidas'),
                                      ('Internet'),
                                      ('Cyber y/o papelería'),
                                      ('Agua'),
                                      ('Domésticos'),
                                      ('Belleza y salud'),
                                      ('Comerciales');
                                      
--TABLA COLONIA_NEGOCIO------------------------------------------------------------------------------                        
                           
 INSERT INTO colonia_negocio VALUES ('Ejido','77200'),
                            ('Chemuyil','77780'),
                            ('Juan Bautista','77520'),
                            ('El bosque','78954'),
                            ('San Francisco','89632');
                           
--TABLA NEGOCIO------------------------------------------------------------------------------                        
                           
 INSERT INTO negocio VALUES ('Office Depot',200.00,'1316494-46464469','9841228408','2016-04-21','En Office Depot puedes encontrar todo lo neceites en tu oficina y escuela','ffice DEPOT® de México abre sus puertas un 23 de Marzo de 1995 gracias a la alianza estratégica formada por Office DEPOT Inc. (Delray Beach, Florida, EEUU) y Grupo Gigante (Ciudad de México), con la idea de establecer en México el concepto de bodega de artículos de oficina. Este concepto vino a revolucionar no solo la venta de artículos de oficina, sino que creó un nuevo concepto de venta para artículos escolares, muebles, computadoras y electrónicos, buscando trasladar los beneficios de la compra al mayoreo a los consumidores finales.','officedepot@gmail.com','Imagen','logo','Galaxia','Entre jupiter y neptuno','Enfrente de don wicho.','',20,4,1),
                           ('OfficeMax',250.00,54616516-119496896,'9845552412','2016-04-21','Venta de suministros para oficinas, con entrega en su oficina, empresa o negocio.','Somos una cadena comercial de artículos de oficina y papelería, líder en el ramo. Iniciamos operaciones en México en 1996, ofreciendo un amplio catálogo de productos de calidad y un servicio confiable que hoy por hoy nos ha colocado dentro de la preferencia de nuestros clientes, que van desde estudiantes y padres de familia; micro-negocios y PYMES; hasta corporativos, instituciones educativas y de gobierno.','officemax@gmail.com','imagen','logo','Benito Juarez','Entre Pepe y Juan','Enfrente de la casa de Uex','',20,5,2),
                           ('Tony tiendas',300.00,'5164629-451484','9835269752','2016-04-22','Encuentra los horarios y teléfonos de las tiendas Tony Super Papelerías más cercanas a ti.','Tonu inicia operaciones en el año 1959, distinguiendose desde su inicio por ofrecer la más amplia variedad de articulos de los mejores fabricantes y siempre al más bajo precio. Es la fuerza de gente lo que ha hecho de Tony la empresa de super Papelerías más grande e importante del país.','tony@hotmail.com','imagen','logo','Solaris','Entre Jose Francisco y Julion','A un lado de la baticueva','',16,1,3),
                           ('Sams club',150.00,'164697-4664946','9838547159','2016-04-23','SAMS CLUB es una marca registrada de Nueva Wal-Mart de México S. de R.L. de C.V. Todos los derechos reservados.','Contamos con respaldo Wal-MArt, lo que nos da un gran poder de negociación en beneficio de nuestros socio. Al vender nuestra Membresía obtenemos mayor capacidad económica para negociar con anticipacióin el mejor precio para nuestros Socios.','samsclub@gmail.com','imagen','logo','Ruiseñor','Entre Rocku y Balboa','A un costado de Aurrera','',20,6,4),
                           ('Chedraui',250.00,'5416616-16546','9838475215','2016-04-24','Descubre las últimas ofertas de Chedraui en los catálogos y folletos online, y la información de sus tiendas','Al mes de Julio del 2015 contamos con 218 sucursales, de las cuales 152 son Tienda Chedraui, 51 Súper Chedraui, 15 tiendas en formato Selecto y contamos con 50 Tiendas El Super en Estados Unidos, a nivel compañía somos más de 35,000 colaboradores.','cheraui@hotmail.com','imagen','logo','oropendula','Entre Bautista y Benito','Frente al Tec','',20,7,5);   
                           

--TABLA CATEGORIA_SERVICIO------------------------------------------------------------------------------                        
                           
 INSERT INTO categoria_servicio VALUES ('Transporte'),
                                       ('Créditos y finanzas'),
                                       ('Seguros'),
                                       ('Mantenimiento de cómputo y/o electrónica'),
                                       ('Mecánico'),
                                       ('Electricidad y/o electrónica'),
                                       ('Jurídicos'),
                                       ('Contables'),
                                       ('Salón de eventos'),
                                       ('Educación'),
                                       ('Arrendamientos inmuebles'),
                                       ('Entretenimiento'),
                                       ('Salubridad'),
                                       ('Alimentos y bebidas'),
                                       ('Internet'),
                                       ('Abastecimiento de agua potable'),
                                       ('Domésticos'),
                                       ('Belleza y salud'),
                                       ('Difusión');
 
                           
--TABLA COLONIA_SERVICIO------------------------------------------------------------------------------                        
                           
 INSERT INTO colonia_servicio VALUES ('El solar','12546'),
                                      ('El gallo','66523'),
                                      ('El monte','33365'),
                                      ('San Juan','99965'),
                                      ('Hernán Cortez','77751');      
                           
--TABLA SERVICIO------------------------------------------------------------------------------                        
                           
 INSERT INTO servicio VALUES ('Mantenimiento de computo','Mantenimiento de computadoras a domicilio.','Se manejan precios accesibles, puede preguntar por cualquier paquete que ustes quiera conusltar, para más información puede hacer una llamada.',150.00,'2016-04-21','imagen','De los animales','Entre hormiga y codorniz','Atrás del mercado','',4,5,1),
                           ('Mecanico','Tenemos los mejores precios y servicios automotriz','','Tenemos varios tipos de refacciones así como originales, se pueden hacer pedidos. Contamos con serrvicios de balanceo y contamos con nitrigeno.',250.00,'2016-04-21','imagen','Golondrina','Entre Javier antonio y Francisco May','A un costado de chedraui','',5,8,2),
                           ('Plomería','Servicio de plomería a domicilio, el mejor servicio..!','Cuento con habilidades para reparar caños rotos, instalación de tuberías normales y complejas.',100.00,'2016-04-22','imagen','Liebre','Entre Flabio Y eugenio','A un lado del poder judicial','',17,6,3),
                           ('Taller de Bicicletas','Reparacion de biciletas con precios accesibles','Se reparan bicicletas, se venden refacciones, se engrasan y tambien contamoscon sistema de pedido.',250.00,'2016-04-22','imagen','EL gallo','Entre paquita y Del barrio','A un costado del parque de las madres','',5,9,4),
                           ('Electricista','Servicio a domicilio con los mejores precios','Ofresco el servicio a domicilio de electricista, cuento con habilidades para reparación e instalacion de cables electricos en su hogar tomando en cuenta la segurudad.',150.00,'2016-04-23','imagen','Hormiga','Entre Lazaro y Pedro','En frente del Conalep','',6,1,5);
                           
--TABLA ADMINISTRADOR------------------------------------------------------------------------------ 
                           
INSERT INTO administrador VALUES ('Carlos','carlitos',1),
                            ('Valito','elmalito',1),
                            ('Eric','ericsito',1);
                           
                           
                           
                           
                           
                           

                           
                           
                           
                           
                           
                           
                           