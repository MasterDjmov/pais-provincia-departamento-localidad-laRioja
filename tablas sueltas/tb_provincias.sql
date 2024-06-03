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

 Date: 02/06/2024 23:33:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_provincias
-- ----------------------------
DROP TABLE IF EXISTS `tb_provincias`;
CREATE TABLE `tb_provincias`  (
  `idProvincia` int NOT NULL AUTO_INCREMENT,
  `nombre_prov` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Pais` int NULL DEFAULT NULL,
  PRIMARY KEY (`idProvincia`) USING BTREE,
  INDEX `fk_tb_provincias_tb_paises1_idx`(`Pais`) USING BTREE,
  CONSTRAINT `fk_tb_provincias_tb_paises1` FOREIGN KEY (`Pais`) REFERENCES `tb_paises` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_provincias
-- ----------------------------
INSERT INTO `tb_provincias` VALUES (1, 'Buenos Aires', 9);
INSERT INTO `tb_provincias` VALUES (2, 'CCatamarca', 9);
INSERT INTO `tb_provincias` VALUES (3, 'Chaco', 9);
INSERT INTO `tb_provincias` VALUES (4, 'Chubut', 9);
INSERT INTO `tb_provincias` VALUES (5, 'Córdoba', 9);
INSERT INTO `tb_provincias` VALUES (6, 'Corrientes', 9);
INSERT INTO `tb_provincias` VALUES (7, 'Entre Ríos', 9);
INSERT INTO `tb_provincias` VALUES (8, 'Formosa', 9);
INSERT INTO `tb_provincias` VALUES (9, 'Jujuy', 9);
INSERT INTO `tb_provincias` VALUES (10, 'La Pampa', 9);
INSERT INTO `tb_provincias` VALUES (11, 'La Rioja', 9);
INSERT INTO `tb_provincias` VALUES (12, 'Mendoza', 9);
INSERT INTO `tb_provincias` VALUES (13, 'Misiones', 9);
INSERT INTO `tb_provincias` VALUES (14, 'Neuquén', 9);
INSERT INTO `tb_provincias` VALUES (15, 'Río Negro', 9);
INSERT INTO `tb_provincias` VALUES (16, 'Salta', 9);
INSERT INTO `tb_provincias` VALUES (17, 'San Juan', 9);
INSERT INTO `tb_provincias` VALUES (18, 'San Luis', 9);
INSERT INTO `tb_provincias` VALUES (19, 'Santa Cruz', 9);
INSERT INTO `tb_provincias` VALUES (20, 'Santa Fe', 9);
INSERT INTO `tb_provincias` VALUES (21, 'Santiago del Estero', 9);
INSERT INTO `tb_provincias` VALUES (22, 'Tierra del Fuego', 9);
INSERT INTO `tb_provincias` VALUES (23, 'Tucumán', 9);

SET FOREIGN_KEY_CHECKS = 1;
