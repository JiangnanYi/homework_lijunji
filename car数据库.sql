SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_area_code`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` DECIMAL NOT NULL,
  `Model` varchar(50) NOT NULL,
  `Describe` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `car` VALUES ('1','桑塔纳',  '170000', '大众',  '极具旅行风格的外观；全新的设计风格；');
INSERT INTO `car` VALUES ('2', '朗境', '145000', '大众', '好上手，一贯地好开');
INSERT INTO `car` VALUES ('3', '奔驰E级', '434000', '奔驰', '外观大气时尚，内饰上同级别无对手这是公认的');
INSERT INTO `car` VALUES ('4', '奔驰GLA', '294000', '奔驰', '还是对奔驰自身的品牌最满意，简单的说就是品牌满意度');
INSERT INTO `car` VALUES ('5', '宝马3系', '320400', '宝马', '在同价位级别的车里面，操控感真的算是没的说的');
INSERT INTO `car` VALUES ('6', '宝马5系', '471000', '宝马', '动力够猛，外观够帅3.B格够高4.配置够用');
INSERT INTO `car` VALUES ('7', 'F12berlinetta', '5308000', '法拉利', '最满意肯定是声浪了，f12坐着空间非常够');
INSERT INTO `car` VALUES ('8', 'GTC4Lusso', '3225000', '法拉利', '空间其实不算很大，但是给人感觉很满足');
INSERT INTO `car` VALUES ('9', '总裁', '1439000', '玛莎拉蒂', '最满意的就是玛莎拉蒂的汽车外观，设计风格');
INSERT INTO `car` VALUES ('10', 'Levante', '868800', '玛莎拉蒂', '外观实在太帅，回头率高');
SELECT * FROM car
update car set `Name`='eqe',`Price`=12314124,`Model`='qweqwew',`Describe`='qweqw' where `Id`=2

