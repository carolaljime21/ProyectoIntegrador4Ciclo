CREATE SCHEMA IF NOT EXISTS `enemduVIVIENDAS` ;
USE `enemduVIVIENDAS` ;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`tipo_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`tipo_vivienda` (
  `id_tipo_vivienda` INT NOT NULL,
  `tipo_vivienda` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_tipo_vivienda`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`acc_principal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`acc_principal` (
  `id_acc_principal` INT NOT NULL,
  `tipo_acc_principal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_acc_principal`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`combustibleCocina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`combustibleCocina` (
  `id_combustible_cocina` INT NOT NULL,
  `tipo_combustible` VARCHAR(45) NULL,
  PRIMARY KEY (`id_combustible_cocina`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`sanitarioCercano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`sanitarioCercano` (
  `id_sanitario_Cercano` INT NOT NULL,
  `tipo_sanitario_cercano` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_sanitario_Cercano`)
)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`noServicioHigienico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`noServicioHigienico` (
  `id_noServicio_Higienico` INT NOT NULL,
  `tipo_servicio` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_noServicio_Higienico`)
)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`servicioHigienico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`servicioHigienico` (
  `id_servicio_higienico` INT NOT NULL,
  `tipo_servicio` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_servicio_higienico`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`tipoAgua`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`tipoAgua` (
  `id_tipo_Agua` INT NOT NULL,
  `descripcion` VARCHAR(100) NULL,
  PRIMARY KEY (`id_tipo_Agua`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`servicioAgua`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`servicioAgua` (
  `id_servicio_Agua` INT NOT NULL,
  `tipo_servicio_agua` VARCHAR(45) NULL,
  PRIMARY KEY (`id_servicio_Agua`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`servicioDucha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`servicioDucha` (
  `id_servicio_Ducha` INT NOT NULL,
  `tipo_servicio_ducha` VARCHAR(45) NULL,
  PRIMARY KEY (`id_servicio_Ducha`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`tipoAlumbrado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`tipoAlumbrado` (
  `id_tipo_alumbrado` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_alumbrado`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`botaBasura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`botaBasura` (
  `id_bota_Basura` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_bota_Basura`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`CatalogoSN` (
  `id` INT NOT NULL,
  `valor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`tipoCombustible` (
  `id_combustible` INT NOT NULL,
  `descripcion_combustible` VARCHAR(45) NULL,
  PRIMARY KEY (`id_combustible`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`Ubicacion`
-- -----------------------------------------------------
CREATE TABLE ubicacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    area VARCHAR(255),  -- Ajusta el tipo de datos y la longitud según tus necesidades
    conglomerado VARCHAR(255),  -- Ajusta el tipo de datos y la longitud según tus necesidades
    ciudad VARCHAR(255),  -- Ajusta el tipo de datos y la longitud según tus necesidades
    panelm VARCHAR(255)  -- Ajusta el tipo de datos y la longitud según tus necesidades
);
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`gastosArriendo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`gastosArriendo` (
	`id_gastos_arriendo` INT AUTO_INCREMENT PRIMARY KEY,
  `valor_arriendo` BIGINT NULL,
  `arriendoAgua` INT NULL,
  `arriendoLuz` INT NULL,
  `parentesco_dueño` INT NULL);
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`ocupacionVivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`ocupacionVivienda` (
  `id_ocupacion_Vivienda` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_ocupacion_Vivienda`))
ENGINE = InnoDB;
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`Vivienda` (
  `id_registro` INT AUTO_INCREMENT,
  `id_Vivienda` bigint NOT NULL,
  `id_tipo_vivienda` INT NOT NULL,
  `acc_principal_id_acc_principal` INT NOT NULL,
  `nro_cuartos` INT NULL,
  `num_cuartos_negocio` INT NULL,
  `num_cuartos_dormir` INT NULL,
  `cuarto_exclv_cocina` INT NULL,
  `id_combustible_cocina` INT NOT NULL,
  `id_servicio_higienico` INT,
  `id_noServicio_Higienico` INT NULL,
  `id_sanitario_Cercano` INT NULL,
  `id_servicio_Agua` INT NULL,
  `id_tipo_Agua` INT NOT NULL,
  `id_servicio_Ducha` INT NOT NULL,
  `id_tipo_alumbrado` INT NOT NULL,
  `id_bota_Basura` INT NOT NULL,
  `id_ubicacion` INT NOT NULL,
  `id_ocupacion_Vivienda` INT NOT NULL,
  `id_gastos_arriendo` INT NOT NULL,
  `medidor_agua` INT NULL,
  `junta_agua` INT NULL,
  PRIMARY KEY (`id_registro`),
  CONSTRAINT `fk_Vivienda_tipo_vivienda1`
    FOREIGN KEY (`id_tipo_vivienda`)
    REFERENCES `enemduVIVIENDAS`.`tipo_vivienda` (`id_tipo_vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_acc_principal1`
    FOREIGN KEY (`acc_principal_id_acc_principal`)
    REFERENCES `enemduVIVIENDAS`.`acc_principal` (`id_acc_principal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_combustibleCocina1`
    FOREIGN KEY (`id_combustible_cocina`)
    REFERENCES `enemduVIVIENDAS`.`combustibleCocina` (`id_combustible_cocina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_servicioHigienico1`
    FOREIGN KEY (`id_servicio_higienico`)
    REFERENCES `enemduVIVIENDAS`.`servicioHigienico` (`id_servicio_higienico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_servicioAgua1`
    FOREIGN KEY (`id_servicio_Agua`)
    REFERENCES `enemduVIVIENDAS`.`servicioAgua` (`id_servicio_Agua`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_tipoAgua1`
    FOREIGN KEY (`id_tipo_Agua`)
    REFERENCES `enemduVIVIENDAS`.`tipoAgua` (`id_tipo_Agua`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_servicioDucha1`
    FOREIGN KEY (`id_servicio_Ducha`)
    REFERENCES `enemduVIVIENDAS`.`servicioDucha` (`id_servicio_Ducha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_tipoAlumbrado1`
    FOREIGN KEY (`id_tipo_alumbrado`)
    REFERENCES `enemduVIVIENDAS`.`tipoAlumbrado` (`id_tipo_alumbrado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_botaBasura1`
    FOREIGN KEY (`id_bota_Basura`)
    REFERENCES `enemduVIVIENDAS`.`botaBasura` (`id_bota_Basura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_Ubicacion1`
    FOREIGN KEY (`id_ubicacion`)
    REFERENCES `enemduVIVIENDAS`.`ubicacion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_ocupacionVivienda1`
    FOREIGN KEY (`id_ocupacion_Vivienda`)
    REFERENCES `enemduVIVIENDAS`.`ocupacionVivienda` (`id_ocupacion_Vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_gastosArriendo1`
    FOREIGN KEY (`id_gastos_arriendo`)
    REFERENCES `enemduVIVIENDAS`.`gastosArriendo` (`id_gastos_arriendo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_medidor_agua`
    FOREIGN KEY (`medidor_agua`)
    REFERENCES `enemduVIVIENDAS`.`CatalogoSN` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_junta_agua`
    FOREIGN KEY (`junta_agua`)
    REFERENCES `enemduVIVIENDAS`.`CatalogoSN` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
	CONSTRAINT `fk_Vivienda_noServicio_Higienico`
    FOREIGN KEY (`id_noServicio_Higienico`)
    REFERENCES `enemduVIVIENDAS`.`noServicioHigienico` (`id_noServicio_Higienico`),
  CONSTRAINT `fk_Vivienda_sanitario_Cercano`
    FOREIGN KEY (`id_sanitario_Cercano`)
    REFERENCES `enemduVIVIENDAS`.`sanitarioCercano` (`id_sanitario_Cercano`)
);


-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`Hogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`Hogar` (
  `id_registro_hogar` INT NOT NULL AUTO_INCREMENT,
  `id_hogar` decimal NOT NULL,
  `cantidad_vehículos` INT NULL,
  `cantidad_motos` INT NULL,
  `id_registro_vivienda` INT NOT NULL,
  PRIMARY KEY (`id_registro_hogar`),
  INDEX `fk_Hogar_Vivienda1_idx` (`id_registro_vivienda` ASC) VISIBLE,
  CONSTRAINT `fk_Hogar_Vivienda1`
    FOREIGN KEY (`id_registro_vivienda`)
    REFERENCES `enemduVIVIENDAS`.`Vivienda` (`id_registro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`combustible_vehiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`combustible_vehiculos` (
  `id_combustible` INT NOT NULL AUTO_INCREMENT,
  `id_registro_hogar` INT NOT NULL,
  `combustibleSuper` INT NULL,
  `gastoSuper` INT NULL,
  `combustibleExtra` INT NULL,
  `gastoExtra` INT NULL,
  `combustibleDiesel` INT NULL,
  `gastoDiesel` INT NULL,
  `combustibleEcoPais` INT NULL,
  `gastoEcoPais` INT NULL,
  `combustibleElectricidad` INT NULL,
  `gastoElectricidad` INT NULL,
  `combustibleGas` INT NULL,
  `gastoGas` INT NULL,
  PRIMARY KEY (`id_combustible`),
  CONSTRAINT `fk_cv_hogar`
    FOREIGN KEY (`id_registro_hogar`)
    REFERENCES `enemduVIVIENDAS`.`Hogar` (`id_registro_hogar`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`estado` (
  `id_estado` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`techo_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`techo_vivienda` (
  `id_techo_vivienda` INT NOT NULL AUTO_INCREMENT,
  `tipo_techo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_techo_vivienda`)
) ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`piso_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`piso_vivienda` (
  `id_piso_vivienda` INT NOT NULL AUTO_INCREMENT,
  `tipo_piso` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id_piso_vivienda`)
) ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`paredes_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`paredes_vivienda` (
  `id_paredes_vivienda` INT NOT NULL AUTO_INCREMENT,
  `tipo_paredes` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_paredes_vivienda`)
) ENGINE = InnoDB;

-- Tipo

CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`estado_piso_vivienda` (
  `id_estado_piso` INT NOT NULL AUTO_INCREMENT,
  `id_registro` INT NOT NULL,
  `id_vivienda` BIGINT NOT NULL,
  `id_piso` INT NOT NULL,
  `id_estado` INT NOT NULL,
  PRIMARY KEY (`id_estado_piso`),
  CONSTRAINT `fk_epv_vivienda`
    FOREIGN KEY (`id_registro`)
    REFERENCES `enemduVIVIENDAS`.`Vivienda` (`id_registro`),
  CONSTRAINT `fk_epv_piso`
    FOREIGN KEY (`id_piso`)
    REFERENCES `enemduVIVIENDAS`.`piso_vivienda` (`id_piso_vivienda`),
  CONSTRAINT `fk_epv_estado`
    FOREIGN KEY (`id_estado`)
    REFERENCES `enemduVIVIENDAS`.`estado` (`id_estado`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`estado_techo_vivienda` (
  `id_estado_techo` INT NOT NULL AUTO_INCREMENT,
  `id_registro` INT NOT NULL,
  `id_vivienda` BIGINT NOT NULL,
  `id_techo` INT NOT NULL,
  `id_estado` INT NOT NULL,
  PRIMARY KEY (`id_estado_techo`),
  CONSTRAINT `fk_etv_vivienda1`
    FOREIGN KEY (`id_registro`)
    REFERENCES `enemduVIVIENDAS`.`Vivienda` (`id_registro`),
  CONSTRAINT `fk_etv_techo`
    FOREIGN KEY (`id_techo`)
    REFERENCES `enemduVIVIENDAS`.`techo_vivienda` (`id_techo_vivienda`),
  CONSTRAINT `fk_etv_estado`
    FOREIGN KEY (`id_estado`)
    REFERENCES `enemduVIVIENDAS`.`estado` (`id_estado`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`estado_pared_vivienda` (
  `id_estado_pared` INT NOT NULL AUTO_INCREMENT,
  `id_registro` INT NOT NULL,
  `id_vivienda` BIGINT NOT NULL,
  `id_pared` INT NOT NULL,
  `id_estado` INT NOT NULL,
  PRIMARY KEY (`id_estado_pared`),
  CONSTRAINT `fk_eparedv_vivienda1`
    FOREIGN KEY (`id_registro`)
    REFERENCES `enemduVIVIENDAS`.`Vivienda` (`id_registro`),
  CONSTRAINT `fk_eparedv_pared`
    FOREIGN KEY (`id_pared`)
    REFERENCES `enemduVIVIENDAS`.`paredes_vivienda` (`id_paredes_vivienda`),
  CONSTRAINT `fk_eparedv_estado`
    FOREIGN KEY (`id_estado`)
    REFERENCES `enemduVIVIENDAS`.`estado` (`id_estado`)
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`articulos_tecnologicos` (
 `id_articulo` INT NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_articulo`)
) ENGINE = InnoDB;

CREATE TABLE tics_ciudad (
    id INT AUTO_INCREMENT,
    ciudad INT,
    acceso_internet INT,
    cantidad_computadoras INT NULL,
    cantidad_tablets INT NULL,
    servicio_telefono_convencional INT NULL,
    servicio_telefono_celular INT NULL,
    cantidad_smartphone INT NULL,
    cantidad_smartTV INT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (acceso_internet) REFERENCES CatalogoSN(id)
);

-----LLENADO DE DATOS --------------
------------------------------------
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
