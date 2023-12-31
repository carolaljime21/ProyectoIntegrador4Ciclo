USE `enemduVIVIENDAS` ;

INSERT INTO ubicacion (area, conglomerado, ciudad, panelm)
SELECT d.area, d.conglomerado, d.ciudad,panelm
FROM p_integrador.dataset d;

INSERT INTO gastosArriendo (valor_arriendo, arriendoAgua, arriendoLuz, parentesco_dueño)
SELECT
NULLIF(d.valorArriendo, ' '),
NULLIF(d.arriendoAgua, ' '),
NULLIF(d.arriendoLuz, ' '),
NULLIF(d.relacionPropietario, ' ')
FROM p_integrador.dataset d;

INSERT INTO gastosArriendo (valor_arriendo, arriendoAgua, arriendoLuz, parentesco_dueño)
SELECT
NULLIF(d.valorArriendo, ' '),
NULLIF(d.arriendoAgua, ' '),
NULLIF(d.arriendoLuz, ' '),
NULLIF(d.relacionPropietario, ' ')
FROM p_integrador.dataset d;


CREATE TABLE Vivienda_temp LIKE Vivienda;

-- Hacer que todos los campos permitan NULL
ALTER TABLE Vivienda_temp
  MODIFY id_tipo_vivienda INT,
  MODIFY acc_principal_id_acc_principal INT,
  MODIFY id_combustible_cocina INT,
  MODIFY id_servicio_higienico INT,
  MODIFY id_tipo_Agua INT,
  MODIFY id_servicio_Ducha INT,
  MODIFY id_tipo_alumbrado INT,
  MODIFY id_bota_Basura INT,
  MODIFY id_ubicacion INT,
  MODIFY id_ocupacion_Vivienda INT,
  MODIFY id_gastos_arriendo INT;

  INSERT INTO Vivienda_temp
  (id_Vivienda, id_tipo_vivienda, acc_principal_id_acc_principal, nro_cuartos, num_cuartos_negocio, num_cuartos_dormir, cuarto_exclv_cocina, id_combustible_cocina, id_servicio_higienico, id_noServicio_Higienico, id_sanitario_Cercano, id_servicio_Agua, id_tipo_Agua, id_servicio_Ducha, id_tipo_alumbrado, id_bota_Basura, id_ubicacion, id_ocupacion_Vivienda, id_gastos_arriendo, medidor_agua, junta_agua)
SELECT
  NULLIF(d.idVivienda, ' '),
  NULLIF(d.tipoVivienda, ' '),
  NULLIF(d.viaAccesoPrincipal, ' '),
  NULLIF(d.numCuartos, ' '),
  NULLIF(d.cuartoNegocio, ' '),
  NULLIF(d.cuartosDormitorio, ' '),
  NULLIF(d.cuartoCocina, ' '),
  NULLIF(d.combustibleCocina, ' '),
  NULLIF(d.servicioHigienico, ' '),
  NULLIF(d.sinServicioHigienico, ' '),
  NULLIF(d.tipoSanitarioCercano, ' '),
  NULLIF(d.servicioAgua, ' '),
  NULLIF(d.tipoAgua, ' '),
  NULLIF(d.servicioDucha, ' '),
  NULLIF(d.tipoAlumbrado, ' '),
  NULLIF(d.botaBasura, ' '),
  NULL, -- Este es el lugar de id_ubicacion, lo llenaremos más adelante
  NULLIF(d.hogarVivienda, ' '),
  NULL, -- Este es el lugar de id_gastos_arriendo, lo llenaremos más adelante
  NULLIF(d.medidorAgua, ' '),
  NULLIF(d.juntaAgua, ' ')
FROM p_integrador.dataset d;

SET SQL_SAFE_UPDATES = 0;

UPDATE Vivienda_temp v
INNER JOIN ubicacion u ON v.id_registro = u.id
SET v.id_ubicacion = u.id;

SET SQL_SAFE_UPDATES = 1;

-- Actualizando la columna id_gastos_arriendo

SET SQL_SAFE_UPDATES = 0;
UPDATE Vivienda_temp v
INNER JOIN gastosArriendo g ON v.id_registro = g.id_gastos_arriendo  -- aquí "gastos_arriendo" es la columna que coincide
SET v.id_gastos_arriendo = g.id_gastos_arriendo;
SET SQL_SAFE_UPDATES = 1;

INSERT INTO Vivienda SELECT * FROM Vivienda_temp;
DROP TABLE Vivienda_temp;

INSERT INTO estado_pared_vivienda (id_registro, id_Vivienda, id_pared, id_estado)
SELECT
  NULLIF(v.id_registro, ' '),
  NULLIF(v.id_vivienda, ' '),
  MAX(d.materialParedes),
  MAX(d.estadoParedes)
FROM p_integrador.dataset d
JOIN Vivienda v ON v.id_vivienda = d.idVivienda
GROUP BY v.id_registro, v.id_vivienda;

INSERT INTO estado_techo_vivienda (id_registro, id_vivienda, id_techo, id_estado)
SELECT
  v.id_registro,
  v.id_vivienda,
  MAX(d.materialVivienda),
  MAX(d.estadoMaterial)
FROM p_integrador.dataset d
JOIN Vivienda v ON v.id_vivienda = d.idVivienda
GROUP BY v.id_registro, v.id_vivienda;


INSERT INTO estado_piso_vivienda (id_registro, id_vivienda, id_piso, id_estado)
SELECT
  v.id_registro,
  v.id_vivienda,
  MAX(d.materialSuelo),
  MAX(d.estadoSuelo)
FROM p_integrador.dataset d
JOIN Vivienda v ON v.id_vivienda = d.idVivienda
GROUP BY v.id_registro, v.id_vivienda;


CREATE TABLE Hogar_temp (
  temp_id INT AUTO_INCREMENT PRIMARY KEY,
  id_hogar decimal NOT NULL,
  cantidad_vehículos INT,
  cantidad_motos INT,
  id_registro_vivienda INT
);
ALTER TABLE Hogar_temp MODIFY COLUMN id_hogar DECIMAL(65, 0);
ALTER TABLE Hogar MODIFY COLUMN id_hogar DECIMAL(65, 0);

INSERT INTO Hogar_temp(id_hogar, cantidad_vehículos, cantidad_motos)
SELECT
  NULLIF(d.idHogar, ' '),
  NULLIF(d.cantidadVehiculos, ' '),
  NULLIF(d.cantidadMotos, ' ')
FROM p_integrador.dataset d;

SET SQL_SAFE_UPDATES = 0;
UPDATE Hogar_temp h
INNER JOIN Vivienda v ON h.temp_id = v.id_registro
SET h.id_registro_vivienda = v.id_registro;
SET SQL_SAFE_UPDATES = 1;

INSERT INTO Hogar(id_hogar, cantidad_vehículos, cantidad_motos, id_registro_vivienda)
SELECT
   (d.id_hogar),
   (d.cantidad_vehículos) ,
   (d.cantidad_motos) ,
   v.id_registro
FROM Hogar_temp d, Vivienda v
WHERE d.temp_id = v.id_registro;

DROP Table Hogar_temp;

CREATE TABLE combustible_vehiculos_temp (
  temp_id INT AUTO_INCREMENT PRIMARY KEY,
  id_registro_hogar INT,
  combustibleSuper INT,
  gastoSuper INT,
  combustibleExtra INT,
  gastoExtra INT,
  combustibleDiesel INT,
  gastoDiesel INT,
  combustibleEcoPais INT,
  gastoEcoPais INT,
  combustibleElectricidad INT,
  gastoElectricidad INT,
  combustibleGas INT,
  gastoGas INT
);

INSERT INTO combustible_vehiculos_temp
(
combustibleSuper,
gastoSuper,
combustibleExtra,
gastoExtra,
combustibleDiesel,
gastoDiesel,
combustibleEcoPais,
gastoEcoPais,
combustibleElectricidad,
gastoElectricidad,
combustibleGas,
gastoGas
)
SELECT
   NULLIF(d.combustibleSuper, ' '),
   NULLIF(d.gastoSuper, ' '),
   NULLIF(d.combustibleExtra, ' '),
   NULLIF(d.gastoExtra, ' '),
   NULLIF(d.combustibleDiesel, ' '),
   NULLIF(d.gastoDiesel, ' '),
   NULLIF(d.combustibleEcoPais, ' '),
   NULLIF(d.gastoEcoPais, ' '),
   NULLIF(d.combustibleElectricidad, ' '),
   NULLIF(d.gastoElectricidad, ' '),
   NULLIF(d.combustibleGas, ' '),
   NULLIF(d.gastoGas, ' ')
FROM p_integrador.dataset d;

SET SQL_SAFE_UPDATES = 0;

UPDATE combustible_vehiculos_temp
SET id_registro_hogar = temp_id;

INSERT INTO combustible_vehiculos (
    id_registro_hogar,
    combustibleSuper,
    gastoSuper,
    combustibleExtra,
    gastoExtra,
    combustibleDiesel,
    gastoDiesel,
    combustibleEcoPais,
    gastoEcoPais,
    combustibleElectricidad,
    gastoElectricidad,
    combustibleGas,
    gastoGas
)
SELECT
    id_registro_hogar,
    combustibleSuper,
    gastoSuper,
    combustibleExtra,
    gastoExtra,
    combustibleDiesel,
    gastoDiesel,
    combustibleEcoPais,
    gastoEcoPais,
    combustibleElectricidad,
    gastoElectricidad,
    combustibleGas,
    gastoGas
FROM combustible_vehiculos_temp;
DROP table combustible_vehiculos_temp;


CREATE TABLE tics_ciudad_temp (
    id INT AUTO_INCREMENT,
    ciudad VARCHAR(50),
    acceso_internet INT,
    cantidad_computadoras VARCHAR(50) NULL,
    cantidad_tablets VARCHAR(50) NULL,
    servicio_telefono_convencional VARCHAR(50) NULL,
    servicio_telefono_celular VARCHAR(50) NULL,
    cantidad_smartphone VARCHAR(50) NULL,
    cantidad_smartTV VARCHAR(50) NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (acceso_internet) REFERENCES CatalogoSN(id)
);


INSERT INTO tics_ciudad_temp (
  ciudad,
  acceso_internet,
  cantidad_computadoras,
  cantidad_tablets,
  servicio_telefono_convencional,
  servicio_telefono_celular,
  cantidad_smartphone,
  cantidad_smartTV
)
SELECT
  ciudad,
  acceso_internet,
  cantidad_computadoras,
  CASE WHEN cantidad_tablets = '' THEN NULL ELSE cantidad_tablets END,
  servicio_telefono_convencional,
  servicio_telefono_celular,
  cantidad_smartphone,
  cantidad_smartTV
FROM (
  SELECT
    ciudad,
    acceso_internet,
    cantidad_computadoras,
    cantidad_tablets,
    servicio_telefono_convencional,
    servicio_telefono_celular,
    cantidad_smartphone,
    cantidad_smartTV,
    count,
    ROW_NUMBER() OVER (PARTITION BY ciudad, acceso_internet ORDER BY count DESC) AS rn
  FROM (
    SELECT
      ciudad,
      vi20 AS acceso_internet,
      eqt19a021 AS cantidad_computadoras,
      CASE WHEN eqt19a022 = '' THEN NULL ELSE eqt19a022 END AS cantidad_tablets,
      eqt19a023 AS servicio_telefono_convencional,
      eqt19a024 AS servicio_telefono_celular,
      eqt19a025 AS cantidad_smartphone,
      eqt19a026 AS cantidad_smartTV,
      COUNT(*) AS count
    FROM p_integrador.tics
    GROUP BY
      ciudad,
      vi20,
      eqt19a021,
      eqt19a022,
      eqt19a023,
      eqt19a024,
      eqt19a025,
      eqt19a026
  ) AS subquery
) AS final_query
WHERE rn = 1
ORDER BY ciudad, acceso_internet;

INSERT INTO tics_ciudad
    (
    ciudad,
    acceso_internet,
    cantidad_computadoras,
    cantidad_tablets,
    servicio_telefono_convencional,
    servicio_telefono_celular,
    cantidad_smartphone,
    cantidad_smartTV
)
SELECT
    TRIM(ciudad),
    NULLIF(TRIM(acceso_internet), ''),
    NULLIF(TRIM(cantidad_computadoras), ''),
    NULLIF(TRIM(cantidad_tablets), ''),
    NULLIF(TRIM(servicio_telefono_convencional), ''),
    NULLIF(TRIM(servicio_telefono_celular), ''),
    NULLIF(TRIM(cantidad_smartphone), ''),
    NULLIF(TRIM(cantidad_smartTV), '')
FROM tics_ciudad_temp;

drop table tics_ciudad_temp;


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

