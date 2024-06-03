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

 Date: 02/06/2024 23:33:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
