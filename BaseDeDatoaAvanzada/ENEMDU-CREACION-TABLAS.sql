-- MySQL Script generated by MySQL Workbench
-- Thu Jun 29 22:14:14 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema enemdu
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema enemdu
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `enemdu` ;
USE `enemdu` ;

-- -----------------------------------------------------
-- Table `enemdu`.`tipo_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`tipo_vivienda` (
  `id_tipo_vivienda` INT NOT NULL,
  `tipo_vivienda` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_tipo_vivienda`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`acc_principal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`acc_principal` (
  `id_acc_principal` INT NOT NULL,
  `tipo_acc_principal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_acc_principal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`combustibleCocina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`combustibleCocina` (
  `id_combustible_cocina` INT NOT NULL,
  `tipo_combustible` VARCHAR(45) NULL,
  PRIMARY KEY (`id_combustible_cocina`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`sanitarioCercano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`sanitarioCercano` (
  `id_sanitario_Cercano` INT NOT NULL,
  `tipo_sanitario_cercano` VARCHAR(45) NULL,
  PRIMARY KEY (`id_sanitario_Cercano`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`noServicioHigienico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`noServicioHigienico` (
  `id_noServicio_Higienico` INT NOT NULL,
  `tipo_servicio` VARCHAR(45) NULL,
  `id_sanitario_Cercano` INT NOT NULL,
  PRIMARY KEY (`id_noServicio_Higienico`, `id_sanitario_Cercano`),
  INDEX `fk_noServicioHigienico_sanitarioCercano1_idx` (`id_sanitario_Cercano` ASC) VISIBLE,
  CONSTRAINT `fk_noServicioHigienico_sanitarioCercano1`
    FOREIGN KEY (`id_sanitario_Cercano`)
    REFERENCES `enemdu`.`sanitarioCercano` (`id_sanitario_Cercano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`servicioHigienico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`servicioHigienico` (
  `id_servicio_higienico` INT NOT NULL,
  `tipo_servicio` VARCHAR(45) NULL,
  `id_noServicio_Higienico` INT NOT NULL,
  `id_sanitario_Cercano` INT NOT NULL,
  PRIMARY KEY (`id_servicio_higienico`, `id_noServicio_Higienico`, `id_sanitario_Cercano`),
  INDEX `fk_servicioHigienico_noServicioHigienico1_idx` (`id_noServicio_Higienico` ASC, `id_sanitario_Cercano` ASC) VISIBLE,
  CONSTRAINT `fk_servicioHigienico_noServicioHigienico1`
    FOREIGN KEY (`id_noServicio_Higienico` , `id_sanitario_Cercano`)
    REFERENCES `enemdu`.`noServicioHigienico` (`id_noServicio_Higienico` , `id_sanitario_Cercano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`tipoAgua`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`tipoAgua` (
  `id_tipo_Agua` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_Agua`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`servicioAgua`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`servicioAgua` (
  `id_servicio_Agua` INT NOT NULL,
  `tipo_servicio_agua` VARCHAR(45) NULL,
  `medidor_agua` INT NULL,
  `junta_agua` INT NULL,
  `id_tipo_Agua` INT NOT NULL,
  PRIMARY KEY (`id_servicio_Agua`, `id_tipo_Agua`),
  INDEX `fk_servicioAgua_tipoAgua1_idx` (`id_tipo_Agua` ASC) VISIBLE,
  CONSTRAINT `fk_servicioAgua_tipoAgua1`
    FOREIGN KEY (`id_tipo_Agua`)
    REFERENCES `enemdu`.`tipoAgua` (`id_tipo_Agua`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`servicioDucha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`servicioDucha` (
  `id_servicio_Ducha` INT NOT NULL,
  `tipo_servicio_ducha` VARCHAR(45) NULL,
  PRIMARY KEY (`id_servicio_Ducha`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`tipoAlumbrado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`tipoAlumbrado` (
  `id_tipo_alumbrado` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_tipo_alumbrado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`botaBasura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`botaBasura` (
  `id_bota_Basura` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_bota_Basura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`ocupacionVivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`ocupacionVivienda` (
  `id_ocupacion_Vivienda` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_ocupacion_Vivienda`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`Ubicacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`Ubicacion` (
  `area` VARCHAR(45) NULL,
  `conglomerado` VARCHAR(45) NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `panelm` VARCHAR(45) NULL,
  PRIMARY KEY (`ciudad`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`Vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`Vivienda` (
  `id_Vivienda` INT NOT NULL,
  `id_tipo_vivienda` INT NOT NULL,
  `acc_principal_id_acc_principal` INT NOT NULL,
  `nro_cuartos` INT NULL,
  `num_cuartos_negocio` INT NULL,
  `num_cuartos_dormir` INT NULL,
  `cuarto_exclv_cocina` INT NULL,
  `id_combustible_cocina` INT NOT NULL,
  `id_servicio_higienico` INT NOT NULL,
  `id_noServicio_Higienico` INT NOT NULL,
  `id_sanitario_Cercano` INT NOT NULL,
  `id_servicio_Agua` INT NOT NULL,
  `id_tipo_Agua` INT NOT NULL,
  `id_servicio_Ducha` INT NOT NULL,
  `id_tipo_alumbrado` INT NOT NULL,
  `id_bota_Basura` INT NOT NULL,
  `id_ocupacion_Vivienda` INT NOT NULL,
  `Ubicacion_ciudad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Vivienda`),
  INDEX `fk_Vivienda_tipo_vivienda1_idx` (`id_tipo_vivienda` ASC) VISIBLE,
  INDEX `fk_Vivienda_acc_principal1_idx` (`acc_principal_id_acc_principal` ASC) VISIBLE,
  INDEX `fk_Vivienda_combustibleCocina1_idx` (`id_combustible_cocina` ASC) VISIBLE,
  INDEX `fk_Vivienda_servicioHigienico1_idx` (`id_servicio_higienico` ASC, `id_noServicio_Higienico` ASC, `id_sanitario_Cercano` ASC) VISIBLE,
  INDEX `fk_Vivienda_servicioAgua1_idx` (`id_servicio_Agua` ASC, `id_tipo_Agua` ASC) VISIBLE,
  INDEX `fk_Vivienda_servicioDucha1_idx` (`id_servicio_Ducha` ASC) VISIBLE,
  INDEX `fk_Vivienda_tipoAlumbrado1_idx` (`id_tipo_alumbrado` ASC) VISIBLE,
  INDEX `fk_Vivienda_botaBasura1_idx` (`id_bota_Basura` ASC) VISIBLE,
  INDEX `fk_Vivienda_ocupacionVivienda1_idx` (`id_ocupacion_Vivienda` ASC) VISIBLE,
  INDEX `fk_Vivienda_Ubicacion1_idx` (`Ubicacion_ciudad` ASC) VISIBLE,
  CONSTRAINT `fk_Vivienda_tipo_vivienda1`
    FOREIGN KEY (`id_tipo_vivienda`)
    REFERENCES `enemdu`.`tipo_vivienda` (`id_tipo_vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_acc_principal1`
    FOREIGN KEY (`acc_principal_id_acc_principal`)
    REFERENCES `enemdu`.`acc_principal` (`id_acc_principal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_combustibleCocina1`
    FOREIGN KEY (`id_combustible_cocina`)
    REFERENCES `enemdu`.`combustibleCocina` (`id_combustible_cocina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_servicioHigienico1`
    FOREIGN KEY (`id_servicio_higienico` , `id_noServicio_Higienico` , `id_sanitario_Cercano`)
    REFERENCES `enemdu`.`servicioHigienico` (`id_servicio_higienico` , `id_noServicio_Higienico` , `id_sanitario_Cercano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_servicioAgua1`
    FOREIGN KEY (`id_servicio_Agua` , `id_tipo_Agua`)
    REFERENCES `enemdu`.`servicioAgua` (`id_servicio_Agua` , `id_tipo_Agua`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_servicioDucha1`
    FOREIGN KEY (`id_servicio_Ducha`)
    REFERENCES `enemdu`.`servicioDucha` (`id_servicio_Ducha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_tipoAlumbrado1`
    FOREIGN KEY (`id_tipo_alumbrado`)
    REFERENCES `enemdu`.`tipoAlumbrado` (`id_tipo_alumbrado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_botaBasura1`
    FOREIGN KEY (`id_bota_Basura`)
    REFERENCES `enemdu`.`botaBasura` (`id_bota_Basura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_ocupacionVivienda1`
    FOREIGN KEY (`id_ocupacion_Vivienda`)
    REFERENCES `enemdu`.`ocupacionVivienda` (`id_ocupacion_Vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_Ubicacion1`
    FOREIGN KEY (`Ubicacion_ciudad`)
    REFERENCES `enemdu`.`Ubicacion` (`ciudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`Hogar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`Hogar` (
  `id_hogar` INT NOT NULL,
  `cantidad_vehículos` VARCHAR(45) NULL,
  `cantidad_motos` VARCHAR(45) NULL,
  `id_Vivienda` INT NOT NULL,
  PRIMARY KEY (`id_hogar`),
  INDEX `fk_Hogar_Vivienda1_idx` (`id_Vivienda` ASC) VISIBLE,
  CONSTRAINT `fk_Hogar_Vivienda1`
    FOREIGN KEY (`id_Vivienda`)
    REFERENCES `enemdu`.`Vivienda` (`id_Vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`combustible_vehiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`combustible_vehiculos` (
  `id_combustible` INT NOT NULL AUTO_INCREMENT,
  `tipo_combustible` VARCHAR(45) NULL,
  `gasto_combustible` INT NULL,
  PRIMARY KEY (`id_combustible`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`estado` (
  `id_estado` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`techo_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`techo_vivienda` (
  `id_techo_vivienda` INT NOT NULL,
  `tipo_techo` VARCHAR(45) NOT NULL,
  `estado_id_estado` INT NOT NULL,
  PRIMARY KEY (`id_techo_vivienda`),
  INDEX `fk_techo_vivienda_estado1_idx` (`estado_id_estado` ASC) VISIBLE,
  CONSTRAINT `fk_techo_vivienda_estado1`
    FOREIGN KEY (`estado_id_estado`)
    REFERENCES `enemdu`.`estado` (`id_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`piso_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`piso_vivienda` (
  `id_piso_vivienda` INT NOT NULL,
  `tipo_piso` VARCHAR(45) NOT NULL,
  `estado_id_estado` INT NOT NULL,
  PRIMARY KEY (`id_piso_vivienda`),
  INDEX `fk_piso_vivienda_estado1_idx` (`estado_id_estado` ASC) VISIBLE,
  CONSTRAINT `fk_piso_vivienda_estado1`
    FOREIGN KEY (`estado_id_estado`)
    REFERENCES `enemdu`.`estado` (`id_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`paredes_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`paredes_vivienda` (
  `id_paredes_vivienda` INT NOT NULL,
  `tipo_paredes` VARCHAR(45) NOT NULL,
  `estado_id_estado` INT NOT NULL,
  PRIMARY KEY (`id_paredes_vivienda`),
  INDEX `fk_paredes_vivienda_estado1_idx` (`estado_id_estado` ASC) VISIBLE,
  CONSTRAINT `fk_paredes_vivienda_estado1`
    FOREIGN KEY (`estado_id_estado`)
    REFERENCES `enemdu`.`estado` (`id_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`piso_vivienda_has_Vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`piso_vivienda_has_Vivienda` (
  `id_Vivienda` INT NOT NULL,
  `id_piso_vivienda` INT NOT NULL,
  `estado_id_` INT NOT NULL,
  INDEX `fk_piso_vivienda_has_Vivienda_Vivienda1_idx` (`id_Vivienda` ASC) VISIBLE,
  INDEX `fk_piso_vivienda_has_Vivienda_piso_vivienda1_idx` (`id_piso_vivienda` ASC, `estado_id_` ASC) VISIBLE,
  CONSTRAINT `fk_piso_vivienda_has_Vivienda_piso_vivienda1`
    FOREIGN KEY (`id_piso_vivienda` , `estado_id_`)
    REFERENCES `enemdu`.`piso_vivienda` (`id_piso_vivienda` , `estado_id_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_piso_vivienda_has_Vivienda_Vivienda1`
    FOREIGN KEY (`id_Vivienda`)
    REFERENCES `enemdu`.`Vivienda` (`id_Vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`techo_vivienda_has_Vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`techo_vivienda_has_Vivienda` (
  `id_Vivienda` INT NOT NULL,
  `id_techo_vivienda` INT NOT NULL,
  `estado_id` INT NOT NULL,
  INDEX `fk_techo_vivienda_has_Vivienda_Vivienda1_idx` (`id_Vivienda` ASC) VISIBLE,
  INDEX `fk_techo_vivienda_has_Vivienda_techo_vivienda1_idx` (`id_techo_vivienda` ASC, `estado_id` ASC) VISIBLE,
  CONSTRAINT `fk_techo_vivienda_has_Vivienda_techo_vivienda1`
    FOREIGN KEY (`id_techo_vivienda` , `estado_id`)
    REFERENCES `enemdu`.`techo_vivienda` (`id_techo_vivienda` , `estado_id_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_techo_vivienda_has_Vivienda_Vivienda1`
    FOREIGN KEY (`id_Vivienda`)
    REFERENCES `enemdu`.`Vivienda` (`id_Vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`gastosArriendo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`gastosArriendo` (
  `id_gastos_arriendo` INT NOT NULL,
  `valor_arriendo` BIGINT(10000) NULL,
  `arriendoAgua` INT NULL,
  `arriendoLuz` INT NULL,
  `parentesco_dueño` INT NULL,
  `id_ocupacion_Vivienda` INT NOT NULL,
  PRIMARY KEY (`id_gastos_arriendo`),
  INDEX `fk_gastosArriendo_ocupacionVivienda1_idx` (`id_ocupacion_Vivienda` ASC) VISIBLE,
  CONSTRAINT `fk_gastosArriendo_ocupacionVivienda1`
    FOREIGN KEY (`id_ocupacion_Vivienda`)
    REFERENCES `enemdu`.`ocupacionVivienda` (`id_ocupacion_Vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`Hogar_has_combustible_vehiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`Hogar_has_combustible_vehiculos` (
  `id_hogar` INT NOT NULL,
  `id_combustible` INT NOT NULL,
  INDEX `fk_Hogar_has_combustible_vehiculos_combustible_vehiculos1_idx` (`id_combustible` ASC) VISIBLE,
  INDEX `fk_Hogar_has_combustible_vehiculos_Hogar1_idx` (`id_hogar` ASC) VISIBLE,
  CONSTRAINT `fk_Hogar_has_combustible_vehiculos_Hogar1`
    FOREIGN KEY (`id_hogar`)
    REFERENCES `enemdu`.`Hogar` (`id_hogar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hogar_has_combustible_vehiculos_combustible_vehiculos1`
    FOREIGN KEY (`id_combustible`)
    REFERENCES `enemdu`.`combustible_vehiculos` (`id_combustible`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `enemdu`.`Vivienda_has_paredes_vivienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enemdu`.`Vivienda_has_paredes_vivienda` (
  `id_Vivienda` INT NOT NULL,
  `id_paredes_vivienda` INT NOT NULL,
  `id_estado` INT NOT NULL,
  INDEX `fk_Vivienda_has_paredes_vivienda_paredes_vivienda1_idx` (`id_paredes_vivienda` ASC, `id_estado` ASC) VISIBLE,
  INDEX `fk_Vivienda_has_paredes_vivienda_Vivienda1_idx` (`id_Vivienda` ASC) VISIBLE,
  CONSTRAINT `fk_Vivienda_has_paredes_vivienda_Vivienda1`
    FOREIGN KEY (`id_Vivienda`)
    REFERENCES `enemdu`.`Vivienda` (`id_Vivienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vivienda_has_paredes_vivienda_paredes_vivienda1`
    FOREIGN KEY (`id_paredes_vivienda` , `id_estado`)
    REFERENCES `enemdu`.`paredes_vivienda` (`id_paredes_vivienda` , `estado_id_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
