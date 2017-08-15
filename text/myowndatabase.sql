/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : myowndatabase

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-08-13 09:51:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for h_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `h_admin_user`;
CREATE TABLE `h_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(11) CHARACTER SET utf8 DEFAULT '0' COMMENT '雇员id',
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 DEFAULT ' ' COMMENT '密码',
  `create_username` varchar(11) CHARACTER SET utf8 DEFAULT '0' COMMENT '创建账户',
  `create_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `head_pic` varchar(100) CHARACTER SET utf8 DEFAULT ' ' COMMENT '头像',
  `content` text CHARACTER SET utf8 COMMENT '描述',
  `status` tinyint(2) DEFAULT '1' COMMENT '账户状态：0，锁定；1，正常；2，禁用',
  `rank` int(5) DEFAULT '0' COMMENT '排序',
  `role_id` int(11) DEFAULT '0' COMMENT '角色表集合',
  `authority_id` varchar(255) CHARACTER SET utf8 DEFAULT '0' COMMENT '其他权限集合',
  `is_del` tinyint(2) DEFAULT '0' COMMENT '是否删除：0：否；1：是；',
  `salt` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '辅助密码',
  `locked` int(1) DEFAULT NULL COMMENT '是否锁定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of h_admin_user
-- ----------------------------
INSERT INTO `h_admin_user` VALUES ('7', 'admin', 'admin', '8542832558c98490735e3f07765ed5b0', 'admin', '2017-08-10 07:26:13', null, '超级管理员', '1', '0', '0', '0', '0', 'e330dc400a31c76f795b5badc2f913d9', '0');

-- ----------------------------
-- Table structure for t_permissions
-- ----------------------------
DROP TABLE IF EXISTS `t_permissions`;
CREATE TABLE `t_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for t_roles
-- ----------------------------
DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE `t_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_roles
-- ----------------------------

-- ----------------------------
-- Table structure for t_roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `t_roles_permissions`;
CREATE TABLE `t_roles_permissions` (
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  `permission_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_roles_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `salt` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码加盐',
  `locked` tinyint(1) DEFAULT '0' COMMENT '用户是否锁住，默认为0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', 'admin', '8542832558c98490735e3f07765ed5b0', 'e330dc400a31c76f795b5badc2f913d9', '0');

-- ----------------------------
-- Table structure for t_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `t_users_roles`;
CREATE TABLE `t_users_roles` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_users_roles
-- ----------------------------
