/*
 Navicat Premium Data Transfer

 Source Server         : mipc
 Source Server Type    : MySQL
 Source Server Version : 110302
 Source Host           : localhost:3306
 Source Schema         : db_ubicacion

 Target Server Type    : MySQL
 Target Server Version : 110302
 File Encoding         : 65001

 Date: 02/06/2024 23:33:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_departamentos
-- ----------------------------
DROP TABLE IF EXISTS `tb_departamentos`;
CREATE TABLE `tb_departamentos`  (
  `idDepartamento` int NOT NULL AUTO_INCREMENT,
  `nombre_dpto` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Provincia` int NULL DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`) USING BTREE,
  INDEX `fk_tb_departamentos_tb_provincias1_idx`(`Provincia`) USING BTREE,
  CONSTRAINT `tb_departamentos_ibfk_1` FOREIGN KEY (`Provincia`) REFERENCES `tb_provincias` (`idProvincia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_departamentos
-- ----------------------------
INSERT INTO `tb_departamentos` VALUES (1, 'CAPITAL', 11);
INSERT INTO `tb_departamentos` VALUES (2, 'ARAUCO', 11);
INSERT INTO `tb_departamentos` VALUES (3, 'SANAGASTA', 11);
INSERT INTO `tb_departamentos` VALUES (4, 'CHAMICAL', 11);
INSERT INTO `tb_departamentos` VALUES (5, 'FAMATINA', 11);
INSERT INTO `tb_departamentos` VALUES (6, 'CHILECITO', 11);
INSERT INTO `tb_departamentos` VALUES (7, 'CASTRO BARROS', 11);
INSERT INTO `tb_departamentos` VALUES (8, 'SAN MARTIN', 11);
INSERT INTO `tb_departamentos` VALUES (9, 'GRAL. OCAMPO', 11);
INSERT INTO `tb_departamentos` VALUES (10, 'INDEPENDENCIA', 11);
INSERT INTO `tb_departamentos` VALUES (11, 'GRAL. BELGRANO', 11);
INSERT INTO `tb_departamentos` VALUES (12, 'FELIPE VARELA', 11);
INSERT INTO `tb_departamentos` VALUES (13, 'GRAL. LAMADRID', 11);
INSERT INTO `tb_departamentos` VALUES (14, 'S. B. DE LOS SAUCES', 11);
INSERT INTO `tb_departamentos` VALUES (15, 'GRAL J.F.QUIROGA', 11);
INSERT INTO `tb_departamentos` VALUES (16, 'VINCHINA', 11);
INSERT INTO `tb_departamentos` VALUES (17, 'GRAL ANGEL V. PEÑALOZA', 11);
INSERT INTO `tb_departamentos` VALUES (18, 'ROSARIO V. PEÑALOZA', 11);

SET FOREIGN_KEY_CHECKS = 1;
