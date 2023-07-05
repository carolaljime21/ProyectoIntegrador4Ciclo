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
    REFERENCES `enemduVIVIENDAS`.`tipoagua` (`id_tipo_Agua`)
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
    REFERENCES `enemduVIVIENDAS`.`Ubicacion` (`id`)
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
  `id_hogar` BIGINT NOT NULL,
  `cantidad_vehículos` VARCHAR(45) NULL,
  `cantidad_motos` VARCHAR(45) NULL,
  `id_registro_vivienda` INT NOT NULL,
  `servicio_internret` VARCHAR(45) NULL,
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
  `tipo_combustible` INT NOT NULL,
  `gasto_combustible` INT NULL,
  `id_registro_hogar` INT NOT NULL,
  PRIMARY KEY (`id_combustible`),
  CONSTRAINT `fk_cv_hogar`
    FOREIGN KEY (`id_registro_hogar`)
    REFERENCES `enemduVIVIENDAS`.`hogar` (`id_registro_hogar`),
  CONSTRAINT `fk_cv_tipocombustible`
    FOREIGN KEY (`tipo_combustible`)
    REFERENCES `enemduVIVIENDAS`.`tipoCombustible` (`id_combustible`)
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




-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`telefonosVivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`telefonosVivienda` (
  `id_telefonos_Vivienda` INT NOT NULL,
  `tipo_telefonos` VARCHAR(45) NULL,
  `cantidad_telefonos` INT NULL,
  PRIMARY KEY (`id_telefonos_Vivienda`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`artTecnologicosHogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`artTecnologicosHogar` (
  `id_art_tecnologicos` INT NOT NULL,
  `tipo_art_tecnologico` VARCHAR(45) NULL,
  `cantidada_art_tecnologico` VARCHAR(45) NULL,
  PRIMARY KEY (`id_art_tecnologicos`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`Hogar_has_telefonosVivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`Hogar_has_telefonosVivienda` (
  `id_registro_hogar` INT NOT NULL,
  `id_telefonos_Vivienda` INT NOT NULL,
  PRIMARY KEY (`id_registro_hogar`, `id_telefonos_Vivienda`),
  INDEX `fk_Hogar_has_telefonosVivienda_telefonosVivienda1_idx` (`id_telefonos_Vivienda` ASC) VISIBLE,
  INDEX `fk_Hogar_has_telefonosVivienda_Hogar1_idx` (`id_registro_hogar` ASC) VISIBLE,
  CONSTRAINT `fk_Hogar_has_telefonosVivienda_Hogar1`
    FOREIGN KEY (`id_registro_hogar`)
    REFERENCES `enemduVIVIENDAS`.`Hogar` (`id_registro_hogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_has_telefonosVivienda_telefonosVivienda1`
    FOREIGN KEY (`id_telefonos_Vivienda`)
    REFERENCES `enemduVIVIENDAS`.`telefonosVivienda` (`id_telefonos_Vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`artTecnologicosHogar_has_Hogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`artTecnologicosHogar_has_Hogar` (
  `id_art_tecnologicos` INT NOT NULL,
  `id_registro_hogar` INT NOT NULL,
  PRIMARY KEY (`id_art_tecnologicos`, `id_registro_hogar`),
  INDEX `fk_artTecnologicosHogar_has_Hogar_Hogar1_idx` (`id_registro_hogar` ASC) VISIBLE,
  INDEX `fk_artTecnologicosHogar_has_Hogar_artTecnologicosHogar1_idx` (`id_art_tecnologicos` ASC) VISIBLE,
  CONSTRAINT `fk_artTecnologicosHogar_has_Hogar_artTecnologicosHogar1`
    FOREIGN KEY (`id_art_tecnologicos`)
    REFERENCES `enemduVIVIENDAS`.`artTecnologicosHogar` (`id_art_tecnologicos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_artTecnologicosHogar_has_Hogar_Hogar1`
    FOREIGN KEY (`id_registro_hogar`)
    REFERENCES `enemduVIVIENDAS`.`Hogar` (`id_registro_hogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

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
    REFERENCES `enemduVIVIENDAS`.`tipoagua` (`id_tipo_Agua`)
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
    REFERENCES `enemduVIVIENDAS`.`Ubicacion` (`id`)
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
  `id_hogar` BIGINT NOT NULL,
  `cantidad_vehículos` VARCHAR(45) NULL,
  `cantidad_motos` VARCHAR(45) NULL,
  `id_registro_vivienda` INT NOT NULL,
  `servicio_internret` VARCHAR(45) NULL,
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
  `tipo_combustible` INT NOT NULL,
  `gasto_combustible` INT NULL,
  `id_registro_hogar` INT NOT NULL,
  PRIMARY KEY (`id_combustible`),
  CONSTRAINT `fk_cv_hogar`
    FOREIGN KEY (`id_registro_hogar`)
    REFERENCES `enemduVIVIENDAS`.`hogar` (`id_registro_hogar`),
  CONSTRAINT `fk_cv_tipocombustible`
    FOREIGN KEY (`tipo_combustible`)
    REFERENCES `enemduVIVIENDAS`.`tipoCombustible` (`id_combustible`)
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




-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`telefonosVivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`telefonosVivienda` (
  `id_telefonos_Vivienda` INT NOT NULL,
  `tipo_telefonos` VARCHAR(45) NULL,
  `cantidad_telefonos` INT NULL,
  PRIMARY KEY (`id_telefonos_Vivienda`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`artTecnologicosHogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`artTecnologicosHogar` (
  `id_art_tecnologicos` INT NOT NULL,
  `tipo_art_tecnologico` VARCHAR(45) NULL,
  `cantidada_art_tecnologico` VARCHAR(45) NULL,
  PRIMARY KEY (`id_art_tecnologicos`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`Hogar_has_telefonosVivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`Hogar_has_telefonosVivienda` (
  `id_registro_hogar` INT NOT NULL,
  `id_telefonos_Vivienda` INT NOT NULL,
  PRIMARY KEY (`id_registro_hogar`, `id_telefonos_Vivienda`),
  INDEX `fk_Hogar_has_telefonosVivienda_telefonosVivienda1_idx` (`id_telefonos_Vivienda` ASC) VISIBLE,
  INDEX `fk_Hogar_has_telefonosVivienda_Hogar1_idx` (`id_registro_hogar` ASC) VISIBLE,
  CONSTRAINT `fk_Hogar_has_telefonosVivienda_Hogar1`
    FOREIGN KEY (`id_registro_hogar`)
    REFERENCES `enemduVIVIENDAS`.`Hogar` (`id_registro_hogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_has_telefonosVivienda_telefonosVivienda1`
    FOREIGN KEY (`id_telefonos_Vivienda`)
    REFERENCES `enemduVIVIENDAS`.`telefonosVivienda` (`id_telefonos_Vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `enemduVIVIENDAS`.`artTecnologicosHogar_has_Hogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemduVIVIENDAS`.`artTecnologicosHogar_has_Hogar` (
  `id_art_tecnologicos` INT NOT NULL,
  `id_registro_hogar` INT NOT NULL,
  PRIMARY KEY (`id_art_tecnologicos`, `id_registro_hogar`),
  INDEX `fk_artTecnologicosHogar_has_Hogar_Hogar1_idx` (`id_registro_hogar` ASC) VISIBLE,
  INDEX `fk_artTecnologicosHogar_has_Hogar_artTecnologicosHogar1_idx` (`id_art_tecnologicos` ASC) VISIBLE,
  CONSTRAINT `fk_artTecnologicosHogar_has_Hogar_artTecnologicosHogar1`
    FOREIGN KEY (`id_art_tecnologicos`)
    REFERENCES `enemduVIVIENDAS`.`artTecnologicosHogar` (`id_art_tecnologicos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_artTecnologicosHogar_has_Hogar_Hogar1`
    FOREIGN KEY (`id_registro_hogar`)
    REFERENCES `enemduVIVIENDAS`.`Hogar` (`id_registro_hogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
