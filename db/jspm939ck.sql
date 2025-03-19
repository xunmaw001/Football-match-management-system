-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm939ck
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `baomingxinxi`
--

DROP TABLE IF EXISTS `baomingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baomingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `bisaibianhao` varchar(200) DEFAULT NULL COMMENT '比赛编号',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='报名信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baomingxinxi`
--

LOCK TABLES `baomingxinxi` WRITE;
/*!40000 ALTER TABLE `baomingxinxi` DISABLE KEYS */;
INSERT INTO `baomingxinxi` VALUES (61,'2021-04-02 05:46:21','账号1','姓名1','性别1','联系手机1','http://localhost:8080/jspm939ck/upload/baomingxinxi_zhaopian1.jpg','比赛编号1',1),(62,'2021-04-02 05:46:21','账号2','姓名2','性别2','联系手机2','http://localhost:8080/jspm939ck/upload/baomingxinxi_zhaopian2.jpg','比赛编号2',2),(63,'2021-04-02 05:46:21','账号3','姓名3','性别3','联系手机3','http://localhost:8080/jspm939ck/upload/baomingxinxi_zhaopian3.jpg','比赛编号3',3),(64,'2021-04-02 05:46:21','账号4','姓名4','性别4','联系手机4','http://localhost:8080/jspm939ck/upload/baomingxinxi_zhaopian4.jpg','比赛编号4',4),(65,'2021-04-02 05:46:21','账号5','姓名5','性别5','联系手机5','http://localhost:8080/jspm939ck/upload/baomingxinxi_zhaopian5.jpg','比赛编号5',5),(66,'2021-04-02 05:46:21','账号6','姓名6','性别6','联系手机6','http://localhost:8080/jspm939ck/upload/baomingxinxi_zhaopian6.jpg','比赛编号6',6);
/*!40000 ALTER TABLE `baomingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-04-02 05:46:21',1,1,'提问1','回复1',1),(82,'2021-04-02 05:46:21',2,2,'提问2','回复2',2),(83,'2021-04-02 05:46:21',3,3,'提问3','回复3',3),(84,'2021-04-02 05:46:21',4,4,'提问4','回复4',4),(85,'2021-04-02 05:46:21',5,5,'提问5','回复5',5),(86,'2021-04-02 05:46:21',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm939ck/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm939ck/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm939ck/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2021-04-02 05:46:21','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-04-02 05:46:21','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-04-02 05:46:21','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-04-02 05:46:21','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-04-02 05:46:21','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-04-02 05:46:21','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiuduijieshao`
--

DROP TABLE IF EXISTS `qiuduijieshao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiuduijieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiuduimingcheng` varchar(200) DEFAULT NULL COMMENT '球队名称',
  `qiuduijieshao` longtext COMMENT '球队介绍',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='球队介绍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiuduijieshao`
--

LOCK TABLES `qiuduijieshao` WRITE;
/*!40000 ALTER TABLE `qiuduijieshao` DISABLE KEYS */;
INSERT INTO `qiuduijieshao` VALUES (21,'2021-04-02 05:46:21','球队名称1','球队介绍1','http://localhost:8080/jspm939ck/upload/qiuduijieshao_zhaopian1.jpg'),(22,'2021-04-02 05:46:21','球队名称2','球队介绍2','http://localhost:8080/jspm939ck/upload/qiuduijieshao_zhaopian2.jpg'),(23,'2021-04-02 05:46:21','球队名称3','球队介绍3','http://localhost:8080/jspm939ck/upload/qiuduijieshao_zhaopian3.jpg'),(24,'2021-04-02 05:46:21','球队名称4','球队介绍4','http://localhost:8080/jspm939ck/upload/qiuduijieshao_zhaopian4.jpg'),(25,'2021-04-02 05:46:21','球队名称5','球队介绍5','http://localhost:8080/jspm939ck/upload/qiuduijieshao_zhaopian5.jpg'),(26,'2021-04-02 05:46:21','球队名称6','球队介绍6','http://localhost:8080/jspm939ck/upload/qiuduijieshao_zhaopian6.jpg');
/*!40000 ALTER TABLE `qiuduijieshao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiuxingjieshao`
--

DROP TABLE IF EXISTS `qiuxingjieshao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiuxingjieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingzi` varchar(200) DEFAULT NULL COMMENT '名字',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `fazhanlicheng` longtext COMMENT '发展历程',
  `jiatingbeijing` longtext COMMENT '家庭背景',
  `zhongdashijian` longtext COMMENT '重大事件',
  `huojiang` longtext COMMENT '获奖',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='球星介绍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiuxingjieshao`
--

LOCK TABLES `qiuxingjieshao` WRITE;
/*!40000 ALTER TABLE `qiuxingjieshao` DISABLE KEYS */;
INSERT INTO `qiuxingjieshao` VALUES (31,'2021-04-02 05:46:21','名字1','男','2021-04-02','发展历程1','家庭背景1','重大事件1','获奖1','http://localhost:8080/jspm939ck/upload/qiuxingjieshao_zhaopian1.jpg'),(32,'2021-04-02 05:46:21','名字2','男','2021-04-02','发展历程2','家庭背景2','重大事件2','获奖2','http://localhost:8080/jspm939ck/upload/qiuxingjieshao_zhaopian2.jpg'),(33,'2021-04-02 05:46:21','名字3','男','2021-04-02','发展历程3','家庭背景3','重大事件3','获奖3','http://localhost:8080/jspm939ck/upload/qiuxingjieshao_zhaopian3.jpg'),(34,'2021-04-02 05:46:21','名字4','男','2021-04-02','发展历程4','家庭背景4','重大事件4','获奖4','http://localhost:8080/jspm939ck/upload/qiuxingjieshao_zhaopian4.jpg'),(35,'2021-04-02 05:46:21','名字5','男','2021-04-02','发展历程5','家庭背景5','重大事件5','获奖5','http://localhost:8080/jspm939ck/upload/qiuxingjieshao_zhaopian5.jpg'),(36,'2021-04-02 05:46:21','名字6','男','2021-04-02','发展历程6','家庭背景6','重大事件6','获奖6','http://localhost:8080/jspm939ck/upload/qiuxingjieshao_zhaopian6.jpg');
/*!40000 ALTER TABLE `qiuxingjieshao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saishishengkuang`
--

DROP TABLE IF EXISTS `saishishengkuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saishishengkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `cansaiqiuyuan` longtext COMMENT '参赛球员',
  `saishi` varchar(200) DEFAULT NULL COMMENT '赛事',
  `bifen` varchar(200) DEFAULT NULL COMMENT '比分',
  `bisaixijie` longtext COMMENT '比赛细节',
  `bisaishijian` datetime DEFAULT NULL COMMENT '比赛时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='赛事盛况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saishishengkuang`
--

LOCK TABLES `saishishengkuang` WRITE;
/*!40000 ALTER TABLE `saishishengkuang` DISABLE KEYS */;
INSERT INTO `saishishengkuang` VALUES (41,'2021-04-02 05:46:21','http://localhost:8080/jspm939ck/upload/saishishengkuang_tupian1.jpg','参赛球员1','赛事1','比分1','比赛细节1','2021-04-02 13:46:21'),(42,'2021-04-02 05:46:21','http://localhost:8080/jspm939ck/upload/saishishengkuang_tupian2.jpg','参赛球员2','赛事2','比分2','比赛细节2','2021-04-02 13:46:21'),(43,'2021-04-02 05:46:21','http://localhost:8080/jspm939ck/upload/saishishengkuang_tupian3.jpg','参赛球员3','赛事3','比分3','比赛细节3','2021-04-02 13:46:21'),(44,'2021-04-02 05:46:21','http://localhost:8080/jspm939ck/upload/saishishengkuang_tupian4.jpg','参赛球员4','赛事4','比分4','比赛细节4','2021-04-02 13:46:21'),(45,'2021-04-02 05:46:21','http://localhost:8080/jspm939ck/upload/saishishengkuang_tupian5.jpg','参赛球员5','赛事5','比分5','比赛细节5','2021-04-02 13:46:21'),(46,'2021-04-02 05:46:21','http://localhost:8080/jspm939ck/upload/saishishengkuang_tupian6.jpg','参赛球员6','赛事6','比分6','比赛细节6','2021-04-02 13:46:21');
/*!40000 ALTER TABLE `saishishengkuang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-02 05:46:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xianxiazuqiusai`
--

DROP TABLE IF EXISTS `xianxiazuqiusai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xianxiazuqiusai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `bisaibianhao` varchar(200) DEFAULT NULL COMMENT '比赛编号',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `renshu` varchar(200) DEFAULT NULL COMMENT '人数',
  `renjunfeiyong` varchar(200) DEFAULT NULL COMMENT '人均费用',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bisaibianhao` (`bisaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='线下足球赛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xianxiazuqiusai`
--

LOCK TABLES `xianxiazuqiusai` WRITE;
/*!40000 ALTER TABLE `xianxiazuqiusai` DISABLE KEYS */;
INSERT INTO `xianxiazuqiusai` VALUES (51,'2021-04-02 05:46:21','图片1','比赛编号1','地点1','人数1','人均费用1','2021-04-02 13:46:21','备注1'),(52,'2021-04-02 05:46:21','图片2','比赛编号2','地点2','人数2','人均费用2','2021-04-02 13:46:21','备注2'),(53,'2021-04-02 05:46:21','图片3','比赛编号3','地点3','人数3','人均费用3','2021-04-02 13:46:21','备注3'),(54,'2021-04-02 05:46:21','图片4','比赛编号4','地点4','人数4','人均费用4','2021-04-02 13:46:21','备注4'),(55,'2021-04-02 05:46:21','图片5','比赛编号5','地点5','人数5','人均费用5','2021-04-02 13:46:21','备注5'),(56,'2021-04-02 05:46:21','图片6','比赛编号6','地点6','人数6','人均费用6','2021-04-02 13:46:21','备注6');
/*!40000 ALTER TABLE `xianxiazuqiusai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xitonggonggao`
--

DROP TABLE IF EXISTS `xitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitonggonggao`
--

LOCK TABLES `xitonggonggao` WRITE;
/*!40000 ALTER TABLE `xitonggonggao` DISABLE KEYS */;
INSERT INTO `xitonggonggao` VALUES (71,'2021-04-02 05:46:21','图片1','标题1','内容1'),(72,'2021-04-02 05:46:21','图片2','标题2','内容2'),(73,'2021-04-02 05:46:21','图片3','标题3','内容3'),(74,'2021-04-02 05:46:21','图片4','标题4','内容4'),(75,'2021-04-02 05:46:21','图片5','标题5','内容5'),(76,'2021-04-02 05:46:21','图片6','标题6','内容6');
/*!40000 ALTER TABLE `xitonggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `lianxiyouxiang` varchar(200) DEFAULT NULL COMMENT '联系邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-02 05:46:21','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/jspm939ck/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-02 05:46:21','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/jspm939ck/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-02 05:46:21','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/jspm939ck/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-02 05:46:21','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/jspm939ck/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-02 05:46:21','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/jspm939ck/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-02 05:46:21','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/jspm939ck/upload/yonghu_zhaopian6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-17  9:56:24
