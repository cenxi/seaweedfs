/*
 Navicat Premium Data Transfer

 Source Server         : 10.101.238.71
 Source Server Type    : MySQL
 Source Server Version : 50651
 Source Host           : 10.101.238.71:3306
 Source Schema         : sw_database

 Target Server Type    : MySQL
 Target Server Version : 50651
 File Encoding         : 65001

 Date: 23/07/2021 16:26:45
*/
CREATE DATABASE IF NOT EXISTS seaweedfs;
USE seaweedfs;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for filemeta
-- ----------------------------
DROP TABLE IF EXISTS `filemeta`;
CREATE TABLE `filemeta`  (
  `dirhash` bigint(20) NULL DEFAULT NULL COMMENT 'first 64 bits of MD5 hash value of directory field',
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'directory or file name',
  `directory` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'full path to parent directory',
  `meta` longblob NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
