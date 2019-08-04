/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.7.26 : Database - tienda
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tienda` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tienda`;

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cat` varchar(255) NOT NULL,
  `iva` decimal(4,2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `categoria` */

insert  into `categoria`(`id`,`nombre_cat`,`iva`) values 
(1,'Alimentacion',10.00),
(2,'Electronica',10.00),
(3,'Limpieza',5.00),
(4,'Limpieza',5.00),
(5,'Limpieza',5.00);

/*Table structure for table `categoria_has_productos` */

DROP TABLE IF EXISTS `categoria_has_productos`;

CREATE TABLE `categoria_has_productos` (
  `categoria_id` int(11) NOT NULL,
  `productos_id` int(11) NOT NULL,
  `activo` tinyint(4) NOT NULL,
  PRIMARY KEY (`categoria_id`,`productos_id`),
  KEY `fk_categoria_has_productos_productos1_idx` (`productos_id`),
  KEY `fk_categoria_has_productos_categoria_idx` (`categoria_id`),
  CONSTRAINT `fk_categoria_has_productos_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_categoria_has_productos_productos1` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `categoria_has_productos` */

insert  into `categoria_has_productos`(`categoria_id`,`productos_id`,`activo`) values 
(3,1,1),
(3,2,1),
(3,3,1),
(3,4,1),
(3,5,1),
(3,6,1);

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(9,2) unsigned NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `productos` */

insert  into `productos`(`id`,`nombre`,`descripcion`,`precio`,`imagen`,`stock`) values 
(1,'Lejia','Sirve pa limpiar',2.00,'lejia.png',100),
(2,'Esponja','Sirve pa fregar',5.00,'esp.png',50),
(3,'Fregona','Sirve pa algo',10.00,'freg.png',100),
(4,'Detergente','Sirve pa limpiar profundo',3.00,'deter.png',90),
(5,'Aerosol','Sirve pa aromatizar',23.00,'limpio.png',140),
(6,'Suavizante','Sirve pa suavizar la ropa',23.00,'suavecito.png',106),
(7,'Harina','La mas blanca',12.00,'panadero.png',123),
(8,'Aceite','De oliva el mejor',15.00,'oliva.png',100),
(9,'Movil','Sirve pa chatear',144.00,'mob.png',100),
(10,'Radio','De las de antes',56.00,'lafm.png',100),
(11,'Lejia','Sirve pa limpiar',2.00,'lejia.png',100),
(12,'Esponja','Sirve pa fregar',5.00,'esp.png',50),
(13,'Fregona','Sirve pa algo',10.00,'freg.png',100),
(14,'Detergente','Sirve pa limpiar profundo',3.00,'deter.png',90),
(15,'Aerosol','Sirve pa aromatizar',23.00,'limpio.png',140),
(16,'Suavizante','Sirve pa suavizar la ropa',23.00,'suavecito.png',106),
(17,'Harina','La mas blanca',12.00,'panadero.png',123),
(18,'Aceite','De oliva el mejor',15.00,'oliva.png',100),
(19,'Movil','Sirve pa chatear',144.00,'mob.png',100),
(20,'Radio','De las de antes',56.00,'lafm.png',100),
(21,'Lejia','Sirve pa limpiar',2.00,'lejia.png',100),
(22,'Esponja','Sirve pa fregar',5.00,'esp.png',50),
(23,'Fregona','Sirve pa algo',10.00,'freg.png',100),
(24,'Detergente','Sirve pa limpiar profundo',3.00,'deter.png',90),
(25,'Aerosol','Sirve pa aromatizar',23.00,'limpio.png',140),
(26,'Suavizante','Sirve pa suavizar la ropa',23.00,'suavecito.png',106),
(27,'Harina','La mas blanca',12.00,'panadero.png',123),
(28,'Aceite','De oliva el mejor',15.00,'oliva.png',100),
(29,'Movil','Sirve pa chatear',144.00,'mob.png',100),
(30,'Radio','De las de antes',56.00,'lafm.png',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
