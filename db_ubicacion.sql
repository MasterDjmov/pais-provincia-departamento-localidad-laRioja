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

 Date: 02/06/2024 23:32:43
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

-- ----------------------------
-- Table structure for tb_localidades
-- ----------------------------
DROP TABLE IF EXISTS `tb_localidades`;
CREATE TABLE `tb_localidades`  (
  `idLocalidad` int NOT NULL AUTO_INCREMENT,
  `localidad` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Departamento` int NULL DEFAULT NULL,
  `CodigoPostal` int NULL DEFAULT NULL,
  PRIMARY KEY (`idLocalidad`) USING BTREE,
  INDEX `fk_tb_localidades_tb_departamentos1_idx`(`Departamento`) USING BTREE,
  CONSTRAINT `tb_localidades_ibfk_1` FOREIGN KEY (`Departamento`) REFERENCES `tb_departamentos` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 390 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_localidades
-- ----------------------------
INSERT INTO `tb_localidades` VALUES (1, 'ARAUCO', 2, 5315);
INSERT INTO `tb_localidades` VALUES (2, 'AIMOGASTA', 2, 5310);
INSERT INTO `tb_localidades` VALUES (3, 'UDPINANGO', 2, 5387);
INSERT INTO `tb_localidades` VALUES (4, 'LA CAUCHITA', 2, 5361);
INSERT INTO `tb_localidades` VALUES (5, 'TINOCAN', 2, 5363);
INSERT INTO `tb_localidades` VALUES (6, 'LA CIMBRITA', 2, 5365);
INSERT INTO `tb_localidades` VALUES (7, 'TERMAS DE SANTA TERESITA', 2, 5311);
INSERT INTO `tb_localidades` VALUES (8, 'SAN ANTONIO', 2, 5370);
INSERT INTO `tb_localidades` VALUES (9, 'ESTACION MAZAN', 2, 5317);
INSERT INTO `tb_localidades` VALUES (10, 'VILLA MAZAN', 2, 5317);
INSERT INTO `tb_localidades` VALUES (11, 'BAÑADO DE LOS PANTANOS', 2, 5381);
INSERT INTO `tb_localidades` VALUES (12, 'MACHIGASTA', 2, 5370);
INSERT INTO `tb_localidades` VALUES (13, 'LA CANCHITA', 2, 5370);
INSERT INTO `tb_localidades` VALUES (14, 'BAZAN', 1, 5381);
INSERT INTO `tb_localidades` VALUES (15, 'SALADILLO', 1, 5365);
INSERT INTO `tb_localidades` VALUES (16, 'LAS CATAS', 1, 5363);
INSERT INTO `tb_localidades` VALUES (17, 'ANCHICO', 1, 5361);
INSERT INTO `tb_localidades` VALUES (18, 'SAN JOSE', 1, 5313);
INSERT INTO `tb_localidades` VALUES (19, 'EL CANTADERO', 1, 5361);
INSERT INTO `tb_localidades` VALUES (20, 'LA LANCHA', 1, 5370);
INSERT INTO `tb_localidades` VALUES (21, 'SAN LORENZO', 1, 5317);
INSERT INTO `tb_localidades` VALUES (22, 'SIERRA BRAVA', 1, 5385);
INSERT INTO `tb_localidades` VALUES (23, 'TRAMPA DEL TIGRE', 1, 5365);
INSERT INTO `tb_localidades` VALUES (24, 'EL ROSARIO', 1, 5365);
INSERT INTO `tb_localidades` VALUES (25, 'ESTANCIA SAN JOSE', 1, 5370);
INSERT INTO `tb_localidades` VALUES (26, 'AMPATA', 1, 5311);
INSERT INTO `tb_localidades` VALUES (27, 'LA CAÑADA', 1, 5361);
INSERT INTO `tb_localidades` VALUES (28, 'POZO DE LA YEGUA', 1, 5363);
INSERT INTO `tb_localidades` VALUES (29, 'EL TALA', 1, 5311);
INSERT INTO `tb_localidades` VALUES (30, 'BAJO HONDO', 1, 5313);
INSERT INTO `tb_localidades` VALUES (31, 'PUERTO ALEGRE', 1, 5374);
INSERT INTO `tb_localidades` VALUES (32, 'EL SUNCHAL', 1, 5385);
INSERT INTO `tb_localidades` VALUES (33, 'EL QUEBRACHO', 1, 5365);
INSERT INTO `tb_localidades` VALUES (34, 'SAN NICOLAS DEL RECREO', 1, 5381);
INSERT INTO `tb_localidades` VALUES (35, 'SAN PEDRO', 1, 5315);
INSERT INTO `tb_localidades` VALUES (36, 'SAN NICOLAS', 1, 5387);
INSERT INTO `tb_localidades` VALUES (37, 'SANTO DOMINGO', 1, 5374);
INSERT INTO `tb_localidades` VALUES (38, 'LA RIOJA', 1, 5300);
INSERT INTO `tb_localidades` VALUES (39, 'LA RAMADITA', 1, 5374);
INSERT INTO `tb_localidades` VALUES (40, 'SAN BERNARDO', 1, 5361);
INSERT INTO `tb_localidades` VALUES (41, 'LA ANTIGUA', 1, 5311);
INSERT INTO `tb_localidades` VALUES (42, 'COLONIA FRUTIHORTICOLA', 1, 5374);
INSERT INTO `tb_localidades` VALUES (43, 'LA LATA', 1, 5361);
INSERT INTO `tb_localidades` VALUES (44, 'TALAMUYUNA', 1, 5381);
INSERT INTO `tb_localidades` VALUES (45, 'SAN RAFAEL', 1, 5315);
INSERT INTO `tb_localidades` VALUES (46, 'SAN JUAN', 1, 5363);
INSERT INTO `tb_localidades` VALUES (47, 'CARRIZAL', 1, 5313);
INSERT INTO `tb_localidades` VALUES (48, 'SAN ANTONIO', 1, 5361);
INSERT INTO `tb_localidades` VALUES (49, 'SAN MIGUEL', 1, 5387);
INSERT INTO `tb_localidades` VALUES (50, 'CEBOLLAR', 1, 5313);
INSERT INTO `tb_localidades` VALUES (51, 'LAS HIGUERILLAS', 1, 5385);
INSERT INTO `tb_localidades` VALUES (52, 'EL DURAZNILLO', 1, 5374);
INSERT INTO `tb_localidades` VALUES (53, 'EL BARREAL', 1, 5365);
INSERT INTO `tb_localidades` VALUES (54, 'SANTA VERA CRUZ', 7, 5370);
INSERT INTO `tb_localidades` VALUES (55, 'PINCHAS', 7, 5381);
INSERT INTO `tb_localidades` VALUES (56, 'ISMIANGO', 7, 5381);
INSERT INTO `tb_localidades` VALUES (57, 'ANJULLON', 7, 5387);
INSERT INTO `tb_localidades` VALUES (58, 'AGUA BLANCA', 7, 5370);
INSERT INTO `tb_localidades` VALUES (59, 'LOS MOLINOS', 7, 5313);
INSERT INTO `tb_localidades` VALUES (60, 'SANTA CRUZ', 7, 5381);
INSERT INTO `tb_localidades` VALUES (61, 'AMINGA', 7, 5385);
INSERT INTO `tb_localidades` VALUES (62, 'CHUQUIS', 7, 5363);
INSERT INTO `tb_localidades` VALUES (63, 'SAN PEDRO', 7, 5361);
INSERT INTO `tb_localidades` VALUES (64, 'ANILLACO', 7, 5313);
INSERT INTO `tb_localidades` VALUES (65, 'LAS FLORES', 4, 5387);
INSERT INTO `tb_localidades` VALUES (66, 'POLCO', 4, 5370);
INSERT INTO `tb_localidades` VALUES (67, 'EL GARABATO', 4, 5311);
INSERT INTO `tb_localidades` VALUES (68, 'SANTA RITA DE LA ZANJA', 4, 5301);
INSERT INTO `tb_localidades` VALUES (69, 'VILLA CARMELA', 4, 5301);
INSERT INTO `tb_localidades` VALUES (70, 'SANTA LUCIA', 4, 5367);
INSERT INTO `tb_localidades` VALUES (71, 'BASE CHAMICAL', 4, 5367);
INSERT INTO `tb_localidades` VALUES (72, 'ESQUINA DEL NORTE', 4, 5360);
INSERT INTO `tb_localidades` VALUES (73, 'CHAMICAL', 4, 5367);
INSERT INTO `tb_localidades` VALUES (74, 'LA RESISTENCIA', 4, 5367);
INSERT INTO `tb_localidades` VALUES (75, 'EL RETAMO', 4, 5367);
INSERT INTO `tb_localidades` VALUES (76, 'POZO REDONDO', 4, 5367);
INSERT INTO `tb_localidades` VALUES (77, 'POZO DE LA VACA', 4, 5367);
INSERT INTO `tb_localidades` VALUES (78, 'LA AGUADITA', 4, 5367);
INSERT INTO `tb_localidades` VALUES (79, 'ROSILLO MUERTO', 4, 5367);
INSERT INTO `tb_localidades` VALUES (80, 'CHULO', 4, 5367);
INSERT INTO `tb_localidades` VALUES (81, 'EL QUEBRACHAL', 4, 5367);
INSERT INTO `tb_localidades` VALUES (82, 'EL CARMEN', 4, 5367);
INSERT INTO `tb_localidades` VALUES (83, 'BELLA VISTA', 4, 5367);
INSERT INTO `tb_localidades` VALUES (84, 'LAS TALAS', 4, 5367);
INSERT INTO `tb_localidades` VALUES (85, 'LOS BALDES', 4, 5367);
INSERT INTO `tb_localidades` VALUES (86, 'LOS BORDOS', 4, 5367);
INSERT INTO `tb_localidades` VALUES (87, 'EL MOLLAR', 4, 5367);
INSERT INTO `tb_localidades` VALUES (88, 'LAS AMOLADERAS', 4, 5367);
INSERT INTO `tb_localidades` VALUES (89, 'BAJO DE LUCAS', 4, 5367);
INSERT INTO `tb_localidades` VALUES (90, 'SANTA BARBARA', 4, 5367);
INSERT INTO `tb_localidades` VALUES (91, 'LA CORTADA', 4, 5367);
INSERT INTO `tb_localidades` VALUES (92, 'LA SERENA', 4, 5367);
INSERT INTO `tb_localidades` VALUES (93, 'SAN RAFAEL', 4, 5367);
INSERT INTO `tb_localidades` VALUES (94, 'MALLIGASTA', 6, 5367);
INSERT INTO `tb_localidades` VALUES (95, 'LAS HIGUERITAS', 6, 5367);
INSERT INTO `tb_localidades` VALUES (96, 'SAN MIGUEL', 6, 5367);
INSERT INTO `tb_localidades` VALUES (97, 'SANTA FLORENTINA', 6, 5367);
INSERT INTO `tb_localidades` VALUES (98, 'GUANCHIN', 6, 5367);
INSERT INTO `tb_localidades` VALUES (99, 'MIRANDA', 6, 5367);
INSERT INTO `tb_localidades` VALUES (100, 'SAÑOGASTA', 6, 5367);
INSERT INTO `tb_localidades` VALUES (101, 'COLONIA VICHIGASTA', 6, 5367);
INSERT INTO `tb_localidades` VALUES (102, 'COLONIA MALLIGASTA', 6, 5367);
INSERT INTO `tb_localidades` VALUES (103, 'ANGUINAN', 6, 5367);
INSERT INTO `tb_localidades` VALUES (104, 'VICHIGASTA', 6, 5367);
INSERT INTO `tb_localidades` VALUES (105, 'NONOGASTA', 6, 5360);
INSERT INTO `tb_localidades` VALUES (106, 'CHILECITO', 6, 5367);
INSERT INTO `tb_localidades` VALUES (107, 'COLONIA ANGUINAN', 6, 5367);
INSERT INTO `tb_localidades` VALUES (108, 'TILIMUQUI', 6, 5360);
INSERT INTO `tb_localidades` VALUES (109, 'LOS SARMIENTOS', 6, 5367);
INSERT INTO `tb_localidades` VALUES (110, 'SAN NICOLAS', 6, 5367);
INSERT INTO `tb_localidades` VALUES (111, 'COLONIA CATINZACO', 6, 5367);
INSERT INTO `tb_localidades` VALUES (112, 'LA PUNTILLA', 6, 5367);
INSERT INTO `tb_localidades` VALUES (113, 'VILLA UNION', 12, 5367);
INSERT INTO `tb_localidades` VALUES (114, 'ANCHUMBIL', 12, 5367);
INSERT INTO `tb_localidades` VALUES (115, 'LA MARAVILLA', 12, 5367);
INSERT INTO `tb_localidades` VALUES (116, 'EL CARDON', 12, 5367);
INSERT INTO `tb_localidades` VALUES (117, 'EL CHUSCHIN', 12, 5367);
INSERT INTO `tb_localidades` VALUES (118, 'PIEDRA PINTADA', 12, 5367);
INSERT INTO `tb_localidades` VALUES (119, 'LA BREA', 12, 5367);
INSERT INTO `tb_localidades` VALUES (120, 'LA CIENAGA', 12, 5367);
INSERT INTO `tb_localidades` VALUES (121, 'MINA DELINA', 12, 5367);
INSERT INTO `tb_localidades` VALUES (122, 'SAN JOSE', 12, 5367);
INSERT INTO `tb_localidades` VALUES (123, 'LOS TAMBILLOS', 12, 5367);
INSERT INTO `tb_localidades` VALUES (124, 'EL MOLLE', 12, 5367);
INSERT INTO `tb_localidades` VALUES (125, 'VILLA ESTHER', 12, 5367);
INSERT INTO `tb_localidades` VALUES (126, 'LAS CUEVAS', 12, 5367);
INSERT INTO `tb_localidades` VALUES (127, 'GUANDACOL', 12, 5367);
INSERT INTO `tb_localidades` VALUES (128, 'SANTA CLARA', 12, 5367);
INSERT INTO `tb_localidades` VALUES (129, 'LOS PATILLOS', 12, 5367);
INSERT INTO `tb_localidades` VALUES (130, 'PASO SAN ISIDRO', 12, 5367);
INSERT INTO `tb_localidades` VALUES (131, 'AICUÑA', 12, 5367);
INSERT INTO `tb_localidades` VALUES (132, 'EL FUERTE', 12, 5367);
INSERT INTO `tb_localidades` VALUES (133, 'EL ZAPALLAR', 12, 5367);
INSERT INTO `tb_localidades` VALUES (134, 'LOS NACIMIENTOS', 12, 5367);
INSERT INTO `tb_localidades` VALUES (135, 'LOS PALACIOS', 12, 5367);
INSERT INTO `tb_localidades` VALUES (136, 'PUERTO ALEGRE', 12, 5367);
INSERT INTO `tb_localidades` VALUES (137, 'PAGANCILLO', 12, 5367);
INSERT INTO `tb_localidades` VALUES (138, 'BANDA FLORIDA', 12, 5367);
INSERT INTO `tb_localidades` VALUES (139, 'ANGULOS', 5, 5367);
INSERT INTO `tb_localidades` VALUES (140, 'SANTA CRUZ', 5, 5367);
INSERT INTO `tb_localidades` VALUES (141, 'PLAZA VIEJA', 5, 5367);
INSERT INTO `tb_localidades` VALUES (142, 'CAMPANAS', 5, 5367);
INSERT INTO `tb_localidades` VALUES (143, 'SANTO DOMINGO', 5, 5367);
INSERT INTO `tb_localidades` VALUES (144, 'FAMATINA', 5, 5367);
INSERT INTO `tb_localidades` VALUES (145, 'BAJO CARRIZAL', 5, 5367);
INSERT INTO `tb_localidades` VALUES (146, 'ALTO CARRIZAL', 5, 5367);
INSERT INTO `tb_localidades` VALUES (147, 'EL POTRERILLO', 5, 5367);
INSERT INTO `tb_localidades` VALUES (148, 'PITUIL', 5, 5367);
INSERT INTO `tb_localidades` VALUES (149, 'LA CUADRA', 5, 5367);
INSERT INTO `tb_localidades` VALUES (150, 'ANTINACO', 5, 5367);
INSERT INTO `tb_localidades` VALUES (151, 'EL JUMEAL', 5, 5367);
INSERT INTO `tb_localidades` VALUES (152, 'BARRIO DE GALLI', 5, 5367);
INSERT INTO `tb_localidades` VALUES (153, 'CHAÑARMUYO', 5, 5367);
INSERT INTO `tb_localidades` VALUES (154, 'LAS LOMITAS', 17, 5367);
INSERT INTO `tb_localidades` VALUES (155, 'PUNTA DE LOS LLANOS', 17, 5367);
INSERT INTO `tb_localidades` VALUES (156, 'LAS AGUADITAS', 17, 5367);
INSERT INTO `tb_localidades` VALUES (157, 'LA REPRESITA', 17, 5367);
INSERT INTO `tb_localidades` VALUES (158, 'AGUADITA DE LOS VALDECES', 17, 5367);
INSERT INTO `tb_localidades` VALUES (159, 'ALCAZAR', 17, 5367);
INSERT INTO `tb_localidades` VALUES (160, 'TAMA', 17, 5367);
INSERT INTO `tb_localidades` VALUES (161, 'BAJO VERDE', 17, 5367);
INSERT INTO `tb_localidades` VALUES (162, 'TASQUIN', 17, 5367);
INSERT INTO `tb_localidades` VALUES (163, 'SAN NICOLAS', 17, 5367);
INSERT INTO `tb_localidades` VALUES (164, 'CHILA', 17, 5367);
INSERT INTO `tb_localidades` VALUES (165, 'COLOZOCAN', 17, 5367);
INSERT INTO `tb_localidades` VALUES (166, 'EL MONTE', 17, 5367);
INSERT INTO `tb_localidades` VALUES (167, 'TUIZON', 17, 5367);
INSERT INTO `tb_localidades` VALUES (168, 'SANTA TERESA', 17, 5367);
INSERT INTO `tb_localidades` VALUES (169, 'PACATALA', 17, 5367);
INSERT INTO `tb_localidades` VALUES (170, 'LA HUERTA', 11, 5367);
INSERT INTO `tb_localidades` VALUES (171, 'SANTA CRUZ', 11, 5367);
INSERT INTO `tb_localidades` VALUES (172, 'EL VIRQUE', 11, 5367);
INSERT INTO `tb_localidades` VALUES (173, 'CORTADERAS', 11, 5367);
INSERT INTO `tb_localidades` VALUES (174, 'EL SIMBOLAR', 11, 5367);
INSERT INTO `tb_localidades` VALUES (175, 'CASTRO BARROS', 11, 5367);
INSERT INTO `tb_localidades` VALUES (176, 'EL BORDO', 11, 5367);
INSERT INTO `tb_localidades` VALUES (177, 'BAJO HONDO', 11, 5367);
INSERT INTO `tb_localidades` VALUES (178, 'LA AGUADA', 11, 5367);
INSERT INTO `tb_localidades` VALUES (179, 'MONTE GRANDE', 11, 5367);
INSERT INTO `tb_localidades` VALUES (180, 'MONTE NEGRO', 11, 5367);
INSERT INTO `tb_localidades` VALUES (181, 'SAN ISIDRO', 11, 5367);
INSERT INTO `tb_localidades` VALUES (182, 'EL CONSUELO', 11, 5367);
INSERT INTO `tb_localidades` VALUES (183, 'TALA VERDE', 11, 5367);
INSERT INTO `tb_localidades` VALUES (184, 'NEPES', 11, 5367);
INSERT INTO `tb_localidades` VALUES (185, 'COLONIA EL CISCO', 11, 5367);
INSERT INTO `tb_localidades` VALUES (186, 'TALVA', 11, 5367);
INSERT INTO `tb_localidades` VALUES (187, 'LOMA BLANCA', 11, 5367);
INSERT INTO `tb_localidades` VALUES (188, 'AGUA COLORADA', 11, 5367);
INSERT INTO `tb_localidades` VALUES (189, 'OLTA', 11, 5367);
INSERT INTO `tb_localidades` VALUES (190, 'ESQUINA DEL SUD', 11, 5367);
INSERT INTO `tb_localidades` VALUES (191, 'S.DE LAS HIGUERAS', 11, 5367);
INSERT INTO `tb_localidades` VALUES (192, 'CHAÑAR', 11, 5367);
INSERT INTO `tb_localidades` VALUES (193, 'MIRAFLORES', 11, 5367);
INSERT INTO `tb_localidades` VALUES (194, 'LOMA ALTA', 11, 5367);
INSERT INTO `tb_localidades` VALUES (195, 'CORRAL DEL NEGRO', 11, 5367);
INSERT INTO `tb_localidades` VALUES (196, 'SIERRA DE LOS QUINTEROS', 11, 5367);
INSERT INTO `tb_localidades` VALUES (197, 'LA FLORIDA', 11, 5367);
INSERT INTO `tb_localidades` VALUES (198, 'SAN PEDRO', 11, 5367);
INSERT INTO `tb_localidades` VALUES (199, 'SANTA MARIA', 15, 5367);
INSERT INTO `tb_localidades` VALUES (200, 'EL PORONGO', 15, 5367);
INSERT INTO `tb_localidades` VALUES (201, 'NACATE', 15, 5367);
INSERT INTO `tb_localidades` VALUES (202, 'UNQUILLAL', 15, 5367);
INSERT INTO `tb_localidades` VALUES (203, 'LA CHIMENEA', 15, 5367);
INSERT INTO `tb_localidades` VALUES (204, 'EL RETAMAL', 15, 5367);
INSERT INTO `tb_localidades` VALUES (205, 'CASANGATE', 15, 5367);
INSERT INTO `tb_localidades` VALUES (206, 'LOMA LARGA', 15, 5367);
INSERT INTO `tb_localidades` VALUES (207, 'TOSQUEA', 15, 5367);
INSERT INTO `tb_localidades` VALUES (208, 'PORTEZUELO', 15, 5367);
INSERT INTO `tb_localidades` VALUES (209, 'SAN RAMON', 15, 5367);
INSERT INTO `tb_localidades` VALUES (210, 'SOLCA', 15, 5367);
INSERT INTO `tb_localidades` VALUES (211, 'SAN ANTONIO', 15, 5367);
INSERT INTO `tb_localidades` VALUES (212, 'EL CHORRO', 15, 5367);
INSERT INTO `tb_localidades` VALUES (213, 'QUEBRADA DEL VALLECITO', 15, 5367);
INSERT INTO `tb_localidades` VALUES (214, 'LOS BARREALES', 15, 5367);
INSERT INTO `tb_localidades` VALUES (215, 'SALANA', 15, 5367);
INSERT INTO `tb_localidades` VALUES (216, 'LOS ALGARROBOS', 15, 5367);
INSERT INTO `tb_localidades` VALUES (217, 'LAS BARRANCAS', 15, 5367);
INSERT INTO `tb_localidades` VALUES (218, 'PULUCHAN', 15, 5367);
INSERT INTO `tb_localidades` VALUES (219, 'MALANZAN', 15, 5367);
INSERT INTO `tb_localidades` VALUES (220, 'TUANI', 15, 5367);
INSERT INTO `tb_localidades` VALUES (221, 'SAN RAMON', 15, 5367);
INSERT INTO `tb_localidades` VALUES (222, 'TRES CRUCES', 15, 5367);
INSERT INTO `tb_localidades` VALUES (223, 'BALDE DE AMAYA', 15, 5367);
INSERT INTO `tb_localidades` VALUES (224, 'SAN PEDRO', 15, 5367);
INSERT INTO `tb_localidades` VALUES (225, 'ATILES', 15, 5367);
INSERT INTO `tb_localidades` VALUES (226, 'SAN ROQUE', 15, 5367);
INSERT INTO `tb_localidades` VALUES (227, 'EL POTRERO', 15, 5367);
INSERT INTO `tb_localidades` VALUES (228, 'VILLA CASTELLI', 13, 5367);
INSERT INTO `tb_localidades` VALUES (229, 'RIVADAVIA', 13, 5367);
INSERT INTO `tb_localidades` VALUES (230, 'EL CONDADO', 13, 5367);
INSERT INTO `tb_localidades` VALUES (231, 'PARECITAS', 13, 5367);
INSERT INTO `tb_localidades` VALUES (232, 'LOS AGUIRRES', 9, 5367);
INSERT INTO `tb_localidades` VALUES (233, 'POZO DEL MEDIO', 9, 5367);
INSERT INTO `tb_localidades` VALUES (234, 'LA COLONIA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (235, 'MOLLACO', 9, 5367);
INSERT INTO `tb_localidades` VALUES (236, 'MILAGRO', 9, 5367);
INSERT INTO `tb_localidades` VALUES (237, 'EL QUEMADO', 9, 5367);
INSERT INTO `tb_localidades` VALUES (238, 'MOLLACO', 9, 5367);
INSERT INTO `tb_localidades` VALUES (239, 'SAN RAMON', 9, 5367);
INSERT INTO `tb_localidades` VALUES (240, 'LAS CORTADERAS', 9, 5367);
INSERT INTO `tb_localidades` VALUES (241, 'SAN JOSE', 9, 5367);
INSERT INTO `tb_localidades` VALUES (242, 'SAN ROQUE', 9, 5367);
INSERT INTO `tb_localidades` VALUES (243, 'LA MARAVILLA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (244, 'AGUADITA DE LOS PERALTA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (245, 'LA REPRESA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (246, 'OLPAS', 9, 5367);
INSERT INTO `tb_localidades` VALUES (247, 'RIO GRANDE', 9, 5367);
INSERT INTO `tb_localidades` VALUES (248, 'SAN CRISTOBAL', 9, 5367);
INSERT INTO `tb_localidades` VALUES (249, 'LA BARRERA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (250, 'AGUA COLORADA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (251, 'EL CERCO', 9, 5367);
INSERT INTO `tb_localidades` VALUES (252, 'LA BANDERITA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (253, 'LA DORADA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (254, 'SANTA RITA DE CATUNA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (255, 'LA RIPIEDRA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (256, 'LA MARUJA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (257, 'EL FRAILE', 9, 5367);
INSERT INTO `tb_localidades` VALUES (258, 'LOS TELLOS', 9, 5367);
INSERT INTO `tb_localidades` VALUES (259, 'AMBIL', 9, 5367);
INSERT INTO `tb_localidades` VALUES (260, 'COLONIA ORTIZ DE OCAMPO', 9, 5367);
INSERT INTO `tb_localidades` VALUES (261, 'EL BARRANCO', 9, 5367);
INSERT INTO `tb_localidades` VALUES (262, 'LOS BARRIALITOS', 9, 5367);
INSERT INTO `tb_localidades` VALUES (263, 'TORRECITAS', 9, 5367);
INSERT INTO `tb_localidades` VALUES (264, 'LA ISLA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (265, 'LA PLAYA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (266, 'LOS MISTOLES', 9, 5367);
INSERT INTO `tb_localidades` VALUES (267, 'ESQUINA GRANDE', 9, 5367);
INSERT INTO `tb_localidades` VALUES (268, 'BALDE SALADO', 9, 5367);
INSERT INTO `tb_localidades` VALUES (269, 'LA AGUADITA', 9, 5367);
INSERT INTO `tb_localidades` VALUES (270, 'SAN PEDRO', 9, 5367);
INSERT INTO `tb_localidades` VALUES (271, 'LA SUSPENSION', 8, 5367);
INSERT INTO `tb_localidades` VALUES (272, 'TRES DE MAYO', 8, 5367);
INSERT INTO `tb_localidades` VALUES (273, 'LA PORFIA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (274, 'ISLA DEL TIGRE', 8, 5367);
INSERT INTO `tb_localidades` VALUES (275, 'SIEMPRE VERDE', 8, 5367);
INSERT INTO `tb_localidades` VALUES (276, 'EL BALDE DE LA VIUDA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (277, 'LA LOMITA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (278, 'LAS MALVINAS', 8, 5367);
INSERT INTO `tb_localidades` VALUES (279, 'VILLA NIDIA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (280, 'SAN LORENZO', 8, 5367);
INSERT INTO `tb_localidades` VALUES (281, 'EL ABRA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (282, 'EL CADILLO', 8, 5367);
INSERT INTO `tb_localidades` VALUES (283, 'KILOMETRO 14', 8, 5367);
INSERT INTO `tb_localidades` VALUES (284, 'VILLA LUISA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (285, 'LA INDUSTRIA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (286, 'LA ISLA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (287, 'BAJO HONDO', 8, 5367);
INSERT INTO `tb_localidades` VALUES (288, 'EL MOSQUITO', 8, 5367);
INSERT INTO `tb_localidades` VALUES (289, 'EL CALDEN', 8, 5367);
INSERT INTO `tb_localidades` VALUES (290, 'LA CHILCA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (291, 'PUESTO LOS CORNEJOS', 8, 5367);
INSERT INTO `tb_localidades` VALUES (292, 'LA REPRESA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (293, 'LA REPRESITA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (294, 'LAS VENTANITAS', 8, 5367);
INSERT INTO `tb_localidades` VALUES (295, 'ULAPES', 8, 5367);
INSERT INTO `tb_localidades` VALUES (296, 'AGUAYO', 8, 5367);
INSERT INTO `tb_localidades` VALUES (297, 'EL MEDANITO', 8, 5367);
INSERT INTO `tb_localidades` VALUES (298, 'SAN RAFAEL', 8, 5367);
INSERT INTO `tb_localidades` VALUES (299, 'ALGARROBO GRANDE', 8, 5367);
INSERT INTO `tb_localidades` VALUES (300, 'CORRAL DE ISAAC', 8, 5367);
INSERT INTO `tb_localidades` VALUES (301, 'CUATRO ESQUINAS', 8, 5367);
INSERT INTO `tb_localidades` VALUES (302, 'LA RESERVA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (303, 'PUESTO DICHOSO', 8, 5367);
INSERT INTO `tb_localidades` VALUES (304, 'ENTRE RIOS', 8, 5367);
INSERT INTO `tb_localidades` VALUES (305, 'SANTA ELENA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (306, 'LA LILIA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (307, 'EL BUEN RETIRO', 8, 5367);
INSERT INTO `tb_localidades` VALUES (308, 'SAN SOLANO', 8, 5367);
INSERT INTO `tb_localidades` VALUES (309, 'VIRGEN DEL VALLE', 8, 5367);
INSERT INTO `tb_localidades` VALUES (310, 'NUEVA ESPERANZA', 8, 5367);
INSERT INTO `tb_localidades` VALUES (311, 'PATQUIA VIEJO', 10, 5367);
INSERT INTO `tb_localidades` VALUES (312, 'LA MESADA', 10, 5367);
INSERT INTO `tb_localidades` VALUES (313, 'AMANA', 10, 5367);
INSERT INTO `tb_localidades` VALUES (314, 'LA TORRE', 10, 5367);
INSERT INTO `tb_localidades` VALUES (315, 'PATQUIA', 10, 5367);
INSERT INTO `tb_localidades` VALUES (316, 'LOS COLORADOS', 10, 5367);
INSERT INTO `tb_localidades` VALUES (317, 'PAGANZO', 10, 5367);
INSERT INTO `tb_localidades` VALUES (318, 'AGUANGO', 10, 5367);
INSERT INTO `tb_localidades` VALUES (319, 'REPRESA DE LA PUNTA', 10, 5367);
INSERT INTO `tb_localidades` VALUES (320, 'LOS BALDECITOS', 10, 5367);
INSERT INTO `tb_localidades` VALUES (321, 'BALDE SAN ISIDRO', 10, 5367);
INSERT INTO `tb_localidades` VALUES (322, 'EL CHIFLON', 10, 5367);
INSERT INTO `tb_localidades` VALUES (323, 'MASCASIN', 18, 5367);
INSERT INTO `tb_localidades` VALUES (324, 'LA JARILLA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (325, 'LA LAGUNA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (326, 'LA AGUADA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (327, 'EL TOTORAL', 18, 5367);
INSERT INTO `tb_localidades` VALUES (328, 'EL TALA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (329, 'ABRA VERDE', 18, 5367);
INSERT INTO `tb_localidades` VALUES (330, 'MASCASIN', 18, 5367);
INSERT INTO `tb_localidades` VALUES (331, 'EL RODEO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (332, 'CASAS VIEJAS', 18, 5367);
INSERT INTO `tb_localidades` VALUES (333, 'EL POTRERILLO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (334, 'EL DIVISADERO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (335, 'LAS TOSCAS', 18, 5367);
INSERT INTO `tb_localidades` VALUES (336, 'VALLE HERMOSO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (337, 'SANTA CRUZ', 18, 5367);
INSERT INTO `tb_localidades` VALUES (338, 'EL ROSARIO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (339, 'VILLA CASANA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (340, 'REAL DEL CADILLO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (341, 'LOS LAGARCITOS', 18, 5367);
INSERT INTO `tb_localidades` VALUES (342, 'LA CALERA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (343, 'RODEO GRANDE', 18, 5367);
INSERT INTO `tb_localidades` VALUES (344, 'LA CONSULTA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (345, 'SANTA RITA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (346, 'EL BARRIAL', 18, 5367);
INSERT INTO `tb_localidades` VALUES (347, 'CHELCOS', 18, 5367);
INSERT INTO `tb_localidades` VALUES (348, 'AGUA DE AGUIRRE', 18, 5367);
INSERT INTO `tb_localidades` VALUES (349, 'SAN ISIDRO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (350, 'LA CALLANA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (351, 'LOS OROS', 18, 5367);
INSERT INTO `tb_localidades` VALUES (352, 'AGUA BLANCA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (353, 'EL CARDON', 18, 5367);
INSERT INTO `tb_localidades` VALUES (354, 'SAN JOSE', 18, 5367);
INSERT INTO `tb_localidades` VALUES (355, 'CHEPES', 18, 5367);
INSERT INTO `tb_localidades` VALUES (356, 'SAN PEDRO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (357, 'ALTO BAYO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (358, 'AGUA DE LA PIEDRA', 18, 5367);
INSERT INTO `tb_localidades` VALUES (359, 'DESIDERIO TELLO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (360, 'SAN ANTONIO', 18, 5367);
INSERT INTO `tb_localidades` VALUES (361, 'EL ZAMPAL', 18, 5367);
INSERT INTO `tb_localidades` VALUES (362, 'LOS ROBLES', 14, 5367);
INSERT INTO `tb_localidades` VALUES (363, 'ANDOLUCAS', 14, 5367);
INSERT INTO `tb_localidades` VALUES (364, 'SHAQUI', 14, 5367);
INSERT INTO `tb_localidades` VALUES (365, 'LAS TALAS', 14, 5367);
INSERT INTO `tb_localidades` VALUES (366, 'ALPASINCHE', 14, 5367);
INSERT INTO `tb_localidades` VALUES (367, 'CUIPAN', 14, 5367);
INSERT INTO `tb_localidades` VALUES (368, 'TUYUBIL', 14, 5367);
INSERT INTO `tb_localidades` VALUES (369, 'EL RETIRO', 14, 5367);
INSERT INTO `tb_localidades` VALUES (370, 'CHAUPIHUASI', 14, 5367);
INSERT INTO `tb_localidades` VALUES (371, 'SALICAS', 14, 5367);
INSERT INTO `tb_localidades` VALUES (372, 'SAN BLAS', 14, 5367);
INSERT INTO `tb_localidades` VALUES (373, 'AMUSCHINA', 14, 5367);
INSERT INTO `tb_localidades` VALUES (374, 'SURIYACO', 14, 5367);
INSERT INTO `tb_localidades` VALUES (375, 'LA ESCALERA', 3, 5367);
INSERT INTO `tb_localidades` VALUES (376, 'LA TORRECITA', 3, 5367);
INSERT INTO `tb_localidades` VALUES (377, 'HUACO', 3, 5367);
INSERT INTO `tb_localidades` VALUES (378, 'VILLA SANAGASTA', 3, 5367);
INSERT INTO `tb_localidades` VALUES (379, 'LA CIENAGA', 16, 5367);
INSERT INTO `tb_localidades` VALUES (380, 'BOCA DE LA QUEBRADA', 16, 5367);
INSERT INTO `tb_localidades` VALUES (381, 'VALLE HERMOSO', 16, 5367);
INSERT INTO `tb_localidades` VALUES (382, 'EL HORNO', 16, 5367);
INSERT INTO `tb_localidades` VALUES (383, 'POTRERO GRANDE', 16, 5367);
INSERT INTO `tb_localidades` VALUES (384, 'LA ARMONIA', 16, 5367);
INSERT INTO `tb_localidades` VALUES (385, 'CASA PINTADA', 16, 5367);
INSERT INTO `tb_localidades` VALUES (386, 'DISTRITO PUEBLO', 16, 5367);
INSERT INTO `tb_localidades` VALUES (387, 'LA BANDA', 16, 5367);
INSERT INTO `tb_localidades` VALUES (388, 'VILLA SAN JOSE DE VINCHINA', 16, 5367);
INSERT INTO `tb_localidades` VALUES (389, 'JAGUE', 16, 5367);

-- ----------------------------
-- Table structure for tb_paises
-- ----------------------------
DROP TABLE IF EXISTS `tb_paises`;
CREATE TABLE `tb_paises`  (
  `idPais` int NOT NULL AUTO_INCREMENT,
  `abreviatura_pais` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nombre_pais` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `iso_pais` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPais`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_paises
-- ----------------------------
INSERT INTO `tb_paises` VALUES (1, 'Afganistán', 'AFGANA', 'AFG');
INSERT INTO `tb_paises` VALUES (2, 'Albania', 'ALBANESA', 'ALB');
INSERT INTO `tb_paises` VALUES (3, 'Alemania', 'ALEMANA', 'DEU');
INSERT INTO `tb_paises` VALUES (4, 'Andorra', 'ANDORRANA', 'AND');
INSERT INTO `tb_paises` VALUES (5, 'Angola', 'ANGOLEÑA', 'AGO');
INSERT INTO `tb_paises` VALUES (6, 'AntiguayBarbuda', 'ANTIGUANA', 'ATG');
INSERT INTO `tb_paises` VALUES (7, 'ArabiaSaudita', 'SAUDÍ', 'SAU');
INSERT INTO `tb_paises` VALUES (8, 'Argelia', 'ARGELINA', 'DZA');
INSERT INTO `tb_paises` VALUES (9, 'Argentina', 'ARGENTINA', 'ARG');
INSERT INTO `tb_paises` VALUES (10, 'Armenia', 'ARMENIA', 'ARM');
INSERT INTO `tb_paises` VALUES (11, 'Aruba', 'ARUBEÑA', 'ABW');
INSERT INTO `tb_paises` VALUES (12, 'Australia', 'AUSTRALIANA', 'AUS');
INSERT INTO `tb_paises` VALUES (13, 'Austria', 'AUSTRIACA', 'AUT');
INSERT INTO `tb_paises` VALUES (14, 'Azerbaiyán', 'AZERBAIYANA', 'AZE');
INSERT INTO `tb_paises` VALUES (15, 'Bahamas', 'BAHAMEÑA', 'BHS');
INSERT INTO `tb_paises` VALUES (16, 'Bangladés', 'BANGLADESÍ', 'BGD');
INSERT INTO `tb_paises` VALUES (17, 'Barbados', 'BARBADENSE', 'BRB');
INSERT INTO `tb_paises` VALUES (18, 'Baréin', 'BAREINÍ', 'BHR');
INSERT INTO `tb_paises` VALUES (19, 'Bélgica', 'BELGA', 'BEL');
INSERT INTO `tb_paises` VALUES (20, 'Belice', 'BELICEÑA', 'BLZ');
INSERT INTO `tb_paises` VALUES (21, 'Benín', 'BENINÉSA', 'BEN');
INSERT INTO `tb_paises` VALUES (22, 'Bielorrusia', 'BIELORRUSA', 'BLR');
INSERT INTO `tb_paises` VALUES (23, 'Birmania', 'BIRMANA', 'MMR');
INSERT INTO `tb_paises` VALUES (24, 'Bolivia', 'BOLIVIANA', 'BOL');
INSERT INTO `tb_paises` VALUES (25, 'BosniayHerzegovina', 'BOSNIA', 'BIH');
INSERT INTO `tb_paises` VALUES (26, 'Botsuana', 'BOTSUANA', 'BWA');
INSERT INTO `tb_paises` VALUES (27, 'Brasil', 'BRASILEÑA', 'BRA');
INSERT INTO `tb_paises` VALUES (28, 'Brunéi', 'BRUNEANA', 'BRN');
INSERT INTO `tb_paises` VALUES (29, 'Bulgaria', 'BÚLGARA', 'BGR');
INSERT INTO `tb_paises` VALUES (30, 'BurkinaFaso', 'BURKINÉS', 'BFA');
INSERT INTO `tb_paises` VALUES (31, 'Burundi', 'BURUNDÉSA', 'BDI');
INSERT INTO `tb_paises` VALUES (32, 'Bután', 'BUTANÉSA', 'BTN');
INSERT INTO `tb_paises` VALUES (33, 'CaboVerde', 'CABOVERDIANA', 'CPV');
INSERT INTO `tb_paises` VALUES (34, 'Camboya', 'CAMBOYANA', 'KHM');
INSERT INTO `tb_paises` VALUES (35, 'Camerún', 'CAMERUNESA', 'CMR');
INSERT INTO `tb_paises` VALUES (36, 'Canadá', 'CANADIENSE', 'CAN');
INSERT INTO `tb_paises` VALUES (37, 'Catar', 'CATARÍ', 'QAT');
INSERT INTO `tb_paises` VALUES (38, 'Chad', 'CHADIANA', 'TCD');
INSERT INTO `tb_paises` VALUES (39, 'Chile', 'CHILENA', 'CHL');
INSERT INTO `tb_paises` VALUES (40, 'China', 'CHINA', 'CHN');
INSERT INTO `tb_paises` VALUES (41, 'Chipre', 'CHIPRIOTA', 'CYP');
INSERT INTO `tb_paises` VALUES (42, 'CiudaddelVaticano', 'VATICANA', 'VAT');
INSERT INTO `tb_paises` VALUES (43, 'Colombia', 'COLOMBIANA', 'COL');
INSERT INTO `tb_paises` VALUES (44, 'Comoras', 'COMORENSE', 'COM');
INSERT INTO `tb_paises` VALUES (45, 'CoreadelNorte', 'NORCOREANA', 'PRK');
INSERT INTO `tb_paises` VALUES (46, 'CoreadelSur', 'SURCOREANA', 'KOR');
INSERT INTO `tb_paises` VALUES (47, 'CostadeMarfil', 'MARFILEÑA', 'CIV');
INSERT INTO `tb_paises` VALUES (48, 'CostaRica', 'COSTARRICENSE', 'CRI');
INSERT INTO `tb_paises` VALUES (49, 'Croacia', 'CROATA', 'HRV');
INSERT INTO `tb_paises` VALUES (50, 'Cuba', 'CUBANA', 'CUB');
INSERT INTO `tb_paises` VALUES (51, 'Dinamarca', 'DANÉSA', 'DNK');
INSERT INTO `tb_paises` VALUES (52, 'Dominica', 'DOMINIQUÉS', 'DMA');
INSERT INTO `tb_paises` VALUES (53, 'Ecuador', 'ECUATORIANA', 'ECU');
INSERT INTO `tb_paises` VALUES (54, 'Egipto', 'EGIPCIA', 'EGY');
INSERT INTO `tb_paises` VALUES (55, 'ElSalvador', 'SALVADOREÑA', 'SLV');
INSERT INTO `tb_paises` VALUES (56, 'EmiratosÁrabesUnidos', 'EMIRATÍ', 'ARE');
INSERT INTO `tb_paises` VALUES (57, 'Eritrea', 'ERITREA', 'ERI');
INSERT INTO `tb_paises` VALUES (58, 'Eslovaquia', 'ESLOVACA', 'SVK');
INSERT INTO `tb_paises` VALUES (59, 'Eslovenia', 'ESLOVENA', 'SVN');
INSERT INTO `tb_paises` VALUES (60, 'España', 'ESPAÑOLA', 'ESP');
INSERT INTO `tb_paises` VALUES (61, 'EstadosUnidos', 'ESTADOUNIDENSE', 'USA');
INSERT INTO `tb_paises` VALUES (62, 'Estonia', 'ESTONIA', 'EST');
INSERT INTO `tb_paises` VALUES (63, 'Etiopía', 'ETÍOPE', 'ETH');
INSERT INTO `tb_paises` VALUES (64, 'Filipinas', 'FILIPINA', 'PHL');
INSERT INTO `tb_paises` VALUES (65, 'Finlandia', 'FINLANDÉSA', 'FIN');
INSERT INTO `tb_paises` VALUES (66, 'Fiyi', 'FIYIANA', 'FJI');
INSERT INTO `tb_paises` VALUES (67, 'Francia', 'FRANCÉSA', 'FRA');
INSERT INTO `tb_paises` VALUES (68, 'Gabón', 'GABONÉSA', 'GAB');
INSERT INTO `tb_paises` VALUES (69, 'Gambia', 'GAMBIANA', 'GMB');
INSERT INTO `tb_paises` VALUES (70, 'Georgia', 'GEORGIANA', 'GEO');
INSERT INTO `tb_paises` VALUES (71, 'Gibraltar', 'GIBRALTAREÑA', 'GIB');
INSERT INTO `tb_paises` VALUES (72, 'Ghana', 'GHANÉSA', 'GHA');
INSERT INTO `tb_paises` VALUES (73, 'Granada', 'GRANADINA', 'GRD');
INSERT INTO `tb_paises` VALUES (74, 'Grecia', 'GRIEGA', 'GRC');
INSERT INTO `tb_paises` VALUES (75, 'Groenlandia', 'GROENLANDÉSA', 'GRL');
INSERT INTO `tb_paises` VALUES (76, 'Guatemala', 'GUATEMALTECA', 'GTM');
INSERT INTO `tb_paises` VALUES (77, 'Guineaecuatorial', 'ECUATOGUINEANA', 'GNQ');
INSERT INTO `tb_paises` VALUES (78, 'Guinea', 'GUINEANA', 'GIN');
INSERT INTO `tb_paises` VALUES (79, 'Guinea-Bisáu', 'GUINEANA', 'GNB');
INSERT INTO `tb_paises` VALUES (80, 'Guyana', 'GUYANESA', 'GUY');
INSERT INTO `tb_paises` VALUES (81, 'Haití', 'HAITIANA', 'HTI');
INSERT INTO `tb_paises` VALUES (82, 'Honduras', 'HONDUREÑA', 'HND');
INSERT INTO `tb_paises` VALUES (83, 'Hungría', 'HÚNGARA', 'HUN');
INSERT INTO `tb_paises` VALUES (84, 'India', 'HINDÚ', 'IND');
INSERT INTO `tb_paises` VALUES (85, 'Indonesia', 'INDONESIA', 'IDN');
INSERT INTO `tb_paises` VALUES (86, 'Irak', 'IRAQUÍ', 'IRQ');
INSERT INTO `tb_paises` VALUES (87, 'Irán', 'IRANÍ', 'IRN');
INSERT INTO `tb_paises` VALUES (88, 'Irlanda', 'IRLANDÉSA', 'IRL');
INSERT INTO `tb_paises` VALUES (89, 'Islandia', 'ISLANDÉSA', 'ISL');
INSERT INTO `tb_paises` VALUES (90, 'IslasCook', 'COOKIANA', 'COK');
INSERT INTO `tb_paises` VALUES (91, 'IslasMarshall', 'MARSHALÉSA', 'MHL');
INSERT INTO `tb_paises` VALUES (92, 'IslasSalomón', 'SALOMONENSE', 'SLB');
INSERT INTO `tb_paises` VALUES (93, 'Israel', 'ISRAELÍ', 'ISR');
INSERT INTO `tb_paises` VALUES (94, 'Italia', 'ITALIANA', 'ITA');
INSERT INTO `tb_paises` VALUES (95, 'Jamaica', 'JAMAIQUINA', 'JAM');
INSERT INTO `tb_paises` VALUES (96, 'Japón', 'JAPONÉSA', 'JPN');
INSERT INTO `tb_paises` VALUES (97, 'Jordania', 'JORDANA', 'JOR');
INSERT INTO `tb_paises` VALUES (98, 'Kazajistán', 'KAZAJA', 'KAZ');
INSERT INTO `tb_paises` VALUES (99, 'Kenia', 'KENIATA', 'KEN');
INSERT INTO `tb_paises` VALUES (100, 'Kirguistán', 'KIRGUISA', 'KGZ');
INSERT INTO `tb_paises` VALUES (101, 'Kiribati', 'KIRIBATIANA', 'KIR');
INSERT INTO `tb_paises` VALUES (102, 'Kuwait', 'KUWAITÍ', 'KWT');
INSERT INTO `tb_paises` VALUES (103, 'Laos', 'LAOSIANA', 'LAO');
INSERT INTO `tb_paises` VALUES (104, 'Lesoto', 'LESOTENSE', 'LSO');
INSERT INTO `tb_paises` VALUES (105, 'Letonia', 'LETÓNA', 'LVA');
INSERT INTO `tb_paises` VALUES (106, 'Líbano', 'LIBANÉSA', 'LBN');
INSERT INTO `tb_paises` VALUES (107, 'Liberia', 'LIBERIANA', 'LBR');
INSERT INTO `tb_paises` VALUES (108, 'Libia', 'LIBIA', 'LBY');
INSERT INTO `tb_paises` VALUES (109, 'Liechtenstein', 'LIECHTENSTEINIANA', 'LIE');
INSERT INTO `tb_paises` VALUES (110, 'Lituania', 'LITUANA', 'LTU');
INSERT INTO `tb_paises` VALUES (111, 'Luxemburgo', 'LUXEMBURGUÉSA', 'LUX');
INSERT INTO `tb_paises` VALUES (112, 'Madagascar', 'MALGACHE', 'MDG');
INSERT INTO `tb_paises` VALUES (113, 'Malasia', 'MALASIA', 'MYS');
INSERT INTO `tb_paises` VALUES (114, 'Malaui', 'MALAUÍ', 'MWI');
INSERT INTO `tb_paises` VALUES (115, 'Maldivas', 'MALDIVA', 'MDV');
INSERT INTO `tb_paises` VALUES (116, 'Malí', 'MALIENSE', 'MLI');
INSERT INTO `tb_paises` VALUES (117, 'Malta', 'MALTÉSA', 'MLT');
INSERT INTO `tb_paises` VALUES (118, 'Marruecos', 'MARROQUÍ', 'MAR');
INSERT INTO `tb_paises` VALUES (119, 'Martinica', 'MARTINIQUÉS', 'MTQ');
INSERT INTO `tb_paises` VALUES (120, 'Mauricio', 'MAURICIANA', 'MUS');
INSERT INTO `tb_paises` VALUES (121, 'Mauritania', 'MAURITANA', 'MRT');
INSERT INTO `tb_paises` VALUES (122, 'México', 'MEXICANA', 'MEX');
INSERT INTO `tb_paises` VALUES (123, 'Micronesia', 'MICRONESIA', 'FSM');
INSERT INTO `tb_paises` VALUES (124, 'Moldavia', 'MOLDAVA', 'MDA');
INSERT INTO `tb_paises` VALUES (125, 'Mónaco', 'MONEGASCA', 'MCO');
INSERT INTO `tb_paises` VALUES (126, 'Mongolia', 'MONGOLA', 'MNG');
INSERT INTO `tb_paises` VALUES (127, 'Montenegro', 'MONTENEGRINA', 'MNE');
INSERT INTO `tb_paises` VALUES (128, 'Mozambique', 'MOZAMBIQUEÑA', 'MOZ');
INSERT INTO `tb_paises` VALUES (129, 'Namibia', 'NAMIBIA', 'NAM');
INSERT INTO `tb_paises` VALUES (130, 'Nauru', 'NAURUANA', 'NRU');
INSERT INTO `tb_paises` VALUES (131, 'Nepal', 'NEPALÍ', 'NPL');
INSERT INTO `tb_paises` VALUES (132, 'Nicaragua', 'NICARAGÜENSE', 'NIC');
INSERT INTO `tb_paises` VALUES (133, 'Níger', 'NIGERINA', 'NER');
INSERT INTO `tb_paises` VALUES (134, 'Nigeria', 'NIGERIANA', 'NGA');
INSERT INTO `tb_paises` VALUES (135, 'Noruega', 'NORUEGA', 'NOR');
INSERT INTO `tb_paises` VALUES (136, 'NuevaZelanda', 'NEOZELANDÉSA', 'NZL');
INSERT INTO `tb_paises` VALUES (137, 'Omán', 'OMANÍ', 'OMN');
INSERT INTO `tb_paises` VALUES (138, 'PaísesBajos', 'NEERLANDÉSA', 'NLD');
INSERT INTO `tb_paises` VALUES (139, 'Pakistán', 'PAKISTANÍ', 'PAK');
INSERT INTO `tb_paises` VALUES (140, 'Palaos', 'PALAUANA', 'PLW');
INSERT INTO `tb_paises` VALUES (141, 'Palestina', 'PALESTINA', 'PSE');
INSERT INTO `tb_paises` VALUES (142, 'Panamá', 'PANAMEÑA', 'PAN');
INSERT INTO `tb_paises` VALUES (143, 'PapúaNuevaGuinea', 'PAPÚ', 'PNG');
INSERT INTO `tb_paises` VALUES (144, 'Paraguay', 'PARAGUAYA', 'PRY');
INSERT INTO `tb_paises` VALUES (145, 'Perú', 'PERUANA', 'PER');
INSERT INTO `tb_paises` VALUES (146, 'Polonia', 'POLACA', 'POL');
INSERT INTO `tb_paises` VALUES (147, 'Portugal', 'PORTUGUÉSA', 'PRT');
INSERT INTO `tb_paises` VALUES (148, 'PuertoRico', 'PUERTORRIQUEÑA', 'PRI');
INSERT INTO `tb_paises` VALUES (149, 'ReinoUnido', 'BRITÁNICA', 'GBR');
INSERT INTO `tb_paises` VALUES (150, 'RepúblicaCentroafricana', 'CENTROAFRICANA', 'CAF');
INSERT INTO `tb_paises` VALUES (151, 'RepúblicaCheca', 'CHECA', 'CZE');
INSERT INTO `tb_paises` VALUES (152, 'RepúblicadeMacedonia', 'MACEDONIA', 'MKD');
INSERT INTO `tb_paises` VALUES (153, 'RepúblicadelCongo', 'CONGOLEÑA', 'COG');
INSERT INTO `tb_paises` VALUES (154, 'RepúblicaDemocráticadelCongo', 'CONGOLEÑA', 'COD');
INSERT INTO `tb_paises` VALUES (155, 'RepúblicaDominicana', 'DOMINICANA', 'DOM');
INSERT INTO `tb_paises` VALUES (156, 'RepúblicaSudafricana', 'SUDAFRICANA', 'ZAF');
INSERT INTO `tb_paises` VALUES (157, 'Ruanda', 'RUANDÉSA', 'RWA');
INSERT INTO `tb_paises` VALUES (158, 'Rumanía', 'RUMANA', 'ROU');
INSERT INTO `tb_paises` VALUES (159, 'Rusia', 'RUSA', 'RUS');
INSERT INTO `tb_paises` VALUES (160, 'Samoa', 'SAMOANA', 'WSM');
INSERT INTO `tb_paises` VALUES (161, 'SanCristóbalyNieves', 'CRISTOBALEÑA', 'KNA');
INSERT INTO `tb_paises` VALUES (162, 'SanMarino', 'SANMARINENSE', 'SMR');
INSERT INTO `tb_paises` VALUES (163, 'SanVicenteylasGranadinas', 'SANVICENTINA', 'VCT');
INSERT INTO `tb_paises` VALUES (164, 'SantaLucía', 'SANTALUCENSE', 'LCA');
INSERT INTO `tb_paises` VALUES (165, 'SantoToméyPríncipe', 'SANTOTOMENSE', 'STP');
INSERT INTO `tb_paises` VALUES (166, 'Senegal', 'SENEGALÉSA', 'SEN');
INSERT INTO `tb_paises` VALUES (167, 'Serbia', 'SERBIA', 'SRB');
INSERT INTO `tb_paises` VALUES (168, 'Seychelles', 'SEYCHELLENSE', 'SYC');
INSERT INTO `tb_paises` VALUES (169, 'SierraLeona', 'SIERRALEONÉSA', 'SLE');
INSERT INTO `tb_paises` VALUES (170, 'Singapur', 'SINGAPURENSE', 'SGP');
INSERT INTO `tb_paises` VALUES (171, 'Siria', 'SIRIA', 'SYR');
INSERT INTO `tb_paises` VALUES (172, 'Somalia', 'SOMALÍ', 'SOM');
INSERT INTO `tb_paises` VALUES (173, 'SriLanka', 'CEILANÉSA', 'LKA');
INSERT INTO `tb_paises` VALUES (174, 'Suazilandia', 'SUAZI', 'SWZ');
INSERT INTO `tb_paises` VALUES (175, 'SudándelSur', 'SURSUDANÉSA', 'SSD');
INSERT INTO `tb_paises` VALUES (176, 'Sudán', 'SUDANÉSA', 'SDN');
INSERT INTO `tb_paises` VALUES (177, 'Suecia', 'SUECA', 'SWE');
INSERT INTO `tb_paises` VALUES (178, 'Suiza', 'SUIZA', 'CHE');
INSERT INTO `tb_paises` VALUES (179, 'Surinam', 'SURINAMESA', 'SUR');
INSERT INTO `tb_paises` VALUES (180, 'Tailandia', 'TAILANDÉSA', 'THA');
INSERT INTO `tb_paises` VALUES (181, 'Tanzania', 'TANZANA', 'TZA');
INSERT INTO `tb_paises` VALUES (182, 'Tayikistán', 'TAYIKA', 'TJK');
INSERT INTO `tb_paises` VALUES (183, 'TimorOriental', 'TIMORENSE', 'TLS');
INSERT INTO `tb_paises` VALUES (184, 'Togo', 'TOGOLÉSA', 'TGO');
INSERT INTO `tb_paises` VALUES (185, 'Tonga', 'TONGANA', 'TON');
INSERT INTO `tb_paises` VALUES (186, 'TrinidadyTobago', 'TRINITENSE', 'TTO');
INSERT INTO `tb_paises` VALUES (187, 'Túnez', 'TUNECINA', 'TUN');
INSERT INTO `tb_paises` VALUES (188, 'Turkmenistán', 'TURCOMANA', 'TKM');
INSERT INTO `tb_paises` VALUES (189, 'Turquía', 'TURCA', 'TUR');
INSERT INTO `tb_paises` VALUES (190, 'Tuvalu', 'TUVALUANA', 'TUV');
INSERT INTO `tb_paises` VALUES (191, 'Ucrania', 'UCRANIANA', 'UKR');
INSERT INTO `tb_paises` VALUES (192, 'Uganda', 'UGANDÉSA', 'UGA');
INSERT INTO `tb_paises` VALUES (193, 'Uruguay', 'URUGUAYA', 'URY');
INSERT INTO `tb_paises` VALUES (194, 'Uzbekistán', 'UZBEKA', 'UZB');
INSERT INTO `tb_paises` VALUES (195, 'Vanuatu', 'VANUATUENSE', 'VUT');
INSERT INTO `tb_paises` VALUES (196, 'Venezuela', 'VENEZOLANA', 'VEN');
INSERT INTO `tb_paises` VALUES (197, 'Vietnam', 'VIETNAMITA', 'VNM');
INSERT INTO `tb_paises` VALUES (198, 'Yemen', 'YEMENÍ', 'YEM');
INSERT INTO `tb_paises` VALUES (199, 'Yibuti', 'YIBUTIANA', 'DJI');
INSERT INTO `tb_paises` VALUES (200, 'Zambia', 'ZAMBIANA', 'ZMB');
INSERT INTO `tb_paises` VALUES (201, 'Zimbabue', 'ZIMBABUENSE', 'ZWE');

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
