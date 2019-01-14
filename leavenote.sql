/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : leavenote

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2019-01-13 21:12:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `student` varchar(12) DEFAULT NULL,
  `starttime` date DEFAULT NULL COMMENT '开始时间',
  `startclasses` int(11) DEFAULT NULL COMMENT '开始节数',
  `endtime` date DEFAULT NULL COMMENT '结束时间',
  `endclasses` int(11) DEFAULT NULL COMMENT '结束节数',
  `classesnumber` int(11) DEFAULT NULL COMMENT '请假节数',
  `leavereason` text COMMENT '请假原因',
  `ndate` datetime DEFAULT NULL COMMENT '请假日期',
  `pass` enum('同意','不同意','待审批') DEFAULT NULL COMMENT '审批状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes
-- ----------------------------
INSERT INTO `notes` VALUES ('26', '16', '2018-04-22', '1', '2018-04-23', '2', '1', 'as', '2018-04-22 15:14:46', '同意');
INSERT INTO `notes` VALUES ('27', '16', '2018-04-22', '1', '2018-04-23', '2', '1', 'as', '2018-04-22 15:14:46', '不同意');
INSERT INTO `notes` VALUES ('28', '16', '2018-04-26', '1', '2018-04-30', '1', '4', 'sadf', '2018-04-25 20:45:54', '待审批');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(40) DEFAULT NULL COMMENT '学生姓名',
  `password` varchar(16) NOT NULL COMMENT '密码',
  `studentnumber` varchar(12) NOT NULL COMMENT '学号',
  `department` varchar(30) DEFAULT NULL COMMENT '系别',
  `class` varchar(30) DEFAULT NULL COMMENT '班级',
  `dormnumber` varchar(8) DEFAULT NULL COMMENT '宿舍号',
  `myphone` varchar(40) NOT NULL COMMENT '用户电话',
  `parentphone` varchar(40) DEFAULT NULL COMMENT '家长电话',
  `sex` enum('男','女') DEFAULT NULL COMMENT '性别',
  `power` int(1) DEFAULT '1' COMMENT '权限',
  `date` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '王二', '123456', '201524070101', '软件工程', '2015级软件工程', '14-605-4', '1365008001', '1528988001', '男', '1', '2018-04-09 21:30:03');
INSERT INTO `student` VALUES ('3', '王超', '123456', '201524070103', '软件工程', '2015级软件工程', '14-613-4', '1365008003', '1528988003', '女', '1', '2018-04-09 21:30:03');
INSERT INTO `student` VALUES ('4', '陈二', '123456', '201624070101', '软件工程', '2016级软件工程', '11-605-4', '1365008004', '1528988004', '男', '1', '2018-04-09 21:30:03');
INSERT INTO `student` VALUES ('5', '陈一旺', '123456', '201624070102', '软件工程', '2016级软件工程', '11-607-4', '1365008005', '1528988005', '女', '1', '2018-04-09 21:30:03');
INSERT INTO `student` VALUES ('6', '陈超凡', '123456', '201624070103', '软件工程', '2016级软件工程', '11-613-4', '1365008006', '1528988006', '女', '1', '2018-04-09 21:30:03');
INSERT INTO `student` VALUES ('7', '刘二', '123456', '201724070101', '电子商务', '2017级电子商务', '14-505-4', '1365008007', '1528988007', '男', '1', '2018-04-09 21:30:03');
INSERT INTO `student` VALUES ('10', '李二', '123456', '201724070201', '物联网与技术', '2017级物联网与技术', '11-505-4', '1365008010', '1528988010', '男', '1', '2018-04-09 21:30:03');
INSERT INTO `student` VALUES ('11', '李一旺', '123456', '201724070202', '物联网与技术', '2017级物联网与技术', '11-507-4', '1365008011', '1528988011', '女', '1', '2018-04-09 21:30:03');
INSERT INTO `student` VALUES ('17', null, 'asd123', '201524070139', null, null, null, '15289831731', null, null, '1', '2019-01-13 15:00:09');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(40) NOT NULL COMMENT '姓名',
  `password` varchar(16) NOT NULL COMMENT '密码',
  `phone` varchar(40) NOT NULL COMMENT '电话',
  `power` int(1) DEFAULT '2' COMMENT '权限',
  `department` varchar(30) NOT NULL COMMENT '系别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('2', '陈老师', '123456', '1765008004', '2', '电子商务');
INSERT INTO `teacher` VALUES ('3', '李老师', '123456', '1765008005', '2', '物联网与技术');
