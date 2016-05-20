-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema carrilloofrece
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema carrilloofrece
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `carrilloofrece` DEFAULT CHARACTER SET utf8 ;
USE `carrilloofrece` ;

-- -----------------------------------------------------
-- Table `carrilloofrece`.`categoria_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`categoria_producto` (
  `id_categoria_producto` INT(4) NOT NULL AUTO_INCREMENT,
  `cat_pro_nombre` VARCHAR(30) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`id_categoria_producto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`usuario` (
  `id_usuario` INT(4) NOT NULL AUTO_INCREMENT,
  `usu_nombre` VARCHAR(50) NOT NULL,
  `usu_contrasenia` VARCHAR(35) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`persona` (
  `id_persona` INT(4) NOT NULL AUTO_INCREMENT,
  `per_nombre` VARCHAR(35) NOT NULL,
  `per_apellido` VARCHAR(40) NOT NULL,
  `per_correo` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `per_correo_visible` TINYINT(1) NOT NULL,
  `per_telefono` VARCHAR(10) NULL,
  `per_telefono_visible` TINYINT(1) NULL,
  `per_red_social` VARCHAR(60) NULL,
  `per_red_social_visible` TINYINT(1) NOT NULL,
  `id_usuario` INT(4) NOT NULL,
  PRIMARY KEY (`id_persona`),
  INDEX `fk_personal_usuario1_idx` (`id_usuario` ASC),
  CONSTRAINT `fk_personal_usuario1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `carrilloofrece`.`usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`producto` (
  `id_producto` INT(4) NOT NULL AUTO_INCREMENT,
  `pro_nombre` VARCHAR(45) NOT NULL,
  `pro_descripcion_breve` VARCHAR(150) NOT NULL,
  `pro_descripcion_general` VARCHAR(1000) NOT NULL,
  `pro_precio` DECIMAL(7,2) NOT NULL,
  `pro_fecha_publicacion` DATE NOT NULL,
  `pro_estatus` TINYINT(1) NOT NULL,
  `id_categoria_producto` INT(4) NOT NULL,
  `id_persona` INT(4) NOT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX `fk_producto_categoria_idx` (`id_categoria_producto` ASC),
  INDEX `fk_producto_persona1_idx` (`id_persona` ASC),
  CONSTRAINT `fk_producto_categoria`
    FOREIGN KEY (`id_categoria_producto`)
    REFERENCES `carrilloofrece`.`categoria_producto` (`id_categoria_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_persona1`
    FOREIGN KEY (`id_persona`)
    REFERENCES `carrilloofrece`.`persona` (`id_persona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`categoria_negocio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`categoria_negocio` (
  `id_categoria_negocio` INT(4) NOT NULL AUTO_INCREMENT,
  `cat_neg_nombre` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id_categoria_negocio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`colonia_negocio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`colonia_negocio` (
  `id_colonia_negocio` INT(4) NOT NULL AUTO_INCREMENT,
  `direc_colonia` VARCHAR(20) NOT NULL,
  `direc_codigo_postal` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`id_colonia_negocio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`negocio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`negocio` (
  `id_negocio` INT(4) NOT NULL AUTO_INCREMENT,
  `neg_nombre` VARCHAR(45) NOT NULL,
  `neg_coordenadas` VARCHAR(25) NOT NULL,
  `neg_telefono` VARCHAR(10) NULL,
  `neg_fecha_publicacion` DATE NOT NULL,
  `neg_descripcion_breve` VARCHAR(150) NOT NULL,
  `neg_descripcion_general` VARCHAR(1000) CHARACTER SET 'utf8' NOT NULL,
  `neg_correo` VARCHAR(50) NULL,
  `neg_calle` VARCHAR(30) NOT NULL,
  `neg_cruzamiento` VARCHAR(30) NOT NULL,
  `neg_referencia` VARCHAR(100) NOT NULL,
  `neg_red_social` VARCHAR(60) NULL,
  `neg_img_busqueda` INT(1) NOT NULL,
  `id_categoria_negocio` INT(4) NOT NULL,
  `id_persona` INT(4) NOT NULL,
  `id_colonia_negocio` INT(4) NOT NULL,
  PRIMARY KEY (`id_negocio`),
  INDEX `fk_negocio_categorias_negocios1_idx` (`id_categoria_negocio` ASC),
  INDEX `fk_negocio_persona1_idx` (`id_persona` ASC),
  INDEX `fk_negocio_direccion1_idx` (`id_colonia_negocio` ASC),
  CONSTRAINT `fk_negocio_categorias_negocios1`
    FOREIGN KEY (`id_categoria_negocio`)
    REFERENCES `carrilloofrece`.`categoria_negocio` (`id_categoria_negocio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_negocio_persona1`
    FOREIGN KEY (`id_persona`)
    REFERENCES `carrilloofrece`.`persona` (`id_persona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_negocio_direccion1`
    FOREIGN KEY (`id_colonia_negocio`)
    REFERENCES `carrilloofrece`.`colonia_negocio` (`id_colonia_negocio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`categoria_servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`categoria_servicio` (
  `id_categoria_servicio` INT(4) NOT NULL AUTO_INCREMENT,
  `cat_ser_nombre` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id_categoria_servicio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`colonia_servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`colonia_servicio` (
  `id_colonia_servicio` INT(4) NOT NULL AUTO_INCREMENT,
  `direc_colonia` VARCHAR(20) NOT NULL,
  `direc_codigo_postal` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`id_colonia_servicio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`servicio` (
  `id_servicio` INT(4) NOT NULL AUTO_INCREMENT,
  `ser_nombre` VARCHAR(45) NOT NULL,
  `ser_coordenadas` VARCHAR(25) NOT NULL,
  `ser_telefono` VARCHAR(10) NULL,
  `ser_descripcion_breve` VARCHAR(150) NOT NULL,
  `ser_descripcion_general` VARCHAR(1000) NOT NULL,
  `ser_fecha_publicacion` DATE NOT NULL,
  `ser_calle` VARCHAR(30) NOT NULL,
  `ser_cruzamiento` VARCHAR(30) NOT NULL,
  `ser_referencia` VARCHAR(100) NOT NULL,
  `ser_red_social` VARCHAR(45) NULL,
  `id_categoria_servicio` INT(4) NOT NULL,
  `id_persona` INT(4) NOT NULL,
  `id_colonia_servicio` INT(4) NOT NULL,
  PRIMARY KEY (`id_servicio`),
  INDEX `fk_servicios_categoria_servicios1_idx` (`id_categoria_servicio` ASC),
  INDEX `fk_servicios_persona1_idx` (`id_persona` ASC),
  INDEX `fk_servicios_direccion_servicio1_idx` (`id_colonia_servicio` ASC),
  CONSTRAINT `fk_servicios_categoria_servicios1`
    FOREIGN KEY (`id_categoria_servicio`)
    REFERENCES `carrilloofrece`.`categoria_servicio` (`id_categoria_servicio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_servicios_persona1`
    FOREIGN KEY (`id_persona`)
    REFERENCES `carrilloofrece`.`persona` (`id_persona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_servicios_direccion_servicio1`
    FOREIGN KEY (`id_colonia_servicio`)
    REFERENCES `carrilloofrece`.`colonia_servicio` (`id_colonia_servicio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`denuncia_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`denuncia_producto` (
  `id_denuncia_producto` INT(4) NOT NULL AUTO_INCREMENT,
  `den_motivo` VARCHAR(100) NOT NULL,
  `den_fecha` DATE NOT NULL,
  `id_producto` INT(4) NOT NULL,
  PRIMARY KEY (`id_denuncia_producto`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `carrilloofrece`.`fecha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`fecha` (
  `fec_fecha` DATE NOT NULL,
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`administrador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`administrador` (
  `id_administrador` INT(2) NOT NULL AUTO_INCREMENT,
  `admin_usuario` VARCHAR(35) NOT NULL,
  `admin_contrasenia` VARCHAR(20) NOT NULL,
  `admin_tipo` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id_administrador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`notificacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`notificacion` (
  `id_notificacion` INT(4) NOT NULL AUTO_INCREMENT,
  `not_nombre_persona` VARCHAR(35) NULL,
  `not_correo` VARCHAR(50) NOT NULL,
  `not_fecha` DATE NOT NULL,
  `id_producto` INT(4) NOT NULL,
  PRIMARY KEY (`id_notificacion`),
  INDEX `fk_notificacion_producto1_idx` (`id_producto` ASC),
  CONSTRAINT `fk_notificacion_producto1`
    FOREIGN KEY (`id_producto`)
    REFERENCES `carrilloofrece`.`producto` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`horario_negocio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`horario_negocio` (
  `id_negocio` INT(4) NOT NULL,
  `hor_dia` VARCHAR(9) NOT NULL,
  `hor_corte1_apertura` TIME NOT NULL,
  `hor_corte1_cierre` TIME NOT NULL,
  `hor_corte2_apertura` TIME NULL,
  `hor_corte2_cierre` TIME NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`horario_servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`horario_servicio` (
  `id_servicio` INT(4) NOT NULL,
  `hor_dia` VARCHAR(9) NOT NULL,
  `hor_corte1_apertura` TIME NOT NULL,
  `hor_corte1_cierre` TIME NOT NULL,
  `hor_corte2_apertura` TIME NULL,
  `hor_corte2_cierre` TIME NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`calificacion_negocio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`calificacion_negocio` (
  `cal_puntaje` INT(2) NOT NULL,
  `id_usuario` INT(4) NOT NULL,
  `id_negocio` INT(4) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`calificacion_servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`calificacion_servicio` (
  `cal_puntaje` INT(2) NOT NULL,
  `id_usuario` INT(4) NOT NULL,
  `id_servicio` INT(4) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`calificacion_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`calificacion_usuario` (
  `cal_puntaje` INT(2) NOT NULL,
  `id_persona` INT(4) NOT NULL,
  `id_usuario` INT(4) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`denuncia_negocio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`denuncia_negocio` (
  `id_denuncia_negocio` INT(4) NOT NULL AUTO_INCREMENT,
  `den_motivo` VARCHAR(100) NOT NULL,
  `den_fecha` DATE NOT NULL,
  `id_negocio` INT(4) NOT NULL,
  PRIMARY KEY (`id_denuncia_negocio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`denuncia_servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`denuncia_servicio` (
  `id_denuncia_servicio` INT NOT NULL AUTO_INCREMENT,
  `den_motivo` VARCHAR(100) NOT NULL,
  `den_fecha` DATE NOT NULL,
  `id_servicio` INT(4) NOT NULL,
  PRIMARY KEY (`id_denuncia_servicio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`publicidad_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`publicidad_producto` (
  `id_publicidad_producto` INT(4) NOT NULL AUTO_INCREMENT,
  `pub_monto_pagado` DECIMAL(6,2) NOT NULL,
  `pub_imagen` VARCHAR(4) NOT NULL,
  `pub_meses` INT(2) NOT NULL,
  `pub_fecha` DATE NULL,
  `id_producto` INT(4) NOT NULL,
  PRIMARY KEY (`id_publicidad_producto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`publicidad_negocio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`publicidad_negocio` (
  `id_publicidad_negocio` INT(4) NOT NULL AUTO_INCREMENT,
  `pub_monto_pagado` DECIMAL(6,2) NOT NULL,
  `pub_imagen` VARCHAR(4) NOT NULL,
  `pub_meses` INT(2) NOT NULL,
  `pub_fecha` DATE NULL,
  `id_negocio` INT(4) NOT NULL,
  PRIMARY KEY (`id_publicidad_negocio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carrilloofrece`.`publicidad_servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carrilloofrece`.`publicidad_servicio` (
  `id_publicidad_servicio` INT(4) NOT NULL AUTO_INCREMENT,
  `pub_monto_pagado` DECIMAL(6,2) NOT NULL,
  `pub_imagen` VARCHAR(4) NOT NULL,
  `pub_meses` INT(2) NOT NULL,
  `pub_fecha` DATE NULL,
  `id_servicio` INT(4) NOT NULL,
  PRIMARY KEY (`id_publicidad_servicio`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
