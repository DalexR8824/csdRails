-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: csdRails_development
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES (1,'Administradores','Esta lista pertenecen todos los usuarios administradores','2018-02-06 15:46:51','2018-02-06 16:13:16'),(2,'Soporte','Este es el grupo de las personas encargadas de soporte en RDS','2018-02-06 15:47:17','2018-02-06 15:47:17'),(3,'Desarrollo','Lista de desarrollo','2018-02-16 18:55:23','2018-02-16 18:55:23');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `agents_jobs`
--

LOCK TABLES `agents_jobs` WRITE;
/*!40000 ALTER TABLE `agents_jobs` DISABLE KEYS */;
INSERT INTO `agents_jobs` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `agents_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `agents_users`
--

LOCK TABLES `agents_users` WRITE;
/*!40000 ALTER TABLE `agents_users` DISABLE KEYS */;
INSERT INTO `agents_users` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,8),(1,17),(1,18),(1,20),(2,2),(2,5),(2,18),(2,20);
/*!40000 ALTER TABLE `agents_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-11-24 16:05:40','2017-11-24 16:05:40');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flows`
--

LOCK TABLES `flows` WRITE;
/*!40000 ALTER TABLE `flows` DISABLE KEYS */;
INSERT INTO `flows` VALUES (1,'Flujo de prueba 1','Descripción del flujo 1','2018-01-23 13:47:04','2018-01-23 15:08:32','activo'),(2,'Revisión','Revisión del formulario','2018-01-23 13:59:08','2018-01-23 15:08:14','activo');
/*!40000 ALTER TABLE `flows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `flows_statuses`
--

LOCK TABLES `flows_statuses` WRITE;
/*!40000 ALTER TABLE `flows_statuses` DISABLE KEYS */;
INSERT INTO `flows_statuses` VALUES (1,7),(1,12),(1,13),(1,14),(1,16),(1,17),(1,18);
/*!40000 ALTER TABLE `flows_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `has_users`
--

LOCK TABLES `has_users` WRITE;
/*!40000 ALTER TABLE `has_users` DISABLE KEYS */;
INSERT INTO `has_users` VALUES (1,10,2,'2018-01-24 20:56:48','2018-01-24 20:56:48'),(2,10,3,'2018-01-24 20:56:48','2018-01-24 20:56:48'),(3,2,8,'2018-01-29 17:03:43','2018-01-29 17:03:43'),(4,11,1,'2018-01-31 21:59:42','2018-01-31 21:59:42'),(5,12,1,'2018-01-31 22:00:17','2018-01-31 22:00:17');
/*!40000 ALTER TABLE `has_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Grupo Administrativo','Pertencen los administrativos de la compañia','2018-02-08 16:24:26','2018-02-08 22:27:02');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jobs_users`
--

LOCK TABLES `jobs_users` WRITE;
/*!40000 ALTER TABLE `jobs_users` DISABLE KEYS */;
INSERT INTO `jobs_users` VALUES (1,1),(1,2),(1,3),(1,18),(1,20);
/*!40000 ALTER TABLE `jobs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permissions_roles`
--

LOCK TABLES `permissions_roles` WRITE;
/*!40000 ALTER TABLE `permissions_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `resolutions`
--

LOCK TABLES `resolutions` WRITE;
/*!40000 ALTER TABLE `resolutions` DISABLE KEYS */;
INSERT INTO `resolutions` VALUES (1,'david','dasd','No','2017-11-28 18:23:03','2018-01-23 15:26:55'),(2,'das','dds','No','2017-11-28 18:23:58','2017-11-28 19:41:09'),(3,'Nueva Resolución','Descripciñon de la nueva resolución','No','2017-12-19 16:03:24','2018-01-05 19:08:26'),(4,'Nueva CSD','Nueva Resolución','Si','2018-01-05 19:09:01','2018-01-05 19:09:01'),(5,'Nueva','Prueb can can','Si','2018-01-22 17:01:59','2018-01-22 17:01:59');
/*!40000 ALTER TABLE `resolutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador','Controla recursos del sistema','2018-01-24 17:20:13','2018-01-24 17:20:13'),(2,'Soporte','Acceso a recursos de la aplicación restringido','2018-01-24 17:20:21','2018-01-24 19:34:58'),(3,'Empleado','Recursos controlados','2018-01-24 17:20:54','2018-01-24 17:20:54'),(4,'Vendedor','Esta persona puede ver el modulo de ventas','2018-01-24 19:55:36','2018-01-24 19:55:36'),(5,'David','Prueba','2018-01-24 20:19:11','2018-01-24 20:19:11'),(6,'Dasd','asdasd','2018-01-24 20:39:15','2018-01-24 20:39:15'),(10,'Controlador','Prueba ','2018-01-24 20:56:48','2018-01-24 20:56:48'),(11,'asd','asd','2018-01-31 21:59:41','2018-01-31 21:59:41'),(12,'dddd','dddd','2018-01-31 22:00:17','2018-01-31 22:00:17'),(13,'otro','otros','2018-01-31 22:27:01','2018-01-31 22:27:01'),(14,'we','we','2018-01-31 22:27:38','2018-01-31 22:27:38'),(15,'des','des','2018-02-01 20:02:28','2018-02-01 20:02:28'),(16,'wer','wer David','2018-02-01 20:45:08','2018-02-01 20:54:56');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(1,4),(2,1),(2,8),(3,3),(3,8),(4,8),(4,20),(5,8),(5,20),(16,2),(16,5),(16,17);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20171124160228'),('20171127214550'),('20171129172635'),('20171222195808'),('20180118214827'),('20180123133721'),('20180123145733'),('20180123151858'),('20180124171048'),('20180124194008'),('20180131165125'),('20180131204221'),('20180201210943'),('20180205194518'),('20180205195120'),('20180205212550'),('20180206155441'),('20180208155212'),('20180208155442'),('20180208215614'),('20180212153828');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (7,'David','Prueba Test','2017-11-28 18:17:54','2018-01-05 19:05:02','activo'),(9,'rol','Descripción','2017-11-28 18:18:17','2017-11-28 18:18:17','activo'),(10,'Iluminati','Joaqui','2017-11-28 18:18:36','2017-11-28 18:18:36','activo'),(11,'Estados','Error ','2017-11-28 18:18:50','2017-11-28 18:18:50','activo'),(12,'Soporte','rr','2018-01-18 20:21:03','2018-01-23 15:21:23','activo'),(13,'Finalizado','Finalizar Casos','2018-02-12 16:39:57','2018-02-12 16:49:23','activo  '),(14,'Cerrado','Cerrar','2018-02-12 16:40:16','2018-02-12 16:40:16','activo'),(15,'Espera','Casos','2018-02-12 16:48:36','2018-02-12 16:48:36','activo  '),(16,'Nuevo','Nuevo estado','2018-02-12 16:49:47','2018-02-12 16:49:47','activo  '),(17,'Asignado','Caso asignado','2018-02-12 16:49:57','2018-02-12 16:49:57','activo  '),(18,'Resuelto','Caso resuelto','2018-02-12 16:50:08','2018-02-12 16:50:08','activo  ');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'david@rengifo.com','$2a$11$Nad63qm9J50KVzQAs49omORHqEU6x5fShs25PPl90Epmbh3gNQpnC',NULL,NULL,NULL,72,'2018-02-19 18:10:29','2018-02-19 15:29:05','127.0.0.1','127.0.0.1','David','Rengifo',1234567,3013414773,'cc',1014193017,'1988-06-24','M','s',1,'dalex88.sdk@hotmail.com','Calle 23 # 83 25','activo','David R',NULL,'2017-12-06 21:18:44','2018-02-19 18:10:29',NULL),(2,'hola@hola.com','$2a$11$.1m9XzYRE4SO4dfBGrTceOoI3FKd8.9sn0lOrpNAcPm6V.1UdfKeW',NULL,NULL,NULL,2,'2018-02-15 16:33:33','2017-12-22 16:57:38','127.0.0.1','127.0.0.1','Andres','Conde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'activo',NULL,NULL,'2017-12-22 16:57:38','2018-02-15 16:33:33',NULL),(3,'isa@rengifo.com','$2a$11$KMqhd0eWpo0zUsGRhTDCIeYRRpvxuiSsmAoWZ03qBGq2PMXJEbD0K',NULL,NULL,NULL,1,'2017-12-22 19:55:33','2017-12-22 19:55:33','127.0.0.1','127.0.0.1','Cristina','Rodriguez',NULL,NULL,'cc',NULL,NULL,'M','s',NULL,'','','activo','',NULL,'2017-12-22 19:55:33','2018-02-06 20:19:06',NULL),(4,'nata@aranda.com','$2a$11$hV1udhs3.n3A3cy3hjbuR.aB6hvIyg0vn0CMKBYNbZZ8i8mHFttla',NULL,NULL,NULL,1,'2017-12-22 20:00:43','2017-12-22 20:00:43','127.0.0.1','127.0.0.1','Nathalia','Aranda',NULL,NULL,'cc',NULL,NULL,'M','s',NULL,'','','activo','',NULL,'2017-12-22 20:00:43','2018-02-06 20:19:17',0),(5,'david.rengifo@gmail.com','$2a$11$.Y.U1wi9zL4aQZpcl.qsHepYGRjeehBTPrzpPA2zRP/xG8GYXtY5.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'Juan','Perez',NULL,NULL,'cc',NULL,NULL,'M','s',NULL,'','','activo','Dalex',NULL,'2018-01-18 20:41:17','2018-02-06 20:19:36',0),(6,'prueba@usuarios.com','$2a$11$akO.4mS35sYPBKlbJDuODub39B7SZxUeb9JNZiATDILtqmMS9CC6u',NULL,NULL,NULL,4,'2018-02-15 16:53:29','2018-02-15 16:48:44','127.0.0.1','127.0.0.1','Usuario','de Pruebas',1234567,3013414773,'pa',1014193017,'2018-06-24','M','s',2,'dalex88.sdk@hotmail.com','Calle 23 # 83 25','inactivo','Dalex',NULL,'2018-01-18 21:55:17','2018-02-15 16:53:29',0),(7,'usuario@prueba.com','$2a$11$uOzl3kitUib.tAJSSL2OG.nn.InBtPnd8rduFa.60R3IRZKWSd/gO',NULL,NULL,NULL,1,'2018-01-19 21:34:19','2018-01-19 21:34:19','127.0.0.1','127.0.0.1','Usuario','Prueba',987654,310897767,'ce',101999999,'2018-04-24','M','s',0,'personal@mail.com','carrera 1 # 3-3','inactivo','rds',NULL,'2018-01-19 21:30:02','2018-02-06 20:35:43',0),(8,'soporte@prueba.com','$2a$11$8B4b9mbmcBnq8vR9KQmdhu2c6XHTgIRMtrwdBVETP07X2oSXCQYL.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'Alejandro','Castro',1234567,3013414773,'cc',1234242323,'2018-01-29','M','s',1,'mail@personal.com','calle simepre viva # 85','activo','Andres Conde',NULL,'2018-01-29 17:03:42','2018-02-06 20:20:02',NULL),(17,'carlos@rds.com','$2a$11$Z8Prq9hEBecRv0slYRyU7OLYQUR9Ku7ajKjUJhIjpSMPuaQXBae2.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'Carlos','Ortiz',1234567,3013414773,'cc',122344432,'2018-01-31','M','s',4,'carlos@rds.com','Calle 23 # 83 25','activo','Carlos',NULL,'2018-01-31 21:36:09','2018-01-31 21:36:09',NULL),(18,'asd@dasd.com','$2a$11$MWUak7SZUpybeVrDbi.pUObVwmu0cPiJIchgmX4mv1vnUBqIdc/3m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'Antonio','Garcia',1234567,1234567890,'cc',2134211,'2018-01-31','M','s',5,'sss@dd.com','Calle 23 # 83 25','activo','dasd',NULL,'2018-01-31 21:50:58','2018-02-06 20:20:20',NULL),(20,'dasd@dasd.ccd','$2a$11$0W8C8WDQFObhWHHfqLkUd.HrzbO1720plUj3j/becrvll7nEtKMca',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'Stella','Ortega',234234234234,234234234,'cc',2333232323,'2018-02-13','M','s',3,'dalex88.sdk@hotmail.comdasd','ddd 23','activo','daasd',NULL,'2018-02-01 21:16:35','2018-02-06 20:20:52',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-21  9:10:42
