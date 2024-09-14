/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t093`;
CREATE DATABASE IF NOT EXISTS `t093` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t093`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409720830 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-04-26 03:55:15', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-04-26 03:55:15', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-04-26 03:55:15', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-04-26 03:55:15', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-04-26 03:55:15', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-04-26 03:55:15', 6, '宇宙银河系月球1号', '月某', '13823888886', '是'),
	(1619409720829, '2021-04-26 04:02:00', 1619409471994, '广东省梅州市梅江区江南街道法政路瑞景花苑(法政路)', '11', '11111111111', '是');

DROP TABLE IF EXISTS `cailiaofenlei`;
CREATE TABLE IF NOT EXISTS `cailiaofenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cailiaofenlei` varchar(200) DEFAULT NULL COMMENT '材料分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409555984 DEFAULT CHARSET=utf8mb3 COMMENT='材料分类';

DELETE FROM `cailiaofenlei`;
INSERT INTO `cailiaofenlei` (`id`, `addtime`, `cailiaofenlei`) VALUES
	(61, '2021-04-26 03:55:15', '材料分类1'),
	(62, '2021-04-26 03:55:15', '材料分类2'),
	(63, '2021-04-26 03:55:15', '材料分类3'),
	(64, '2021-04-26 03:55:15', '材料分类4'),
	(65, '2021-04-26 03:55:15', '材料分类5'),
	(66, '2021-04-26 03:55:15', '材料分类6'),
	(1619409555983, '2021-04-26 03:59:15', '士大夫收到');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'cheliangzhanshi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707910807047 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1707910807046, '2024-02-14 11:40:06', 'cheliangzhanshi', 11, 22, '车辆编号2', 'http://localhost:8080/springbootil05r/upload/cheliangzhanshi_cheliangzhaopian2.jpg', 1, 99.9, 0);

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409786287 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(71, '2021-04-26 03:55:15', 1, 1, '提问1', '回复1', 1),
	(72, '2021-04-26 03:55:15', 2, 2, '提问2', '回复2', 2),
	(73, '2021-04-26 03:55:15', 3, 3, '提问3', '回复3', 3),
	(74, '2021-04-26 03:55:15', 4, 4, '提问4', '回复4', 4),
	(75, '2021-04-26 03:55:15', 5, 5, '提问5', '回复5', 5),
	(76, '2021-04-26 03:55:15', 6, 6, '提问6', '回复6', 6),
	(1619409753929, '2021-04-26 04:02:33', 1619409471994, NULL, '士大夫都是收到', NULL, 0),
	(1619409786286, '2021-04-26 04:03:06', 1619409471994, 1, NULL, '各个地方地方地方地方', NULL);

DROP TABLE IF EXISTS `cheliangpinpai`;
CREATE TABLE IF NOT EXISTS `cheliangpinpai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangpinpai` varchar(200) DEFAULT NULL COMMENT '车辆品牌',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409503039 DEFAULT CHARSET=utf8mb3 COMMENT='车辆品牌';

DELETE FROM `cheliangpinpai`;
INSERT INTO `cheliangpinpai` (`id`, `addtime`, `cheliangpinpai`) VALUES
	(31, '2021-04-26 03:55:15', '车辆品牌1'),
	(32, '2021-04-26 03:55:15', '车辆品牌2'),
	(33, '2021-04-26 03:55:15', '车辆品牌3'),
	(34, '2021-04-26 03:55:15', '车辆品牌4'),
	(35, '2021-04-26 03:55:15', '车辆品牌5'),
	(36, '2021-04-26 03:55:15', '车辆品牌6'),
	(1619409503038, '2021-04-26 03:58:22', '丰田');

DROP TABLE IF EXISTS `cheliangxinghao`;
CREATE TABLE IF NOT EXISTS `cheliangxinghao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangxinghao` varchar(200) DEFAULT NULL COMMENT '车辆型号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409513246 DEFAULT CHARSET=utf8mb3 COMMENT='车辆型号';

DELETE FROM `cheliangxinghao`;
INSERT INTO `cheliangxinghao` (`id`, `addtime`, `cheliangxinghao`) VALUES
	(41, '2021-04-26 03:55:15', '车辆型号1'),
	(42, '2021-04-26 03:55:15', '车辆型号2'),
	(43, '2021-04-26 03:55:15', '车辆型号3'),
	(44, '2021-04-26 03:55:15', '车辆型号4'),
	(45, '2021-04-26 03:55:15', '车辆型号5'),
	(46, '2021-04-26 03:55:15', '车辆型号6'),
	(1619409513245, '2021-04-26 03:58:32', '致享');

DROP TABLE IF EXISTS `cheliangzhanshi`;
CREATE TABLE IF NOT EXISTS `cheliangzhanshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangbianhao` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliangpinpai` varchar(200) DEFAULT NULL COMMENT '车辆品牌',
  `cheliangxinghao` varchar(200) DEFAULT NULL COMMENT '车辆型号',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `huandangfangshi` varchar(200) DEFAULT NULL COMMENT '换挡方式',
  `cheliangzhaopian` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `pailiang` varchar(200) DEFAULT NULL COMMENT '排量',
  `cheshenleixing` varchar(200) DEFAULT NULL COMMENT '车身类型',
  `chezhong` varchar(200) DEFAULT NULL COMMENT '车重',
  `youxiangrongji` varchar(200) DEFAULT NULL COMMENT '油箱容积',
  `chemenshu` varchar(200) DEFAULT NULL COMMENT '车门数',
  `zhouju` varchar(200) DEFAULT NULL COMMENT '轴距',
  `chezuo` varchar(200) DEFAULT NULL COMMENT '车座',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `cheliangxiangqing` longtext COMMENT '车辆详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheliangbianhao` (`cheliangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409544167 DEFAULT CHARSET=utf8mb3 COMMENT='车辆展示';

DELETE FROM `cheliangzhanshi`;
INSERT INTO `cheliangzhanshi` (`id`, `addtime`, `cheliangbianhao`, `cheliangpinpai`, `cheliangxinghao`, `yanse`, `huandangfangshi`, `cheliangzhaopian`, `pailiang`, `cheshenleixing`, `chezhong`, `youxiangrongji`, `chemenshu`, `zhouju`, `chezuo`, `dengjiriqi`, `cheliangxiangqing`, `clicktime`, `clicknum`, `price`) VALUES
	(21, '2021-04-26 03:55:15', '车辆编号1', '车辆品牌1', '车辆型号1', '颜色1', '手动挡', 'http://localhost:8080/springbootil05r/upload/cheliangzhanshi_cheliangzhaopian1.jpg', '排量1', '车身类型1', '车重1', '油箱容积1', '车门数1', '轴距1', '车座1', '2021-04-26', '车辆详情1', '2024-02-14 19:51:23', 4, 99.9),
	(22, '2021-04-26 03:55:15', '车辆编号2', '车辆品牌2', '车辆型号2', '颜色2', '手动挡', 'http://localhost:8080/springbootil05r/upload/cheliangzhanshi_cheliangzhaopian2.jpg', '排量2', '车身类型2', '车重2', '油箱容积2', '车门数2', '轴距2', '车座2', '2021-04-26', '车辆详情2', '2024-02-14 19:52:55', 7, 99.9),
	(23, '2021-04-26 03:55:15', '车辆编号3', '车辆品牌3', '车辆型号3', '颜色3', '手动挡', 'http://localhost:8080/springbootil05r/upload/cheliangzhanshi_cheliangzhaopian3.jpg', '排量3', '车身类型3', '车重3', '油箱容积3', '车门数3', '轴距3', '车座3', '2021-04-26', '车辆详情3', '2021-04-26 12:01:31', 7, 99.9),
	(24, '2021-04-26 03:55:15', '车辆编号4', '车辆品牌4', '车辆型号4', '颜色4', '手动挡', 'http://localhost:8080/springbootil05r/upload/cheliangzhanshi_cheliangzhaopian4.jpg', '排量4', '车身类型4', '车重4', '油箱容积4', '车门数4', '轴距4', '车座4', '2021-04-26', '车辆详情4', '2021-04-26 11:55:15', 4, 99.9),
	(25, '2021-04-26 03:55:15', '车辆编号5', '车辆品牌5', '车辆型号5', '颜色5', '手动挡', 'http://localhost:8080/springbootil05r/upload/cheliangzhanshi_cheliangzhaopian5.jpg', '排量5', '车身类型5', '车重5', '油箱容积5', '车门数5', '轴距5', '车座5', '2021-04-26', '车辆详情5', '2021-04-26 12:06:24', 7, 99.9),
	(26, '2021-04-26 03:55:15', '车辆编号6', '车辆品牌6', '车辆型号6', '颜色6', '手动挡', 'http://localhost:8080/springbootil05r/upload/cheliangzhanshi_cheliangzhaopian6.jpg', '排量6', '车身类型6', '车重6', '油箱容积6', '车门数6', '轴距6', '车座6', '2021-04-26', '车辆详情6', '2021-04-26 12:06:13', 12, 99.9),
	(1619409544166, '2021-04-26 03:59:03', '1619409418205', '丰田', '致享', '士大夫都是', '自动挡', 'http://localhost:8080/springbootil05r/upload/1619409527219.jpg', ' 地方给对方', '梵蒂冈地方', '电饭锅地方s', '地方给对方', '发送到', '士大夫收到', '士大夫都是f', '2021-04-13', '<p>电饭锅都是电饭锅地方给对方</p><p><img src="http://localhost:8080/springbootil05r/upload/1619409540178.jpg"></p><p><br></p><p><img src="http://localhost:8080/springbootil05r/upload/1619409542790.jpg"></p><p><br></p>', '2021-04-26 12:05:00', 12, 33);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootil05r/upload/1619409585082.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootil05r/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootil05r/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discusscheliangzhanshi`;
CREATE TABLE IF NOT EXISTS `discusscheliangzhanshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409990972 DEFAULT CHARSET=utf8mb3 COMMENT='车辆展示评论表';

DELETE FROM `discusscheliangzhanshi`;
INSERT INTO `discusscheliangzhanshi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(151, '2021-04-26 03:55:15', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(152, '2021-04-26 03:55:15', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(153, '2021-04-26 03:55:15', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(154, '2021-04-26 03:55:15', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(155, '2021-04-26 03:55:15', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(156, '2021-04-26 03:55:15', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1619409841350, '2021-04-26 04:04:00', 26, 1619409471994, '11', '士大夫士大夫收到士大夫', ' 房东鬼地方个电工的给对方'),
	(1619409990971, '2021-04-26 04:06:30', 22, 1619409471994, '11', '发过火发给很反感很反感', NULL);

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409677640 DEFAULT CHARSET=utf8mb3 COMMENT='用户交流';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(81, '2021-04-26 03:55:15', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放'),
	(82, '2021-04-26 03:55:15', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(83, '2021-04-26 03:55:15', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
	(84, '2021-04-26 03:55:15', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(85, '2021-04-26 03:55:15', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(86, '2021-04-26 03:55:15', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放'),
	(1619409670967, '2021-04-26 04:01:10', '士大夫士大夫收到发送到', '<p>请输入内容收到发送到分隔符电饭锅地方士大夫发送到</p>', 0, 1619409471994, '11', '开放'),
	(1619409677639, '2021-04-26 04:01:17', NULL, '士大夫收到', 82, 1619409471994, '11', NULL);

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707911597641 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(141, '2021-04-26 03:55:15', 1, '用户名1', '留言内容1', '回复内容1'),
	(142, '2021-04-26 03:55:15', 2, '用户名2', '留言内容2', '回复内容2'),
	(143, '2021-04-26 03:55:15', 3, '用户名3', '留言内容3', '回复内容3'),
	(144, '2021-04-26 03:55:15', 4, '用户名4', '留言内容4', '回复内容4'),
	(145, '2021-04-26 03:55:15', 5, '用户名5', '留言内容5', '回复内容5'),
	(146, '2021-04-26 03:55:15', 6, '用户名6', '留言内容6', '回复内容6'),
	(1619409699239, '2021-04-26 04:01:38', 1619409471994, '11', '第三方都是发送到', '广发电饭锅地方444444444444'),
	(1707911597640, '2024-02-14 11:53:17', 11, '用户1', '666', NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409600098 DEFAULT CHARSET=utf8mb3 COMMENT='汽车资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(131, '2021-04-26 03:55:15', '标题1', '简介1', 'http://localhost:8080/springbootil05r/upload/news_picture1.jpg', '内容1'),
	(132, '2021-04-26 03:55:15', '标题2', '简介2', 'http://localhost:8080/springbootil05r/upload/news_picture2.jpg', '内容2'),
	(133, '2021-04-26 03:55:15', '标题3', '简介3', 'http://localhost:8080/springbootil05r/upload/news_picture3.jpg', '内容3'),
	(134, '2021-04-26 03:55:15', '标题4', '简介4', 'http://localhost:8080/springbootil05r/upload/news_picture4.jpg', '内容4'),
	(135, '2021-04-26 03:55:15', '标题5', '简介5', 'http://localhost:8080/springbootil05r/upload/news_picture5.jpg', '内容5'),
	(136, '2021-04-26 03:55:15', '标题6', '简介6', 'http://localhost:8080/springbootil05r/upload/news_picture6.jpg', '内容6'),
	(1619409600097, '2021-04-26 03:59:59', '士大夫收到', '电风扇发送到f', 'http://localhost:8080/springbootil05r/upload/1619409592751.png', '<p>收到发多少给对方给对方广东省房广东省房</p><p><img src="http://localhost:8080/springbootil05r/upload/1619409598211.png"></p>');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'cheliangzhanshi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409743673 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `addtime`, `orderid`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`, `total`, `discounttotal`, `type`, `status`, `address`, `tel`, `consignee`) VALUES
	(1619409743672, '2021-04-26 04:02:23', '20214261204489562048', 'cheliangzhanshi', 1619409471994, 1619409544166, '1619409418205', 'http://localhost:8080/springbootil05r/upload/1619409527219.jpg', 2, 33, 33, 66, 66, 1, '已完成', '广东省梅州市梅江区江南街道法政路瑞景花苑(法政路)', '11111111111', '11');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707910805181 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1619409690215, '2021-04-26 04:01:29', 1619409471994, 23, 'cheliangzhanshi', '车辆编号3', 'http://localhost:8080/springbootil05r/upload/cheliangzhanshi_cheliangzhaopian3.jpg'),
	(1707910805180, '2024-02-14 11:40:04', 11, 22, 'cheliangzhanshi', '车辆编号2', 'http://localhost:8080/springbootil05r/upload/cheliangzhanshi_cheliangzhaopian2.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1619409471994, '11', 'yonghu', '用户', 'zrik0owvnt38cg1dbt2ntzw1ug0it9za', '2021-04-26 03:57:54', '2021-04-26 05:32:17'),
	(2, 1, 'abo', 'users', '管理员', 'itjwev810l66fc97rm5x0kfbfzmlc9wy', '2021-04-26 03:58:09', '2024-02-14 12:51:10'),
	(3, 11, '用户1', 'yonghu', '用户', 'nbx6dwqz6iyl6u7icay4ilyipxt7zjst', '2024-02-14 11:38:52', '2024-02-14 12:52:41');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-26 03:55:15');

DROP TABLE IF EXISTS `weixiucailiao`;
CREATE TABLE IF NOT EXISTS `weixiucailiao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cailiaomingcheng` varchar(200) DEFAULT NULL COMMENT '材料名称',
  `cailiaofenlei` varchar(200) DEFAULT NULL COMMENT '材料分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `cailiaojieshao` longtext COMMENT '材料介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409573143 DEFAULT CHARSET=utf8mb3 COMMENT='维修材料';

DELETE FROM `weixiucailiao`;
INSERT INTO `weixiucailiao` (`id`, `addtime`, `cailiaomingcheng`, `cailiaofenlei`, `guige`, `shuliang`, `tupian`, `cailiaojieshao`) VALUES
	(51, '2021-04-26 03:55:15', '材料名称1', '材料分类1', '规格1', 1, 'http://localhost:8080/springbootil05r/upload/weixiucailiao_tupian1.jpg', '材料介绍1'),
	(52, '2021-04-26 03:55:15', '材料名称2', '材料分类2', '规格2', 2, 'http://localhost:8080/springbootil05r/upload/weixiucailiao_tupian2.jpg', '材料介绍2'),
	(53, '2021-04-26 03:55:15', '材料名称3', '材料分类3', '规格3', 3, 'http://localhost:8080/springbootil05r/upload/weixiucailiao_tupian3.jpg', '材料介绍3'),
	(54, '2021-04-26 03:55:15', '材料名称4', '材料分类4', '规格4', 4, 'http://localhost:8080/springbootil05r/upload/weixiucailiao_tupian4.jpg', '材料介绍4'),
	(55, '2021-04-26 03:55:15', '材料名称5', '材料分类5', '规格5', 5, 'http://localhost:8080/springbootil05r/upload/weixiucailiao_tupian5.jpg', '材料介绍5'),
	(56, '2021-04-26 03:55:15', '材料名称6', '材料分类6', '规格6', 6, 'http://localhost:8080/springbootil05r/upload/weixiucailiao_tupian6.jpg', '材料介绍6'),
	(1619409573142, '2021-04-26 03:59:32', '收到发送到', '士大夫收到', '士大夫收到', 333, 'http://localhost:8080/springbootil05r/upload/1619409566678.png', '<p> 都是鬼地方个地方电饭锅地方各个地方 都是鬼地方个地方电饭锅地方各个地方 都是鬼地方个地方电饭锅地方各个地方 都是鬼地方个地方电饭锅地方各个地方 都是鬼地方个地方电饭锅地方各个地方 都是鬼地方个地方电饭锅地方各个地方</p>');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619409471995 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `nianling`, `xingbie`, `shouji`, `zhaopian`, `money`) VALUES
	(11, '2021-04-26 03:55:15', '用户1', '123456', '姓名1', '年龄1', '男', '13823888881', 'http://localhost:8080/springbootil05r/upload/yonghu_zhaopian1.jpg', 100),
	(12, '2021-04-26 03:55:15', '用户2', '123456', '姓名2', '年龄2', '男', '13823888882', 'http://localhost:8080/springbootil05r/upload/yonghu_zhaopian2.jpg', 100),
	(13, '2021-04-26 03:55:15', '用户3', '123456', '姓名3', '年龄3', '男', '13823888883', 'http://localhost:8080/springbootil05r/upload/yonghu_zhaopian3.jpg', 100),
	(14, '2021-04-26 03:55:15', '用户4', '123456', '姓名4', '年龄4', '男', '13823888884', 'http://localhost:8080/springbootil05r/upload/yonghu_zhaopian4.jpg', 100),
	(15, '2021-04-26 03:55:15', '用户5', '123456', '姓名5', '年龄5', '男', '13823888885', 'http://localhost:8080/springbootil05r/upload/yonghu_zhaopian5.jpg', 100),
	(16, '2021-04-26 03:55:15', '用户6', '123456', '姓名6', '年龄6', '男', '13823888886', 'http://localhost:8080/springbootil05r/upload/yonghu_zhaopian6.jpg', 100),
	(1619409471994, '2021-04-26 03:57:52', '11', '11', '萨达', '11', '男', '11111112221', 'http://localhost:8080/springbootil05r/upload/1619409480860.jpg', 49934);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
