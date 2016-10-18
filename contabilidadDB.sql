-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: contabilidad
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comprobantecabecera`
--

DROP TABLE IF EXISTS `comprobantecabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprobantecabecera` (
  `numComprobante` char(9) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `tipoComprobante` char(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `clienteBanco` varchar(35) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `numeroCheque` varchar(6) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `concepto` varchar(65) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`numComprobante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobantecabecera`
--

LOCK TABLES `comprobantecabecera` WRITE;
/*!40000 ALTER TABLE `comprobantecabecera` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprobantecabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprobantedetalle`
--

DROP TABLE IF EXISTS `comprobantedetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprobantedetalle` (
  `idComprobante` char(9) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tComprobante` char(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fechaComprobante` date NOT NULL,
  `cuentaComprobante` char(8) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `debeHaber` char(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `glosa` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobantedetalle`
--

LOCK TABLES `comprobantedetalle` WRITE;
/*!40000 ALTER TABLE `comprobantedetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `comprobantedetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contagestion`
--

DROP TABLE IF EXISTS `contagestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contagestion` (
  `gestion` char(6) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`gestion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contagestion`
--

LOCK TABLES `contagestion` WRITE;
/*!40000 ALTER TABLE `contagestion` DISABLE KEYS */;
INSERT INTO `contagestion` VALUES ('201601');
/*!40000 ALTER TABLE `contagestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contanocomprobante`
--

DROP TABLE IF EXISTS `contanocomprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contanocomprobante` (
  `numero` char(9) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contanocomprobante`
--

LOCK TABLES `contanocomprobante` WRITE;
/*!40000 ALTER TABLE `contanocomprobante` DISABLE KEYS */;
INSERT INTO `contanocomprobante` VALUES ('201603003');
/*!40000 ALTER TABLE `contanocomprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contaplana`
--

DROP TABLE IF EXISTS `contaplana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contaplana` (
  `cuenta` char(8) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel` char(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contaplana`
--

LOCK TABLES `contaplana` WRITE;
/*!40000 ALTER TABLE `contaplana` DISABLE KEYS */;
INSERT INTO `contaplana` VALUES ('11010100','Caja Chica Fabrica','4'),('11010200','Caja Chica Tienda','4'),('11010300','Caja Mayor','4'),('11020101','Banco Economico MN','5'),('11020102','Banco Economico ME','5'),('11020201','Banco Nacional de Bolivia MN','5'),('11020301','Banco Union MN','5'),('12010100','Caja Nacional de Salud','4'),('12010200','Caja Cordes','4'),('12010300','Alcaldía de Sacaba','4'),('12011400','Varios','4'),('12020100','I.V.A. Crédito Fiscal','4'),('12020200','IUE  por Compensar','4'),('13010100','Muebles de Oficina','4'),('13010200','Muebles de Hospital ','4'),('13010300','Estantes Mecano','4'),('13010400','Muebles en General','4'),('13020100','Muebles de Oficina','4'),('13020200','Muebles de Hospital','4'),('13020300','Estantes  Mecano','4'),('13020400','Muebles en General','4'),('13030101','Planchas','5'),('13030102','Platinos','5'),('13030103','Tubos','5'),('13030104','Angulares','5'),('13030105','Perfil de aluminio','5'),('13030106','Fierros','5'),('13030107','Otros Ferrosos','5'),('13030201','Ruedas','5'),('13030202','Chapas','5'),('13030203','Bisagras','5'),('13030204','Armellas','5'),('13030205','Jaladores','5'),('13030206','Rieles','5'),('13030207','Rieles','5'),('13030208','Pispotes','5'),('13030209','Otros Accesorios','5'),('13030301','Cuerinas','5'),('13030302','Esponjas','5'),('13030303','Cierres','5'),('13030304','Hilos varios','5'),('13030305','Jaladores','5'),('13030306','Broches','5'),('13030307','Cinturones','5'),('13030308','Pispotes','5'),('13030401','Pernos','5'),('13030402','Tuercas','5'),('13030403','Clavos','5'),('13030404','Remaches','5'),('13030405','Abrazaderas','5'),('13030406','Tornillos','5'),('13030407','Roscalata','5'),('13030408','Mitofix','5'),('13030409','Ramplus','5'),('13030410','Volandas','5'),('13030411','Otros elementos de sujecion','5'),('13030501','Pintura liquida','5'),('13030502','Pintura en polvo','5'),('13030503','Gasolina','5'),('13030504','Superfox','5'),('13030505','agua destilada','5'),('13030506','Diesel','5'),('13030507','Liquido hidraulico','5'),('13030508','Masilla de Madera','5'),('13030509','Thinner','5'),('13030510','Otros','5'),('13030601','Regatones','5'),('13030602','Piso de goma','5'),('13030603','Pasa Cables','5'),('13030605','Regatón con perno','5'),('13030606','Goma Amortiguador','5'),('13030607','Mangueras','5'),('13030608','Otros','5'),('13030702','Alambres Acerados','5'),('13030703','Acrilico','5'),('13030704','Resortes de Catre','5'),('13030705','Resortes de Escritorios','5'),('13030706','Cadena Porta Tubo de Oxigeno ','5'),('13030707','Otros','5'),('13030801','Alambres','5'),('13030802','Alambre Eléctrico ','5'),('13030803','Clavija','5'),('13030804','Focos','5'),('13030805','Interruptor','5'),('13030806','Soquets','5'),('13030807','Tubos  Fluorecentes','5'),('13030808','Reactancias','5'),('13030809','Otros Electricos','5'),('13030902','Alambre Inox. Tic. Mic','5'),('13030903','Brocas','5'),('13030904','Bronce','5'),('13030905','Cuchillas ','5'),('13030906','Discos Varios','5'),('13030907','Electrodos','5'),('13030908','Lijas ','5'),('13030909','Otros','5'),('13031001','MDF','5'),('13031002','MDF 9 Milimetros','5'),('13031003','Formicas','5'),('13031004','Aglomerado Rustico ','5'),('13031005','Postformables','5'),('13031006','Melamines','5'),('13031007','Venestas','5'),('13031008','Cartón prensado ','5'),('13031010','Otros','5'),('13031101','Cañerías Negras','5'),('13031102','Cañería Galvanizada','5'),('13031103','Bandejas','5'),('13031104','Bases varias','5'),('13031105','Bisagras','5'),('13031201','Pre Fabricados Propios','5'),('14010100','Terreno Quintanilla','4'),('14010200','Terreno Fabrica','4'),('14010300','Terreno Colcapirhua','4'),('14010400','Terreno Santa Cruz','4'),('14020100','Edificio Fabrica','4'),('14020200','Edificio Santa Cruz','4'),('14020300','Edificio Colcapirhua','4'),('14020400','Edificio Quintanilla','4'),('14030100','Depreciación Acumulada Edificio','4'),('14030200','Depreciación Acumulada Edificio','4'),('14030300','Depreciación Acumulada Edifici','4'),('14030400','Depreciacion Acumulada Edifici','4'),('14040100','Maquinaria y  Equipo','4'),('14060100','Herramientas','4'),('14080100','Muebles y Enseres Fabrica','4'),('14080200','Muebles y Enseres Sucursal','4'),('14100100','Vehiculos','4'),('14120100','Equipo de Computacion','4'),('15010100','COMTECO 4234511','4'),('15010200','COMTECO 4722052','4'),('15010300','COMTECO 4722053','4'),('15010400','COMTECO 4722054','4'),('22010101','Ferrotodo','5'),('22010102','Pertec S.A.','5'),('22010103','Químicos Unidos','5'),('22010104','Asia Importaciones','5'),('22010105','Otros proveedores','5'),('22010201','Aportes a Instituciones por pa','5'),('22010202','Otras cuentas por pagar','5'),('22010301','Documentos por pagar','5'),('22010400','Anticipo de Clientes','4'),('22010501','IT por pagar','5'),('22010601','Sueldos y Salarios por pagar','5'),('22010700','Honorarios por pagar','4'),('22010801','AFP Futuro de Bolivia por paga','5'),('22010802','AFP Previsión por pagar','5'),('22010901','AFP Futuro de Bolivia por pagar','5'),('22010902','AFP Previsión por pagar','5'),('22010903','CNS Por Pagar','5'),('22011001','DF -IVA','5'),('22011002','IT por pagar','5'),('22011003','IUE por Pagar','5'),('22011101','Retención Servicios IT por pag','5'),('22011102','Retenciones Bienes IT por pagar','5'),('22011103','Retenciones Servicios IUE por pagar','5'),('22011104','Retencion Bienes IUE por pagar','5'),('22011105','Retencion RC IVA por pagar','5'),('22011201','Energia electrica por pagar','5'),('22011202','Servicio Telefonico por pagar','5'),('22011203','Servicio de internet por pagar','5'),('22011204','Agua y alcantarillado por pagar','5'),('22011205','Servicio de gas natural por pagar','5'),('22011206','Servicio de recojo de basura por pagar','5'),('22011301','Provision para aguinaldos','5'),('22020101','Prevision para indeminizacion','5'),('22020102','Prevision para cuentas incobrables','5'),('22020103','Previsión para contingencias','5'),('22020201','Prestamos bancarios','5'),('33010100','Capital Socio Roberto Iriarte ','4'),('33010200','Capital Socia Marcela Iriarte ','4'),('33010300','Capital Socia Roxana Iriarte','4'),('33020100','Ajuste de Capital','4'),('33020200','Ajuste de Reservas Patrimonial','4'),('33030100','Reserva para Revaluo Tecnico','4'),('33040100','Reserva Legal','4'),('33050100','Resultados Acumulados','4'),('33050200','Resultados de la Gestion','4'),('44010100','Venta Muebles de OFICINA','4'),('44010200','Venta Muebles de Hospital','4'),('44010300','Venta Muebles en General','4'),('44010400','Venta Muebles Mecano','4'),('44010500','Recargo en ventas','4'),('44020100','Alquileres pecibidos','4'),('44020200','Ganancias en Ventas de Activos Fijos','4'),('44020300','Intereses bancarios percibidos','4'),('44020400','Mantenimiento de valor','4'),('44020500','Diferencia de cambio o redondeo','4'),('44020600','Ajuste por Inflación y Tenemos de Bienes','4'),('51010100','Sueldos y salarios','4'),('51010200','Sueldos Personal eventual','4'),('51010300','Cargas sociales sobre sueldos','4'),('51010400','Honorarios profesionales','4'),('51010500','Comisiones','4'),('51010600','Aguinaldos','4'),('51010700','Vacaciones','4'),('51010800','Subsidios','4'),('51010900','Lactancia','4'),('51011000','Indemnizaciones','4'),('51020100','Energia electrica','4'),('51020200','Servicio telefonico','4'),('51020300','Servicio de Internet','4'),('51020400','Servicio de agua potable y alcantarillad','4'),('51020500','Servicio de gas natural','4'),('51020600','Servicio de recojo de basura','4'),('51030100','Suministros de Oficina','4'),('51030200','Material de limpieza','4'),('51030300','Lubricantes y combustibles','4'),('51040100','Gastos legales','4'),('51040200','Gastos de Imprenta','4'),('51040300','Gastos de aseo y limpieza','4'),('51040400','Gastos de publicaciones','4'),('51040500','Servicio de fotocopias y anillados','4'),('51040600','Servicio de Transporte','4'),('51040700','Gasto por combustible','4'),('51040800','Gasto por boletas de garantia','4'),('51040900','Gasto por solvencia','4'),('51041000','Gastos por seguros','4'),('51041100','Amortización por gastos de organizacion','4'),('51050100','Rep. y Mtto. Edificios','4'),('51050200','Rep. y Mtto. Muebles','4'),('51050300','Rep. y Mtto. Vehiculos','4'),('51050400','Rep. y Mtto. Maquinaria y Equipo','4'),('51050500','Rep y Mtto Equipo de Computacion','4'),('51060100','Impuesto a las Transacciones','4'),('51060200','Impuesto a las Utilidades de Empresas','4'),('51060300','Impuesto a las Transacciones Financieras','4'),('51060400','Tasas Municipales','4'),('51060500','Impuestos a los Inmuebles','4'),('51070100','Depreciación Edificios','4'),('51070200','Depreciación muebles y enseres','4'),('51070300','Depreciación Vehiculos','4'),('51070400','Depreciación Maquinaria y Equipo','4'),('51070500','Depreciación Equipo de Computacion','4'),('51070600','Depreciación Herramientas','4'),('51080100','Intereses bancarios','4'),('51080200','Gastos Bancarios','4'),('51080300','Mantenimiento de cuentas','4'),('51080400','Gasto por seguro de desgravamen e incend','4'),('51090100','Mantenimiento de valor','4'),('51090200','Diferencia de cambio o redondeo','4'),('51090300','Ajuste por Inflación y Tenemos de Bienes','4');
/*!40000 ALTER TABLE `contaplana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contaplandectas`
--

DROP TABLE IF EXISTS `contaplandectas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contaplandectas` (
  `cuenta` char(8) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nivel` char(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `debeacumulado` decimal(12,2) NOT NULL,
  `haberacumulado` decimal(12,2) NOT NULL,
  `debemes` decimal(12,2) NOT NULL,
  `habermes` decimal(12,2) NOT NULL,
  PRIMARY KEY (`cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contaplandectas`
--

LOCK TABLES `contaplandectas` WRITE;
/*!40000 ALTER TABLE `contaplandectas` DISABLE KEYS */;
INSERT INTO `contaplandectas` VALUES ('10000000','Activo','1',0.00,0.00,0.00,0.00),('11000000','Activo Disponible','2',0.00,0.00,0.00,0.00),('12000000','Activo Exigible','2',0.00,0.00,0.00,0.00),('13000000','Activo Realizable','2',0.00,0.00,0.00,0.00),('14000000','Activo Fijo','2',0.00,0.00,0.00,0.00),('15000000','Otros Activos','2',0.00,0.00,0.00,0.00),('20000000','Pasivos','1',0.00,0.00,0.00,0.00),('21000000','Pasivo  Corriente','2',0.00,0.00,0.00,0.00),('30000000','Patrimonio','1',0.00,0.00,0.00,0.00),('31000000','Capital','2',0.00,0.00,0.00,0.00),('40000000','Ingresos','1',0.00,0.00,0.00,0.00),('41000000','Ingresos','2',0.00,0.00,0.00,0.00),('50000000','Egresos','1',0.00,0.00,0.00,0.00),('51000000','Gastos de Operacion','2',0.00,0.00,0.00,0.00),('60000000','Costo de Produccion','1',0.00,0.00,0.00,0.00),('61000000','Costo de Produccion en Proceso','2',0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `contaplandectas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariopermisos`
--

DROP TABLE IF EXISTS `usuariopermisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuariopermisos` (
  `codUsuario` smallint(7) NOT NULL,
  `menu` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `deposito` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `proceso1` tinyint(1) DEFAULT NULL,
  `proceso2` tinyint(1) DEFAULT NULL,
  `proceso3` tinyint(1) DEFAULT NULL,
  `proceso4` tinyint(1) DEFAULT NULL,
  `proceso5` tinyint(1) DEFAULT NULL,
  `proceso6` tinyint(1) DEFAULT NULL,
  `proceso7` tinyint(1) DEFAULT NULL,
  `proceso8` tinyint(1) DEFAULT NULL,
  `proceso9` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`codUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariopermisos`
--

LOCK TABLES `usuariopermisos` WRITE;
/*!40000 ALTER TABLE `usuariopermisos` DISABLE KEYS */;
INSERT INTO `usuariopermisos` VALUES (1,'todos','todos',1,1,1,1,1,1,1,1,1),(2,'inventarios','bodega',1,1,1,1,NULL,NULL,NULL,NULL,NULL),(3,'inventarios','almacen',1,1,1,1,NULL,NULL,NULL,NULL,NULL),(4,'contabilidad',NULL,1,1,1,1,1,1,1,1,1),(5,'ventas',NULL,1,1,1,1,1,1,NULL,NULL,NULL),(6,'ventas',NULL,1,1,1,1,NULL,NULL,NULL,NULL,NULL),(7,'todos',NULL,1,1,1,1,1,1,1,1,1),(8,'contabilidad',NULL,1,1,1,1,1,1,1,1,1),(9,'contabilidad',NULL,1,1,1,1,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuariopermisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` smallint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `contrasenha` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'superuser','21232f297a57a5a743894a0e4a801fc3'),(2,'thanos229','f405b93c00c22d3565915c76ddd94a06'),(3,'oscar','f9922f37d18cbcf7bcd5057a2e960f2e'),(4,'conta1','0493c6183b554f8520ee6d7d7bc7b7dd'),(5,'store1','7507fced52c1501a896484988b04ebd1'),(6,'store2','160c2652076b7f9e670b86fc5e7cf101'),(7,'developer','69f45230b269789bf27f266a6fdd8739'),(8,'conta2','36946b2d213b6831d4e51a5e88cedcce'),(9,'conta3','0aa0b6b3207f0b3839381db1962574a2');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-17 15:17:53
