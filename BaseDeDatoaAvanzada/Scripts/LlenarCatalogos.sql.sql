-- TABLA ACC_PRINCIPAL --
INSERT INTO enemduVIVIENDAS.acc_principal VALUES (1, 'Carretera/Calle pavimentada o adoquinada');
INSERT INTO enemduVIVIENDAS.acc_principal VALUES (2, 'Empedrado');
INSERT INTO enemduVIVIENDAS.acc_principal VALUES (3, 'Lastrado/Calle de tierra');
INSERT INTO enemduVIVIENDAS.acc_principal VALUES (4, 'Sendero');
INSERT INTO enemduVIVIENDAS.acc_principal VALUES (5, 'Rio/Mar');
INSERT INTO enemduVIVIENDAS.acc_principal VALUES (6, 'Otro...');

-- TABLA TIPO_VIVIENDA --
INSERT INTO enemduVIVIENDAS.tipo_vivienda VALUES (1, 'Casa o villa');
INSERT INTO enemduVIVIENDAS.tipo_vivienda VALUES (2, 'Departamento');
INSERT INTO enemduVIVIENDAS.tipo_vivienda VALUES (3, 'Cuartos en casa de inquilinato');
INSERT INTO enemduVIVIENDAS.tipo_vivienda VALUES (4, 'Mediagua');
INSERT INTO enemduVIVIENDAS.tipo_vivienda VALUES (5, 'Rancho, Covacha');
INSERT INTO enemduVIVIENDAS.tipo_vivienda VALUES (6, 'Choza');
INSERT INTO enemduVIVIENDAS.tipo_vivienda VALUES (7, 'Otro...');
            
-- TABLA TECenemduVIVIENDAS
INSERT INTO enemduVIVIENDAS.techo_vivienda VALUES (1, 'Hormigon (losa, cemento)');
INSERT INTO enemduVIVIENDAS.techo_vivienda VALUES (2, 'Ficrocemento, asbesto(eternit, eurolit');
INSERT INTO enemduVIVIENDAS.techo_vivienda VALUES (3, 'Zinc, Aluminio');
INSERT INTO enemduVIVIENDAS.techo_vivienda VALUES (4, 'Teja');
INSERT INTO enemduVIVIENDAS.techo_vivienda VALUES (5, 'Palma, paja u hoja');
INSERT INTO enemduVIVIENDAS.techo_vivienda VALUES (6, 'Otro Material...');

-- TABLA PISenemduVIVIENDAS
INSERT INTO enemduVIVIENDAS.piso_vivienda VALUES (1, 'Duela, parquet, tablon tratado o piso flotante');
INSERT INTO enemduVIVIENDAS.piso_vivienda VALUES (2, 'Ceramica, baldosa, vinil o porcalanato');
INSERT INTO enemduVIVIENDAS.piso_vivienda VALUES (3, 'Marmol o marmeton');
INSERT INTO enemduVIVIENDAS.piso_vivienda VALUES (4, 'Ladrillo o cemento');
INSERT INTO enemduVIVIENDAS.piso_vivienda VALUES (5, 'Tabla/tablon no tratado');
INSERT INTO enemduVIVIENDAS.piso_vivienda VALUES (6, 'Caña');
INSERT INTO enemduVIVIENDAS.piso_vivienda VALUES (7, 'Tierra');
INSERT INTO enemduVIVIENDAS.piso_vivienda VALUES (8, 'Otro Material...');

-- TABLA PARenemduVIVIENDAS-
INSERT INTO enemduVIVIENDAS.paredes_vivienda VALUES (1, 'Hormigon/bloque/ladrillo');
INSERT INTO enemduVIVIENDAS.paredes_vivienda VALUES (2, 'Asbesto/cemento(Fibrolit)');
INSERT INTO enemduVIVIENDAS.paredes_vivienda VALUES (3, 'Adobe/tapia');
INSERT INTO enemduVIVIENDAS.paredes_vivienda VALUES (4, 'Madera');
INSERT INTO enemduVIVIENDAS.paredes_vivienda VALUES (5, 'Bahareque(caña, carrizo revestido)');
INSERT INTO enemduVIVIENDAS.paredes_vivienda VALUES (6, 'Caña o estera');
INSERT INTO enemduVIVIENDAS.paredes_vivienda VALUES (7, 'Otra...');

-- TABLA ESTenemduVIVIENDAS
INSERT INTO enemduVIVIENDAS.estado VALUES (1, 'Bueno');
INSERT INTO enemduVIVIENDAS.estado VALUES (2, 'Regular');
INSERT INTO enemduVIVIENDAS.estado VALUES (3, 'Malo');

-- TABLA COMenemduVIVIENDAS --
INSERT INTO enemduVIVIENDAS.combustibleCocina VALUES (1, 'Gas');
INSERT INTO enemduVIVIENDAS.combustibleCocina VALUES (2, 'Lena, carbon');
INSERT INTO enemduVIVIENDAS.combustibleCocina VALUES (3, 'Electricidad');
INSERT INTO enemduVIVIENDAS.combustibleCocina VALUES (4, 'Otro...');

-- TABLA SERenemduVIVIENDAS--
INSERT INTO enemduVIVIENDAS.servicioHigienico VALUES (1, 'Excusado y alcantarillado');
INSERT INTO enemduVIVIENDAS.servicioHigienico VALUES (2, 'Excusado y pozo septico');
INSERT INTO enemduVIVIENDAS.servicioHigienico VALUES (3, 'Excusado y pozo ciego');
INSERT INTO enemduVIVIENDAS.servicioHigienico VALUES (4, 'Letrina');
INSERT INTO enemduVIVIENDAS.servicioHigienico VALUES (5, 'No tiene');

-- TABLA NOSenemduVIVIENDASO --
INSERT INTO enemduVIVIENDAS.noServicioHigienico VALUES (1, 'Descarga directa al mar, rio, lago o quebrada');
INSERT INTO enemduVIVIENDAS.noServicioHigienico VALUES (2, 'Van al monte, campo, bota la basura en paquete');
INSERT INTO enemduVIVIENDAS.noServicioHigienico VALUES (3, 'Usan una instalacion sanitaria cercana y/o prestada');

-- TABLA SANenemduVIVIENDAS-
INSERT INTO enemduVIVIENDAS.sanitarioCercano VALUES (1, 'Excusado y alcantarillado');
INSERT INTO enemduVIVIENDAS.sanitarioCercano VALUES (2, 'Excusado y pozo séptico');
INSERT INTO enemduVIVIENDAS.sanitarioCercano VALUES (3, 'Excusado y poso ciego');
INSERT INTO enemduVIVIENDAS.sanitarioCercano VALUES (4, 'Letrina');

-- TABLA SERenemduVIVIENDAS
INSERT INTO enemduVIVIENDAS.servicioAgua VALUES (1, 'Red pública');
INSERT INTO enemduVIVIENDAS.servicioAgua VALUES (2, 'Pila o llave pública');
INSERT INTO enemduVIVIENDAS.servicioAgua VALUES (3, 'Otra fuente por tuberia');
INSERT INTO enemduVIVIENDAS.servicioAgua VALUES (4, 'Carro repartidor/triciclo');
INSERT INTO enemduVIVIENDAS.servicioAgua VALUES (5, 'Pozo');
INSERT INTO enemduVIVIENDAS.servicioAgua VALUES (6, 'Río, vertiente o acequía');
INSERT INTO enemduVIVIENDAS.servicioAgua VALUES (7, 'Otro...');

-- TABLA TIPenemduVIVIENDAS
INSERT INTO enemduVIVIENDAS.tipoAgua VALUES (1, 'Por tubería dentro de la vivienda');
INSERT INTO enemduVIVIENDAS.tipoAgua VALUES (2, 'Por tubería fuera de la vivienda pero dentro del edificio, lote o terreno');
INSERT INTO enemduVIVIENDAS.tipoAgua VALUES (3, 'Por tubería fuera del edificio, lote o terreno');
INSERT INTO enemduVIVIENDAS.tipoAgua VALUES (4, 'No recibe agua por tubería sino por otros medios');

-- TABLA SERenemduVIVIENDAS
INSERT INTO enemduVIVIENDAS.servicioDucha VALUES (1, 'Exclusivo del hogar');
INSERT INTO enemduVIVIENDAS.servicioDucha VALUES (2, 'Compartido con otros hogares');
INSERT INTO enemduVIVIENDAS.servicioDucha VALUES (3, 'No tiene');

-- TABLA TIPenemduVIVIENDAS
INSERT INTO enemduVIVIENDAS.tipoAlumbrado VALUES (1, 'Empresa eléctrica publica');
INSERT INTO enemduVIVIENDAS.tipoAlumbrado VALUES (2, 'Planta eléctrica privada');
INSERT INTO enemduVIVIENDAS.tipoAlumbrado VALUES (3, 'Vela, candil, mechero, gas');
INSERT INTO enemduVIVIENDAS.tipoAlumbrado VALUES (4, 'Ninguno');

-- TABLA BOTenemduVIVIENDAS
INSERT INTO enemduVIVIENDAS.botaBasura VALUES (1, 'Contratan el servicio');
INSERT INTO enemduVIVIENDAS.botaBasura VALUES (2, 'Servicio municipal');
INSERT INTO enemduVIVIENDAS.botaBasura VALUES (3, 'Botan a la calle, quebrada, río');
INSERT INTO enemduVIVIENDAS.botaBasura VALUES (4, 'La quema/entierran');
INSERT INTO enemduVIVIENDAS.botaBasura VALUES (5, 'Otro...');

-- TABLA OCUenemduVIVIENDAS --
INSERT INTO enemduVIVIENDAS.ocupacionVivienda VALUES (1, 'En arriendo');
INSERT INTO enemduVIVIENDAS.ocupacionVivienda VALUES (2, 'Anticresis y/o arriendo');
INSERT INTO enemduVIVIENDAS.ocupacionVivienda VALUES (3, 'Propia y la está pagando');
INSERT INTO enemduVIVIENDAS.ocupacionVivienda VALUES (4, 'Propia y totalmente pagada');
INSERT INTO enemduVIVIENDAS.ocupacionVivienda VALUES (5, 'Cedida');
INSERT INTO enemduVIVIENDAS.ocupacionVivienda VALUES (6, 'Recibida por servicios');
INSERT INTO enemduVIVIENDAS.ocupacionVivienda VALUES (7, 'Otro...');

INSERT INTO `enemduVIVIENDAS`.`CatalogoSN` (`id`, `valor`)
VALUES
(1, 'Si'),
(2, 'No');

INSERT INTO enemduVIVIENDAS.tipoCombustible VALUES (1, 'Super');
INSERT INTO enemduVIVIENDAS.tipoCombustible VALUES (2, 'Extra');
INSERT INTO enemduVIVIENDAS.tipoCombustible VALUES (3, 'Diésel');
INSERT INTO enemduVIVIENDAS.tipoCombustible VALUES (4, 'Ecopaís');
INSERT INTO enemduVIVIENDAS.tipoCombustible VALUES (5, 'Electricidad');
INSERT INTO enemduVIVIENDAS.tipoCombustible VALUES (6, 'Gas');

INSERT INTO enemduVIVIENDAS.articulos_tecnologicos VALUES (1, 'Computadora de escritorio/laptop');
INSERT INTO enemduVIVIENDAS.articulos_tecnologicos VALUES (2, 'Tablet/tableta');
INSERT INTO enemduVIVIENDAS.articulos_tecnologicos VALUES (3, 'Servicio de teléfono convencional');
INSERT INTO enemduVIVIENDAS.articulos_tecnologicos VALUES (4, 'Servicio de telefonía celular');
INSERT INTO enemduVIVIENDAS.articulos_tecnologicos VALUES (5, 'Teléfono inteligente o smartphone');
INSERT INTO enemduVIVIENDAS.articulos_tecnologicos VALUES (6, 'Smart TV (Televisor inteligente)');

use enemduVIVIENDAS;
INSERT INTO AreaCatalogo (AreaID, Descripcion)
VALUES
(1, 'Urbana'),
(2, 'Rural');

INSERT INTO enemduVIVIENDAS.ciudades VALUES (170150, 'Quito');
INSERT INTO enemduVIVIENDAS.ciudades VALUES (90150, 'Guayaquil');
INSERT INTO enemduVIVIENDAS.ciudades VALUES (70150, 'Machala');
INSERT INTO enemduVIVIENDAS.ciudades VALUES (10150, 'Cuenca');
INSERT INTO enemduVIVIENDAS.ciudades VALUES (180150, 'Ambato');
INSERT INTO enemduVIVIENDAS.ciudades VALUES (80150, 'Esmeraldas');
INSERT INTO enemduVIVIENDAS.ciudades VALUES (100150, 'Ibarra');
INSERT INTO enemduVIVIENDAS.ciudades VALUES (230150, 'Santo Domingo de los Colorados');
INSERT INTO enemduVIVIENDAS.ciudades VALUES (110150, 'Loja');
INSERT INTO enemduVIVIENDAS.ciudades VALUES (240250, 'La libertad');

