/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : modelo_y_datos

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 20/07/2022 15:39:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for avistamientos
-- ----------------------------
DROP TABLE IF EXISTS `avistamientos`;
CREATE TABLE `avistamientos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_titan` int NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_titan`(`id_titan` ASC) USING BTREE,
  CONSTRAINT `avistamientos_ibfk_1` FOREIGN KEY (`id_titan`) REFERENCES `titanes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avistamientos
-- ----------------------------
INSERT INTO `avistamientos` VALUES (1, 1, '2022-01-04');
INSERT INTO `avistamientos` VALUES (2, 1, '2021-01-25');
INSERT INTO `avistamientos` VALUES (3, 1, '2022-03-04');
INSERT INTO `avistamientos` VALUES (4, 1, '2021-03-25');
INSERT INTO `avistamientos` VALUES (5, 1, '2022-05-04');
INSERT INTO `avistamientos` VALUES (6, 1, '2022-05-25');
INSERT INTO `avistamientos` VALUES (7, 1, '2022-07-04');
INSERT INTO `avistamientos` VALUES (8, 1, '2022-07-25');
INSERT INTO `avistamientos` VALUES (9, 2, '2022-02-02');
INSERT INTO `avistamientos` VALUES (10, 2, '2022-02-08');
INSERT INTO `avistamientos` VALUES (11, 2, '2022-03-02');
INSERT INTO `avistamientos` VALUES (12, 2, '2022-03-08');
INSERT INTO `avistamientos` VALUES (13, 2, '2022-06-02');
INSERT INTO `avistamientos` VALUES (14, 2, '2022-06-08');
INSERT INTO `avistamientos` VALUES (15, 3, '2022-07-13');
INSERT INTO `avistamientos` VALUES (16, 3, '2022-07-15');
INSERT INTO `avistamientos` VALUES (17, 4, '2022-01-05');
INSERT INTO `avistamientos` VALUES (18, 4, '2022-02-05');
INSERT INTO `avistamientos` VALUES (19, 4, '2022-03-05');
INSERT INTO `avistamientos` VALUES (20, 4, '2022-04-05');
INSERT INTO `avistamientos` VALUES (21, 4, '2022-05-05');
INSERT INTO `avistamientos` VALUES (22, 4, '2022-06-05');
INSERT INTO `avistamientos` VALUES (23, 5, '2022-01-18');
INSERT INTO `avistamientos` VALUES (24, 5, '2022-03-10');
INSERT INTO `avistamientos` VALUES (25, 5, '2022-04-13');
INSERT INTO `avistamientos` VALUES (26, 5, '2022-05-10');
INSERT INTO `avistamientos` VALUES (27, 6, '2022-01-06');
INSERT INTO `avistamientos` VALUES (28, 6, '2022-06-22');
INSERT INTO `avistamientos` VALUES (29, 6, '2022-01-11');
INSERT INTO `avistamientos` VALUES (30, 6, '2022-01-29');
INSERT INTO `avistamientos` VALUES (31, 6, '2022-02-16');
INSERT INTO `avistamientos` VALUES (32, 6, '2022-05-18');
INSERT INTO `avistamientos` VALUES (33, 7, '2022-04-04');
INSERT INTO `avistamientos` VALUES (34, 7, '2022-04-22');
INSERT INTO `avistamientos` VALUES (35, 7, '2022-05-03');
INSERT INTO `avistamientos` VALUES (36, 7, '2022-06-08');
INSERT INTO `avistamientos` VALUES (37, 7, '2022-06-24');
INSERT INTO `avistamientos` VALUES (38, 8, '2022-02-16');
INSERT INTO `avistamientos` VALUES (39, 8, '2022-03-09');
INSERT INTO `avistamientos` VALUES (40, 8, '2022-04-13');
INSERT INTO `avistamientos` VALUES (41, 8, '2022-06-14');
INSERT INTO `avistamientos` VALUES (42, 9, '2022-02-21');
INSERT INTO `avistamientos` VALUES (43, 9, '2022-03-10');
INSERT INTO `avistamientos` VALUES (44, 9, '2022-05-10');
INSERT INTO `avistamientos` VALUES (45, 9, '2022-06-21');
INSERT INTO `avistamientos` VALUES (46, 9, '2022-07-05');
INSERT INTO `avistamientos` VALUES (47, 10, '2022-03-02');
INSERT INTO `avistamientos` VALUES (48, 10, '2022-06-09');
INSERT INTO `avistamientos` VALUES (49, 10, '2022-06-15');
INSERT INTO `avistamientos` VALUES (50, 10, '2022-07-17');
INSERT INTO `avistamientos` VALUES (51, 11, '2022-05-03');
INSERT INTO `avistamientos` VALUES (52, 11, '2022-05-26');
INSERT INTO `avistamientos` VALUES (53, 11, '2022-07-13');
INSERT INTO `avistamientos` VALUES (54, 12, '2022-03-16');
INSERT INTO `avistamientos` VALUES (55, 12, '2022-05-12');
INSERT INTO `avistamientos` VALUES (56, 12, '2022-06-22');

-- ----------------------------
-- Table structure for movimientos
-- ----------------------------
DROP TABLE IF EXISTS `movimientos`;
CREATE TABLE `movimientos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movimientos
-- ----------------------------
INSERT INTO `movimientos` VALUES (1, 'batallón 1');
INSERT INTO `movimientos` VALUES (2, 'batallón 2');
INSERT INTO `movimientos` VALUES (3, 'batallón 3');

-- ----------------------------
-- Table structure for movimientos_recursos
-- ----------------------------
DROP TABLE IF EXISTS `movimientos_recursos`;
CREATE TABLE `movimientos_recursos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_recurso` int NULL DEFAULT NULL,
  `id_muerte` int NULL DEFAULT NULL,
  `id_movimiento` int NULL DEFAULT NULL,
  `cantidad` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_muerte`(`id_muerte` ASC) USING BTREE,
  INDEX `id_recurso`(`id_recurso` ASC) USING BTREE,
  INDEX `id_movimiento`(`id_movimiento` ASC) USING BTREE,
  CONSTRAINT `movimientos_recursos_ibfk_1` FOREIGN KEY (`id_muerte`) REFERENCES `muertes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `movimientos_recursos_ibfk_2` FOREIGN KEY (`id_recurso`) REFERENCES `recursos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `movimientos_recursos_ibfk_3` FOREIGN KEY (`id_movimiento`) REFERENCES `movimientos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movimientos_recursos
-- ----------------------------
INSERT INTO `movimientos_recursos` VALUES (1, 1, 1, 1, 5);
INSERT INTO `movimientos_recursos` VALUES (2, 2, 1, 1, 6);
INSERT INTO `movimientos_recursos` VALUES (3, 3, 1, 1, 4);
INSERT INTO `movimientos_recursos` VALUES (4, 5, 1, 1, 15);
INSERT INTO `movimientos_recursos` VALUES (5, 1, 2, 1, 5);
INSERT INTO `movimientos_recursos` VALUES (6, 2, 2, 1, 6);
INSERT INTO `movimientos_recursos` VALUES (7, 4, 2, 1, 4);
INSERT INTO `movimientos_recursos` VALUES (8, 5, 2, 1, 15);
INSERT INTO `movimientos_recursos` VALUES (9, 1, 3, 1, 5);
INSERT INTO `movimientos_recursos` VALUES (10, 2, 3, 1, 6);
INSERT INTO `movimientos_recursos` VALUES (11, 4, 3, 1, 4);
INSERT INTO `movimientos_recursos` VALUES (12, 5, 3, 1, 15);
INSERT INTO `movimientos_recursos` VALUES (13, 1, 4, 1, 5);
INSERT INTO `movimientos_recursos` VALUES (14, 2, 4, 1, 6);
INSERT INTO `movimientos_recursos` VALUES (15, 4, 4, 1, 4);
INSERT INTO `movimientos_recursos` VALUES (16, 5, 4, 1, 15);
INSERT INTO `movimientos_recursos` VALUES (17, 1, 5, 1, 5);
INSERT INTO `movimientos_recursos` VALUES (18, 2, 5, 1, 6);
INSERT INTO `movimientos_recursos` VALUES (19, 4, 5, 1, 4);
INSERT INTO `movimientos_recursos` VALUES (20, 5, 5, 1, 15);
INSERT INTO `movimientos_recursos` VALUES (21, 1, 6, 1, 5);
INSERT INTO `movimientos_recursos` VALUES (22, 2, 6, 1, 6);
INSERT INTO `movimientos_recursos` VALUES (23, 4, 6, 1, 4);
INSERT INTO `movimientos_recursos` VALUES (24, 5, 6, 1, 15);
INSERT INTO `movimientos_recursos` VALUES (25, 1, 7, 2, 5);
INSERT INTO `movimientos_recursos` VALUES (26, 2, 7, 2, 6);
INSERT INTO `movimientos_recursos` VALUES (27, 4, 7, 2, 4);
INSERT INTO `movimientos_recursos` VALUES (28, 5, 7, 2, 15);
INSERT INTO `movimientos_recursos` VALUES (29, 1, 8, 2, 5);
INSERT INTO `movimientos_recursos` VALUES (30, 2, 8, 2, 6);
INSERT INTO `movimientos_recursos` VALUES (31, 4, 8, 2, 4);
INSERT INTO `movimientos_recursos` VALUES (32, 5, 8, 2, 15);

-- ----------------------------
-- Table structure for muertes
-- ----------------------------
DROP TABLE IF EXISTS `muertes`;
CREATE TABLE `muertes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_titan` int NULL DEFAULT NULL,
  `causa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `fecha` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_titan`(`id_titan` ASC) USING BTREE,
  CONSTRAINT `muertes_ibfk_1` FOREIGN KEY (`id_titan`) REFERENCES `titanes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of muertes
-- ----------------------------
INSERT INTO `muertes` VALUES (1, 1, 'Asesinato', '2022-07-28');
INSERT INTO `muertes` VALUES (2, 4, 'Accidente', '2022-06-14');
INSERT INTO `muertes` VALUES (3, 7, 'Accidente', '2022-07-05');
INSERT INTO `muertes` VALUES (4, 2, 'Asesinato', '2022-07-02');
INSERT INTO `muertes` VALUES (5, 3, 'Asesinato', '2022-07-18');
INSERT INTO `muertes` VALUES (6, 5, 'Asesinato', '2022-06-09');
INSERT INTO `muertes` VALUES (7, 11, 'Asesinato', '2022-07-01');
INSERT INTO `muertes` VALUES (8, 12, 'Asesinato', '2022-06-01');

-- ----------------------------
-- Table structure for recursos
-- ----------------------------
DROP TABLE IF EXISTS `recursos`;
CREATE TABLE `recursos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unidad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recursos
-- ----------------------------
INSERT INTO `recursos` VALUES (1, 'espadas', 'unidad');
INSERT INTO `recursos` VALUES (2, 'pistolas', 'unidad');
INSERT INTO `recursos` VALUES (3, 'bombas', 'unidad');
INSERT INTO `recursos` VALUES (4, 'munición', 'caja');
INSERT INTO `recursos` VALUES (5, 'soga', 'metros');

-- ----------------------------
-- Table structure for titanes
-- ----------------------------
DROP TABLE IF EXISTS `titanes`;
CREATE TABLE `titanes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `altura` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of titanes
-- ----------------------------
INSERT INTO `titanes` VALUES (1, 'goku', 9);
INSERT INTO `titanes` VALUES (2, 'meliodas', 8);
INSERT INTO `titanes` VALUES (3, 'krilin', 4);
INSERT INTO `titanes` VALUES (4, 'amor', 3);
INSERT INTO `titanes` VALUES (5, 'vegueta', 7);
INSERT INTO `titanes` VALUES (6, 'picolo', 5);
INSERT INTO `titanes` VALUES (7, 'maton', 10);
INSERT INTO `titanes` VALUES (8, 'hank', 2);
INSERT INTO `titanes` VALUES (9, 'escanor', 12);
INSERT INTO `titanes` VALUES (10, 'rencor', 8);
INSERT INTO `titanes` VALUES (11, 'kirito', 7);
INSERT INTO `titanes` VALUES (12, 'velga', 8);

SET FOREIGN_KEY_CHECKS = 1;
