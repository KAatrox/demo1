/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : digitalmall

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2018-08-07 14:59:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `AdminId` int(11) NOT NULL AUTO_INCREMENT,
  `AdminNam` varchar(20) DEFAULT NULL,
  `AdminPwd` varchar(20) DEFAULT NULL,
  `AdminEmail` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`AdminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'xiao', '123', '5630@qq.com');

-- ----------------------------
-- Table structure for `commodity`
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `comId` int(11) NOT NULL AUTO_INCREMENT,
  `comName` varchar(20) DEFAULT NULL,
  `comClassid` int(11) DEFAULT NULL,
  `comPrice` varchar(11) DEFAULT NULL,
  `comNew` int(11) DEFAULT NULL,
  `addTime` date DEFAULT NULL,
  `comNum` int(11) DEFAULT NULL,
  `comSalenum` int(11) DEFAULT NULL,
  `comDes` varchar(150) DEFAULT NULL,
  `comOff` varchar(20) DEFAULT NULL,
  `comColor` varchar(20) DEFAULT NULL,
  `comphoto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`comId`),
  KEY `comClassid` (`comClassid`),
  KEY `comPrice` (`comPrice`),
  CONSTRAINT `comClassid` FOREIGN KEY (`comClassid`) REFERENCES `commoditytype` (`comclaId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '相机', '1', '450', '1', '2018-07-31', '800', '300', '啦啦啦啦啦啦', '5%', '黄色', 'ph1,ph2,ph3');
INSERT INTO `commodity` VALUES ('2', '手机', '2', '1000', '1', '2018-07-31', '100', '105', '手机', '10%', 'red', 'ph4,ph5,ph6');
INSERT INTO `commodity` VALUES ('3', '相机', '1', '550', '1', '2018-08-01', '100', '100', '相机', null, '白色', 'pht1,pht2,pht3');
INSERT INTO `commodity` VALUES ('4', '电脑', '3', '4000', '1', '2018-08-01', '100', '100', '电脑', null, '白色', 'com_1,com_2,com_3');
INSERT INTO `commodity` VALUES ('5', '电脑', '1', '5000', '1', '2018-08-01', '100', '200', '贵的电脑', null, '黑色', 'com_4,com_5,com_6');
INSERT INTO `commodity` VALUES ('6', '耳机', '1', '400', '1', '2018-08-01', '200', '100', '耳机', null, '红色', 'hs1,hs2,hs3');
INSERT INTO `commodity` VALUES ('7', '键盘', '1', '2001', '1', '2018-08-03', '300', '1000', '键盘                        ', null, '黑色', 'kb1,kb2,kb3');
INSERT INTO `commodity` VALUES ('8', '11', '1', '11', '111', null, '11', '11', '11', null, '11', '20180806142726xixi');
INSERT INTO `commodity` VALUES ('9', 'ada', '1', '212', '1', '2018-08-01', '11', '12', '11', null, '1', '20180806144538xixi');

-- ----------------------------
-- Table structure for `commoditystype`
-- ----------------------------
DROP TABLE IF EXISTS `commoditystype`;
CREATE TABLE `commoditystype` (
  `comclasId` int(11) NOT NULL AUTO_INCREMENT,
  `claId` int(11) DEFAULT NULL,
  `claname` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`comclasId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of commoditystype
-- ----------------------------

-- ----------------------------
-- Table structure for `commoditytype`
-- ----------------------------
DROP TABLE IF EXISTS `commoditytype`;
CREATE TABLE `commoditytype` (
  `comclaId` int(11) NOT NULL AUTO_INCREMENT,
  `comclaNa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`comclaId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of commoditytype
-- ----------------------------
INSERT INTO `commoditytype` VALUES ('1', '数码类');
INSERT INTO `commoditytype` VALUES ('2', '手机类');
INSERT INTO `commoditytype` VALUES ('3', 'youx');

-- ----------------------------
-- Table structure for `helpinf`
-- ----------------------------
DROP TABLE IF EXISTS `helpinf`;
CREATE TABLE `helpinf` (
  `HelpInfId` int(11) NOT NULL AUTO_INCREMENT,
  `HelpInfque` varchar(50) DEFAULT NULL,
  `HelpInfsol` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`HelpInfId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of helpinf
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `MesId` int(11) NOT NULL AUTO_INCREMENT,
  `MesName` varchar(20) DEFAULT NULL,
  `MesEmail` varchar(20) DEFAULT NULL,
  `Mestext` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`MesId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', 'jaaa', 'aasdasda', 'asdasdasd');
INSERT INTO `message` VALUES ('2', 'bbbb', 'aaaaa', 'aaaaaaaaaaa');
INSERT INTO `message` VALUES ('3', '11111111', '111', '111');

-- ----------------------------
-- Table structure for `shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `comId` int(11) DEFAULT NULL,
  `comNum` int(11) DEFAULT NULL,
  `compri` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  KEY `UserId` (`UserId`),
  KEY `comId` (`comId`),
  KEY `compri` (`compri`),
  CONSTRAINT `comId` FOREIGN KEY (`comId`) REFERENCES `commodity` (`comId`),
  CONSTRAINT `UserId` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('17', '2', '1', '7', '450');
INSERT INTO `shoppingcart` VALUES ('23', '2', '3', '1', '550');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL,
  `UserPwd` varchar(20) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Money` double DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  KEY `UserName` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '小明', '222', 'q56305@qq.com', '100');
INSERT INTO `user` VALUES ('2', 'joker', '234', '56305@qq.com', '200');
INSERT INTO `user` VALUES ('3', 'mak', '888', 'qwqe', null);
INSERT INTO `user` VALUES ('4', 'asda', 'asdas', 'asd', null);
INSERT INTO `user` VALUES ('5', 'jkj', 'jkj', 'jkj', null);
INSERT INTO `user` VALUES ('6', 'qwe', 'Aj1234567', 'iuwiquwiq@163.com', null);
INSERT INTO `user` VALUES ('7', 'wangxiaohui', '123', 'qwhu@163.com', null);

-- ----------------------------
-- Table structure for `userorder`
-- ----------------------------
DROP TABLE IF EXISTS `userorder`;
CREATE TABLE `userorder` (
  `OrderId` int(11) NOT NULL AUTO_INCREMENT,
  `OrderUser` int(11) DEFAULT NULL,
  `OrderComId` int(11) DEFAULT NULL,
  `OrderTime` date DEFAULT NULL,
  `OrderRemark` varchar(50) DEFAULT NULL,
  `OrderComNm` int(11) DEFAULT NULL,
  `OrderPri` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `OrderUser` (`OrderUser`),
  KEY `OrderComId` (`OrderComId`),
  CONSTRAINT `OrderComId` FOREIGN KEY (`OrderComId`) REFERENCES `commodity` (`comId`),
  CONSTRAINT `OrderUser` FOREIGN KEY (`OrderUser`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of userorder
-- ----------------------------
INSERT INTO `userorder` VALUES ('1', '2', '1', '2018-08-01', 'hahahh', '2', '900');
INSERT INTO `userorder` VALUES ('2', '2', '1', '2018-07-04', '请寄韵达快递', '1', '450');
