/*
SQLyog Enterprise v12.08 (64 bit)
MySQL - 5.7.18-txsql-log : Database - hzpaydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hzpaydb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hzpaydb`;

/*Table structure for table `t_goods_order` */

DROP TABLE IF EXISTS `t_goods_order`;

CREATE TABLE `t_goods_order` (
  `GoodsOrderId` varchar(30) NOT NULL COMMENT '商品订单ID',
  `GoodsId` varchar(30) NOT NULL COMMENT '商品ID',
  `GoodsName` varchar(64) NOT NULL DEFAULT '' COMMENT '商品名称',
  `Amount` bigint(20) NOT NULL COMMENT '金额,单位分',
  `UserId` varchar(30) NOT NULL COMMENT '用户ID',
  `Status` tinyint(6) NOT NULL DEFAULT '0' COMMENT '订单状态,订单生成(0),支付成功(1),处理完成(2),处理失败(-1)',
  `PayOrderId` varchar(30) DEFAULT NULL COMMENT '支付订单号',
  `ChannelId` varchar(24) DEFAULT NULL COMMENT '渠道ID',
  `ChannelUserId` varchar(64) DEFAULT NULL COMMENT '支付渠道用户ID(微信openID或支付宝账号等第三方支付账号)',
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`GoodsOrderId`),
  UNIQUE KEY `IDX_PayOrderId` (`PayOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品订单表';

/*Data for the table `t_goods_order` */

insert  into `t_goods_order`(`GoodsOrderId`,`GoodsId`,`GoodsName`,`Amount`,`UserId`,`Status`,`PayOrderId`,`ChannelId`,`ChannelUserId`,`CreateTime`,`UpdateTime`) values ('G20191024114353000030','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 11:43:50','2019-10-24 20:57:37'),('G20191024114404000031','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 11:44:01','2019-10-24 20:57:37'),('G20191024114410000032','G_0002','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 11:44:06','2019-10-24 20:57:37'),('G20191024114833000035','G_0002','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 11:48:30','2019-10-24 20:57:37'),('G20191024114838000036','G_0003','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 11:48:35','2019-10-24 20:57:37'),('G20191024114845000037','G_0003','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 11:48:42','2019-10-24 20:57:37'),('G20191024115437000038','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 11:54:34','2019-10-24 20:57:37'),('G20191024115439000039','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 11:54:36','2019-10-24 20:57:37'),('G20191024133219000041','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 13:32:16','2019-10-24 20:57:37'),('G20191024133745000042','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 13:37:42','2019-10-24 20:57:37'),('G20191024134202000043','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 13:41:59','2019-10-24 20:57:37'),('G20191024134900000044','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 13:48:57','2019-10-24 20:57:37'),('G20191024135401000045','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 13:53:58','2019-10-24 20:57:37'),('G20191024144305000046','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 14:43:03','2019-10-24 20:57:37'),('G20191024144412000047','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 14:44:09','2019-10-24 20:57:37'),('G20191024144413000048','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 14:44:11','2019-10-24 20:57:37'),('G20191024144414000049','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 14:44:11','2019-10-24 20:57:37'),('G20191024144414000050','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 14:44:12','2019-10-24 20:57:37'),('G20191024144418000051','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 14:44:15','2019-10-24 20:57:37'),('G20191024144505000052','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 14:45:02','2019-10-24 20:57:37'),('G20191024144913000053','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 14:49:10','2019-10-24 20:57:37'),('G20191024150050000054','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 15:00:47','2019-10-24 20:57:37'),('G20191024150224000055','G_0001','测试商品',1,'hzpay_0000',0,NULL,NULL,NULL,'2019-10-24 15:02:22','2019-10-24 20:57:37');

/*Table structure for table `t_iap_receipt` */

DROP TABLE IF EXISTS `t_iap_receipt`;

CREATE TABLE `t_iap_receipt` (
  `PayOrderId` varchar(30) NOT NULL COMMENT '支付订单号',
  `MchId` varchar(30) NOT NULL COMMENT '商户ID',
  `TransactionId` varchar(24) NOT NULL COMMENT 'IAP业务号',
  `ReceiptData` text NOT NULL COMMENT '渠道ID',
  `Status` tinyint(6) NOT NULL DEFAULT '0' COMMENT '处理状态:0-未处理,1-处理成功,-1-处理失败',
  `HandleCount` tinyint(6) NOT NULL DEFAULT '0' COMMENT '处理次数',
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`PayOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='苹果支付凭据表';

/*Data for the table `t_iap_receipt` */

/*Table structure for table `t_mch_info` */

DROP TABLE IF EXISTS `t_mch_info`;

CREATE TABLE `t_mch_info` (
  `MchId` varchar(30) NOT NULL COMMENT '商户ID',
  `Name` varchar(30) NOT NULL COMMENT '名称',
  `Type` varchar(24) NOT NULL COMMENT '类型',
  `ReqKey` varchar(128) NOT NULL COMMENT '请求私钥',
  `ResKey` varchar(128) NOT NULL COMMENT '响应私钥',
  `State` tinyint(6) NOT NULL DEFAULT '1' COMMENT '商户状态,0-停止使用,1-使用中',
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`MchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商户信息表';

/*Data for the table `t_mch_info` */

insert  into `t_mch_info`(`MchId`,`Name`,`Type`,`ReqKey`,`ResKey`,`State`,`CreateTime`,`UpdateTime`) values ('10000001','6666','1','M86l522AV6q613Ii4W6u8K48uW8vM1N6bFgyv769220MdYe9u37N4y7rI5mQ','M86l522AV6q613Ii4W6u8K48uW8vM1N6bFgyv769220MdYe9u37N4y7rI5mQ',1,'2019-10-23 16:01:12','2019-10-23 16:02:29');

/*Table structure for table `t_mch_notify` */

DROP TABLE IF EXISTS `t_mch_notify`;

CREATE TABLE `t_mch_notify` (
  `OrderId` varchar(24) NOT NULL COMMENT '订单ID',
  `MchId` varchar(30) NOT NULL COMMENT '商户ID',
  `MchOrderNo` varchar(30) NOT NULL COMMENT '商户订单号',
  `OrderType` varchar(8) NOT NULL COMMENT '订单类型:1-支付,2-转账,3-退款',
  `NotifyUrl` varchar(2048) NOT NULL COMMENT '通知地址',
  `NotifyCount` tinyint(6) NOT NULL DEFAULT '0' COMMENT '通知次数',
  `Result` varchar(2048) DEFAULT NULL COMMENT '通知响应结果',
  `Status` tinyint(6) NOT NULL DEFAULT '1' COMMENT '通知状态,1-通知中,2-通知成功,3-通知失败',
  `LastNotifyTime` datetime DEFAULT NULL COMMENT '最后一次通知时间',
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`OrderId`),
  UNIQUE KEY `IDX_MchId_OrderType_MchOrderNo` (`MchId`,`OrderType`,`MchOrderNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商户通知表';

/*Data for the table `t_mch_notify` */

/*Table structure for table `t_pay_channel` */

DROP TABLE IF EXISTS `t_pay_channel`;

CREATE TABLE `t_pay_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '渠道主键ID',
  `ChannelId` varchar(24) NOT NULL COMMENT '渠道ID',
  `ChannelName` varchar(30) NOT NULL COMMENT '渠道名称,如:alipay,wechat',
  `ChannelMchId` varchar(32) NOT NULL COMMENT '渠道商户ID',
  `MchId` varchar(30) NOT NULL COMMENT '商户ID',
  `State` tinyint(6) NOT NULL DEFAULT '1' COMMENT '渠道状态,0-停止使用,1-使用中',
  `Param` varchar(4096) NOT NULL COMMENT '配置参数,json字符串',
  `Remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_MchId_MchOrderNo` (`ChannelId`,`MchId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='支付渠道表';

/*Data for the table `t_pay_channel` */

insert  into `t_pay_channel`(`id`,`ChannelId`,`ChannelName`,`ChannelMchId`,`MchId`,`State`,`Param`,`Remark`,`CreateTime`,`UpdateTime`) values (1,'ALIPAY_WAP','ALIPAY','1111','10000001',1,'1','','2019-10-22 10:14:47','2019-10-23 16:02:20');

/*Table structure for table `t_pay_order` */

DROP TABLE IF EXISTS `t_pay_order`;

CREATE TABLE `t_pay_order` (
  `PayOrderId` varchar(30) NOT NULL COMMENT '支付订单号',
  `MchId` varchar(30) NOT NULL COMMENT '商户ID',
  `MchOrderNo` varchar(30) NOT NULL COMMENT '商户订单号',
  `ChannelId` varchar(24) NOT NULL COMMENT '渠道ID',
  `Amount` bigint(20) NOT NULL COMMENT '支付金额,单位分',
  `Currency` varchar(3) NOT NULL DEFAULT 'cny' COMMENT '三位货币代码,人民币:cny',
  `Status` tinyint(6) NOT NULL DEFAULT '0' COMMENT '支付状态,0-订单生成,1-支付中(目前未使用),2-支付成功,3-业务处理完成',
  `ClientIp` varchar(32) DEFAULT NULL COMMENT '客户端IP',
  `Device` varchar(64) DEFAULT NULL COMMENT '设备',
  `Subject` varchar(64) NOT NULL COMMENT '商品标题',
  `Body` varchar(256) NOT NULL COMMENT '商品描述信息',
  `Extra` varchar(512) DEFAULT NULL COMMENT '特定渠道发起时额外参数',
  `ChannelMchId` varchar(32) NOT NULL COMMENT '渠道商户ID',
  `ChannelOrderNo` varchar(64) DEFAULT NULL COMMENT '渠道订单号',
  `ErrCode` varchar(64) DEFAULT NULL COMMENT '渠道支付错误码',
  `ErrMsg` varchar(128) DEFAULT NULL COMMENT '渠道支付错误描述',
  `Param1` varchar(64) DEFAULT NULL COMMENT '扩展参数1',
  `Param2` varchar(64) DEFAULT NULL COMMENT '扩展参数2',
  `NotifyUrl` varchar(128) NOT NULL COMMENT '通知地址',
  `NotifyCount` tinyint(6) NOT NULL DEFAULT '0' COMMENT '通知次数',
  `LastNotifyTime` bigint(20) DEFAULT NULL COMMENT '最后一次通知时间',
  `ExpireTime` bigint(20) DEFAULT NULL COMMENT '订单失效时间',
  `PaySuccTime` bigint(20) DEFAULT NULL COMMENT '订单支付成功时间',
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`PayOrderId`),
  UNIQUE KEY `IDX_MchId_MchOrderNo` (`MchId`,`MchOrderNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='支付订单表';

/*Data for the table `t_pay_order` */

insert  into `t_pay_order`(`PayOrderId`,`MchId`,`MchOrderNo`,`ChannelId`,`Amount`,`Currency`,`Status`,`ClientIp`,`Device`,`Subject`,`Body`,`Extra`,`ChannelMchId`,`ChannelOrderNo`,`ErrCode`,`ErrMsg`,`Param1`,`Param2`,`NotifyUrl`,`NotifyCount`,`LastNotifyTime`,`ExpireTime`,`PaySuccTime`,`CreateTime`,`UpdateTime`) values ('P0020191024114355000025','10000001','G20191024114353000030','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571888635923,'2019-10-24 11:43:52','2019-10-24 21:00:24'),('P0020191024114404000026','10000001','G20191024114404000031','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571888644393,'2019-10-24 11:44:01','2019-10-24 21:00:24'),('P0020191024114410000027','10000001','G20191024114410000032','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571888650342,'2019-10-24 11:44:07','2019-10-24 21:00:24'),('P0020191024114834000028','10000001','G20191024114833000035','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571888914554,'2019-10-24 11:48:31','2019-10-24 21:00:24'),('P0020191024114838000029','10000001','G20191024114838000036','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571888918577,'2019-10-24 11:48:35','2019-10-24 21:00:24'),('P0020191024114845000030','10000001','G20191024114845000037','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571888925853,'2019-10-24 11:48:42','2019-10-24 21:00:24'),('P0020191024115438000031','10000001','G20191024115437000038','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571889278210,'2019-10-24 11:54:34','2019-10-24 21:00:24'),('P0020191024115439000032','10000001','G20191024115439000039','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571889280033,'2019-10-24 11:54:36','2019-10-24 21:00:24'),('P0020191024133223000033','10000001','G20191024133219000041','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571895143667,'2019-10-24 13:32:20','2019-10-24 21:00:24'),('P0020191024133746000034','10000001','G20191024133745000042','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571895466725,'2019-10-24 13:37:43','2019-10-24 21:00:24'),('P0020191024134203000035','10000001','G20191024134202000043','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571895723236,'2019-10-24 13:42:00','2019-10-24 21:00:24'),('P0020191024134901000036','10000001','G20191024134900000044','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571896141820,'2019-10-24 13:48:58','2019-10-24 21:00:24'),('P0020191024135402000037','10000001','G20191024135401000045','ALIPAY_WAP',1,'cny',2,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571896454707,'2019-10-24 13:53:59','2019-10-24 21:00:24'),('P0020191024144412000038','10000001','G20191024144412000047','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571899452901,'2019-10-24 14:44:09','2019-10-24 21:00:24'),('P0020191024144414000039','10000001','G20191024144413000048','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571899454260,'2019-10-24 14:44:11','2019-10-24 21:00:24'),('P0020191024144414000040','10000001','G20191024144414000049','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571899455009,'2019-10-24 14:44:11','2019-10-24 21:00:24'),('P0020191024144415000041','10000001','G20191024144414000050','ALIPAY_WAP',1,'cny',1,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571899455236,'2019-10-24 14:44:12','2019-10-24 21:00:24'),('P0020191024144418000042','10000001','G20191024144418000051','ALIPAY_WAP',1,'cny',2,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571899472276,'2019-10-24 14:44:15','2019-10-24 21:00:24'),('P0020191024144505000043','10000001','G20191024144505000052','ALIPAY_WAP',1,'cny',2,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571899519343,'2019-10-24 14:45:02','2019-10-24 21:00:24'),('P0020191024144913000044','10000001','G20191024144913000053','ALIPAY_WAP',1,'cny',2,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571899764849,'2019-10-24 14:49:10','2019-10-24 21:00:24'),('P0020191024150050000045','10000001','G20191024150050000054','ALIPAY_WAP',1,'cny',2,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571900471707,'2019-10-24 15:00:47','2019-10-24 21:00:24'),('P0020191024150225000046','10000001','G20191024150224000055','ALIPAY_WAP',1,'cny',2,'18998949646','WEB','测试商品','hzpay_0000',NULL,'1111',NULL,NULL,NULL,'','','http://hzpay666.free.idcfengye.com/goods/payNotify',0,NULL,NULL,1571900553694,'2019-10-24 15:02:22','2019-10-24 21:00:24');

/*Table structure for table `t_refund_order` */

DROP TABLE IF EXISTS `t_refund_order`;

CREATE TABLE `t_refund_order` (
  `RefundOrderId` varchar(30) NOT NULL COMMENT '退款订单号',
  `PayOrderId` varchar(30) NOT NULL COMMENT '支付订单号',
  `ChannelPayOrderNo` varchar(64) DEFAULT NULL COMMENT '渠道支付单号',
  `MchId` varchar(30) NOT NULL COMMENT '商户ID',
  `MchRefundNo` varchar(30) NOT NULL COMMENT '商户退款单号',
  `ChannelId` varchar(24) NOT NULL COMMENT '渠道ID',
  `PayAmount` bigint(20) NOT NULL COMMENT '支付金额,单位分',
  `RefundAmount` bigint(20) NOT NULL COMMENT '退款金额,单位分',
  `Currency` varchar(3) NOT NULL DEFAULT 'cny' COMMENT '三位货币代码,人民币:cny',
  `Status` tinyint(6) NOT NULL DEFAULT '0' COMMENT '退款状态:0-订单生成,1-退款中,2-退款成功,3-退款失败,4-业务处理完成',
  `Result` tinyint(6) NOT NULL DEFAULT '0' COMMENT '退款结果:0-不确认结果,1-等待手动处理,2-确认成功,3-确认失败',
  `ClientIp` varchar(32) DEFAULT NULL COMMENT '客户端IP',
  `Device` varchar(64) DEFAULT NULL COMMENT '设备',
  `RemarkInfo` varchar(256) DEFAULT NULL COMMENT '备注',
  `ChannelUser` varchar(32) DEFAULT NULL COMMENT '渠道用户标识,如微信openId,支付宝账号',
  `UserName` varchar(24) DEFAULT NULL COMMENT '用户姓名',
  `ChannelMchId` varchar(32) NOT NULL COMMENT '渠道商户ID',
  `ChannelOrderNo` varchar(32) DEFAULT NULL COMMENT '渠道订单号',
  `ChannelErrCode` varchar(128) DEFAULT NULL COMMENT '渠道错误码',
  `ChannelErrMsg` varchar(128) DEFAULT NULL COMMENT '渠道错误描述',
  `Extra` varchar(512) DEFAULT NULL COMMENT '特定渠道发起时额外参数',
  `NotifyUrl` varchar(128) NOT NULL COMMENT '通知地址',
  `Param1` varchar(64) DEFAULT NULL COMMENT '扩展参数1',
  `Param2` varchar(64) DEFAULT NULL COMMENT '扩展参数2',
  `ExpireTime` datetime DEFAULT NULL COMMENT '订单失效时间',
  `RefundSuccTime` datetime DEFAULT NULL COMMENT '订单退款成功时间',
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`RefundOrderId`),
  UNIQUE KEY `IDX_MchId_MchOrderNo` (`MchId`,`MchRefundNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='退款订单表';

/*Data for the table `t_refund_order` */

/*Table structure for table `t_trans_order` */

DROP TABLE IF EXISTS `t_trans_order`;

CREATE TABLE `t_trans_order` (
  `TransOrderId` varchar(30) NOT NULL COMMENT '转账订单号',
  `MchId` varchar(30) NOT NULL COMMENT '商户ID',
  `MchTransNo` varchar(30) NOT NULL COMMENT '商户转账单号',
  `ChannelId` varchar(24) NOT NULL COMMENT '渠道ID',
  `Amount` bigint(20) NOT NULL COMMENT '转账金额,单位分',
  `Currency` varchar(3) NOT NULL DEFAULT 'cny' COMMENT '三位货币代码,人民币:cny',
  `Status` tinyint(6) NOT NULL DEFAULT '0' COMMENT '转账状态:0-订单生成,1-转账中,2-转账成功,3-转账失败,4-业务处理完成',
  `Result` tinyint(6) NOT NULL DEFAULT '0' COMMENT '转账结果:0-不确认结果,1-等待手动处理,2-确认成功,3-确认失败',
  `ClientIp` varchar(32) DEFAULT NULL COMMENT '客户端IP',
  `Device` varchar(64) DEFAULT NULL COMMENT '设备',
  `RemarkInfo` varchar(256) DEFAULT NULL COMMENT '备注',
  `ChannelUser` varchar(32) DEFAULT NULL COMMENT '渠道用户标识,如微信openId,支付宝账号',
  `UserName` varchar(24) DEFAULT NULL COMMENT '用户姓名',
  `ChannelMchId` varchar(32) NOT NULL COMMENT '渠道商户ID',
  `ChannelOrderNo` varchar(32) DEFAULT NULL COMMENT '渠道订单号',
  `ChannelErrCode` varchar(128) DEFAULT NULL COMMENT '渠道错误码',
  `ChannelErrMsg` varchar(128) DEFAULT NULL COMMENT '渠道错误描述',
  `Extra` varchar(512) DEFAULT NULL COMMENT '特定渠道发起时额外参数',
  `NotifyUrl` varchar(128) NOT NULL COMMENT '通知地址',
  `Param1` varchar(64) DEFAULT NULL COMMENT '扩展参数1',
  `Param2` varchar(64) DEFAULT NULL COMMENT '扩展参数2',
  `ExpireTime` datetime DEFAULT NULL COMMENT '订单失效时间',
  `TransSuccTime` datetime DEFAULT NULL COMMENT '订单转账成功时间',
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`TransOrderId`),
  UNIQUE KEY `IDX_MchId_MchOrderNo` (`MchId`,`MchTransNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='转账订单表';

/*Data for the table `t_trans_order` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
