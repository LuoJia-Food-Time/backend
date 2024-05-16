/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : takeaway

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 14/03/2024 21:16:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
use takeaway ;
-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货地址',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收货地址表' ROW_FORMAT = DYNAMIC;

INSERT INTO `address` VALUES (6, '武汉洪山区', '张pw', '13988776699', 4);
INSERT INTO `address` VALUES (7, '武汉洪山区', '张pw', '13988997788', 4);
INSERT INTO `address` VALUES (8, '武汉洪山区', '张pw', '13988776699', 4);
INSERT INTO `address` VALUES (9, '武汉洪山区', '张pw', '13988997799', 4);
INSERT INTO `address` VALUES (10, '武汉洪山区', '张pw', '13988776699', 4);
INSERT INTO `address` VALUES (14, '武汉洪山区', '张pw', '13899778866', 4);
INSERT INTO `address` VALUES (15, '武汉洪山区', '张pw', '13899887788', 11);
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin@xm.com');
-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `business_id` int(11) NULL DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '广告表' ROW_FORMAT = DYNAMIC;

INSERT INTO `banner` VALUES (5, 'http://localhost:9090/files/1698370691508-微信截图_20231019102827.png', 14);
INSERT INTO `banner` VALUES (6, 'http://localhost:9090/files/1698371275262-微信截图_20231019102729.png', 13);
-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'logo',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `license` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '营业执照',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '待审核' COMMENT '审核状态',
  `time_range` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '营业时间',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商家表' ROW_FORMAT = DYNAMIC;
-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (10, 'naixue', '123', '奈雪的茶', 'http://localhost:9090/files/1698200628077-微信截图_20231019092733.png', 'BUSINESS', '0551-67889988', '奈雪的茶，非常奈斯', '街道口', 'http://localhost:9090/files/1698200631776-微信截图_20231018161554.png', '通过', '9:00-21:00', '奶茶饮品');
INSERT INTO `business` VALUES (13, 'hug', '123', '汉堡王', 'http://localhost:9090/files/1698201477026-QQ截图20231022180706.png', 'BUSINESS', '13788997788', '量大好吃！', '广埠屯', 'http://localhost:9090/files/1698201479784-微信截图_20231018161554.png', '通过', '9:00-22:00', '炸鸡汉堡');
INSERT INTO `business` VALUES (14, 'kwk', '123', '奶茶王', 'http://localhost:9090/files/1698288093924-微信截图_20231019092635.png', 'BUSINESS', '13788997788', '美味奶茶，非常棒棒', '武大路', 'http://localhost:9090/files/1698288138770-微信截图_20231018161554.png', '通过', '9:00-21:00', '奶茶饮品');
INSERT INTO `business` VALUES (15, 'kwk', '123', '幸运咖', 'http://localhost:9090/files/1698288093924-微信截图_20231019092635.png', 'BUSINESS', '13788997788', '非常棒棒', '武大路', 'http://localhost:9090/files/1698288138770-微信截图_20231018161554.png', '通过', '9:00-21:00', '轻食简餐');
INSERT INTO `business` VALUES (16, 'wuc', '123', '小武哥哥', 'http://localhost:9090/files/1698998161478-咖啡.png', 'BUSINESS', '13899778899', '小武哥哥是真的骚', '珞珈山', 'http://localhost:9090/files/1698998253959-微信截图_20231018161554.png', '通过', '9:00-21:00', '奶茶饮品');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品ID',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `business_id` int(11) NULL DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (36, 11, 1, 4, 14);
INSERT INTO `cart` VALUES (37, 10, 1, 4, 14);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类别名称',
  `business_id` int(11) NULL DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '波波奶茶', 14);
INSERT INTO `category` VALUES (2, '波霸汉堡', 13);
INSERT INTO `category` VALUES (6, '芋泥奶茶', 14);
INSERT INTO `category` VALUES (7, '炸鸡', 13);
INSERT INTO `category` VALUES (8, '水果奶茶', 14);
INSERT INTO `category` VALUES (10, '蓝山咖啡', 16);
INSERT INTO `category` VALUES (11, '橙C美式', 16);
INSERT INTO `category` VALUES (12, '猫屎咖啡', 16);


-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `business_id` int(11) NULL DEFAULT NULL COMMENT '商家ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` (id, business_id, user_id) VALUES (10, 14, 4);
INSERT INTO `collect` (id, business_id, user_id) VALUES (11, 13, 4);
INSERT INTO `collect` (id, business_id, user_id) VALUES (12, 16, 11);


-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论',
  `star` double(10, 1) NULL DEFAULT 0.0 COMMENT '评分',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `business_id` int(11) NULL DEFAULT NULL COMMENT '商家ID',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`, `order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评价表' ROW_FORMAT = DYNAMIC;
-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (4, '非常好吃非常好吃非常好吃非常好吃非常好吃非常好吃非常好吃', 3.0, 4, 14, 13, '2023-11-03 10:19:49', NULL);
INSERT INTO `comment` VALUES (17, '小武哥哥真的很好喝', 5.0, 11, 16, 15, '2023-11-03 16:14:05', NULL);
INSERT INTO `comment` VALUES (18, '哈哈哈', 5.0, 11, 14, 16, '2023-11-03 16:15:33', NULL);


-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图片',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '原材料',
  `taste` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '口味',
  `specs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '规格',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '上架日期',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '上架' COMMENT '上架状态',
  -- TODO
  `nutrition_id` int(11) NULL DEFAULT NULL COMMENT ' 关联的营养成分，商家自己填写，不审核了',
  `discount` double(11, 1) NULL DEFAULT 1.0 COMMENT '折扣',
  `business_id` int(11) NULL DEFAULT NULL COMMENT '商家ID',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品信息' ROW_FORMAT = DYNAMIC;


-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (4, '芋泥奶茶', 19.00, 'http://localhost:9090/files/1698301107255-微信截图_20231019092635.png', '好喝不腻，秋天第一杯', '奶、茶', '香浓', '1杯', '2023-10-26', '上架', 1,1.0, 14, 6);
INSERT INTO `goods` VALUES (5, '手剥葡萄', 18.00, 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄，清爽怡人', '葡萄、奶茶', '清淡', '1杯', '2023-10-26', '下架', 1,0.9, 14, 8);
INSERT INTO `goods` VALUES (6, '手剥葡萄', 18.00, 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄，清爽怡人', '葡萄、奶茶', '清淡', '1杯', '2023-10-26', '下架',1, 0.9, 14, 8);
INSERT INTO `goods` VALUES (7, '手剥葡萄', 18.00, 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄，清爽怡人', '葡萄、奶茶', '清淡', '1杯', '2023-10-26', '下架',1, 0.9, 14, 8);
INSERT INTO `goods` VALUES (8, '手剥葡萄', 18.00, 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄，清爽怡人', '葡萄、奶茶', '清淡', '1杯', '2023-10-26', '下架',1, 0.9, 14, 8);
INSERT INTO `goods` VALUES (9, '手剥葡萄', 18.00, 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄，清爽怡人', '葡萄、奶茶', '清淡', '1杯', '2023-10-26', '下架', 1,0.9, 14, 8);
INSERT INTO `goods` VALUES (10, '手剥葡萄', 18.00, 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄，清爽怡人', '葡萄、奶茶', '清淡', '1杯', '2023-10-26', '下架',1, 0.9, 14, 8);
INSERT INTO `goods` VALUES (11, '手剥葡萄', 18.00, 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄，清爽怡人', '葡萄、奶茶', '清淡', '1杯', '2023-10-26', '下架', 1,0.9, 14, 8);
INSERT INTO `goods` VALUES (12, '橙C美式咖啡', 19.00, 'http://localhost:9090/files/1698998424558-咖啡.png', '橙C美式咖啡', '咖啡', '苦、香', '杯', '2023-11-03', '上架',1, 0.8, 16, 11);
INSERT INTO `goods` VALUES (13, '蓝山咖啡', 19.00, 'http://localhost:9090/files/1698998424558-咖啡.png', '猫屎咖啡', '咖啡', '苦、香', '杯', '2023-11-03', '上架',1, 0.8, 16, 10);
INSERT INTO `goods` VALUES (14, '猫屎咖啡', 19.00, 'http://localhost:9090/files/1698998424558-咖啡.png', '猫屎咖啡', '咖啡', '苦、香', '杯', '2023-11-03', '上架',1, 0.8, 16, 12);
INSERT INTO `goods` VALUES (15, '怪味咖啡', 19.00, 'http://localhost:9090/files/1699000325898-微信截图_20231103163159.png', '猫屎咖啡', '咖啡', '苦、香', '杯', '2023-11-03', '上架',1, 0.8, 16, 12);
INSERT INTO `goods` VALUES (16, '森森咖啡', 19.00, 'http://localhost:9090/files/1699000254169-微信截图_20231103162859.png', '猫屎咖啡', '咖啡', '苦、香', '杯', '2023-11-03', '上架',1, 0.8, 16, 12);
INSERT INTO `goods` VALUES (17, '阿卡特里咖啡', 19.00, 'http://localhost:9090/files/1699000245921-微信截图_20231103162914.png', '猫屎咖啡', '咖啡', '苦、香', '杯', '2023-11-03', '上架',1, 0.8, 16, 12);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天珞珈食刻达正式上线，开始内测', '今天珞珈食刻达正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '蒸蒸日上', '蒸蒸日上', '2023-10-31', 'admin');
-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下单时间',
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付类型',
  `pay_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单状态',
  `business_id` int(11) NULL DEFAULT NULL COMMENT '接单商家ID',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '送货地址',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '下单人ID',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单总价',
  `discount` decimal(10, 2) NULL DEFAULT NULL COMMENT '优惠金额，使用悬赏金',
  `actual` decimal(10, 2) NULL DEFAULT NULL COMMENT '实付款',
  -- TODO
  `bounty_id` int(11) NULL DEFAULT NULL COMMENT '关联的悬赏任务ID，已废弃并改成helptake_id', 
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '缩略图',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
    `reward` decimal(10, 2) NULL DEFAULT NULL COMMENT '悬赏金',
  `helptake_id` int(11) NULL DEFAULT NULL COMMENT '帮拿订单ID',
  `dormnumber` int(11) NULL DEFAULT NULL COMMENT '宿舍号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单表' ROW_FORMAT = DYNAMIC;
-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '1716083249945939968', '2023-10-22 21:25:04', '支付宝', '2023-10-22 21:25:06', '待支付', 13, '张先生', '13988779988', '武汉大学国软C4', 2, 41.00, 4.10, 36.90,1, '麻辣', 'http://106.54.221.16:9092/files/1697972203437-QQ截图20231022185405.png', '原味特色卤味等2份餐品', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (3, '1716083249945939989', '2023-10-22 21:25:04', '支付宝', '2023-10-22 21:25:06', '待收货', 13, '张先生', '13988779988', '武汉大学国软C4', 2, 41.00, 4.10, 36.90,1, '麻辣', 'http://106.54.221.16:9092/files/1697972203437-QQ截图20231022185405.png', '原味特色卤味等2份餐品', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (6, '1719963575946547200', '2023-11-02 14:24:06', '支付宝', NULL, '待评价', 14, '小武哥哥1', '13988776699', '武汉大学国软C4', 4, 36.00, 3.60, 32.40, 1,'', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄等2件商品', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (7, '1719964991616421888', '2023-11-02 14:29:44', '支付宝', NULL, '待评价', 14, '小青哥', '13899778866', '武汉大学国软C4', 4, 36.00, 3.60, 32.40, 1,'', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄等2件商品', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (8, '1719979637664600064', '2023-11-02 15:27:55', '支付宝', NULL, '待评价', 14, '小青哥哥', '13988776699', '武汉大学国软C4', 4, 36.00, 3.60, 32.40, 1,'', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄等2件商品', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (13, '1719985872392646656', '2023-11-02 15:52:42', '支付宝', '2023-11-03 09:27:09', '已完成', 14, '青哥哥', '13988997788', '武汉大学国软C4', 4, 18.00, 1.80, 16.20, 1,'', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄等1件商品', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (15, '1720353457520959488', '2023-11-03 16:13:20', '微信支付', '2023-11-03 16:13:35', '已完成', 16, 'ass', '13899887788', '武汉大学国软C4', 11, 57.00, 11.40, 45.60, 1,'我要喝热的', 'http://localhost:9090/files/1698998424558-咖啡.png', '猫屎咖啡等3件商品', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (16, '1720353815659995136', '2023-11-03 16:14:46', '支付宝', '2023-11-03 16:14:54', '已完成', 14, 'ass', '13899887788', '武汉大学国软C4', 11, 18.00, 1.80, 16.20,1, '','http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', '手剥葡萄等1件商品', NULL, NULL, NULL);
INSERT INTO `orders` VALUES (17, '1720358616883978240', '2023-11-03 16:33:51', '支付宝', NULL, '待支付', 16, 'ass', '13899887788', '武汉大学国软C4', 11, 38.00, 7.60, 30.40, 1,'', 'http://localhost:9090/files/1699000325898-微信截图_20231103163159.png', '怪味咖啡等2件商品', NULL, NULL, NULL);


-- ----------------------------
-- Table structure for orders_item
-- ----------------------------
DROP TABLE IF EXISTS `orders_item`;
CREATE TABLE `orders_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单ID',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `goods_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图片',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `num` int(11) NULL DEFAULT NULL COMMENT '购买数量',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单详情表' ROW_FORMAT = DYNAMIC;


-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;
INSERT INTO `orders_item` VALUES (1, 1, '卤猪蹄', 'http://106.54.221.16:9092/files/1697972203437-QQ截图20231022185405.png', 19.00, 1, NULL);
INSERT INTO `orders_item` VALUES (2, 1, '卤猪蹄', 'http://106.54.221.16:9092/files/1697972203437-QQ截图20231022185405.png', 19.00, 1, NULL);
INSERT INTO `orders_item` VALUES (3, 1, '卤猪蹄', 'http://106.54.221.16:9092/files/1697972203437-QQ截图20231022185405.png', 19.00, 1, NULL);
INSERT INTO `orders_item` VALUES (8, 6, '手剥葡萄', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', 16.20, 1, NULL);
INSERT INTO `orders_item` VALUES (9, 6, '手剥葡萄', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', 16.20, 1, NULL);
INSERT INTO `orders_item` VALUES (10, 7, '手剥葡萄', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', 16.20, 2, NULL);
INSERT INTO `orders_item` VALUES (11, 7, '手剥葡萄', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', 16.20, 1, NULL);
INSERT INTO `orders_item` VALUES (12, 8, '手剥葡萄', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', 16.20, 2, NULL);
INSERT INTO `orders_item` VALUES (13, 8, '手剥葡萄', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', 16.20, 1, NULL);
INSERT INTO `orders_item` VALUES (19, 13, '手剥葡萄', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', 16.20, 1, NULL);
INSERT INTO `orders_item` VALUES (22, 15, '猫屎咖啡', 'http://localhost:9090/files/1698998424558-咖啡.png', 15.20, 1, 14);
INSERT INTO `orders_item` VALUES (23, 15, '蓝山咖啡', 'http://localhost:9090/files/1698998424558-咖啡.png', 15.20, 1, 13);
INSERT INTO `orders_item` VALUES (24, 15, '橙C美式咖啡', 'http://localhost:9090/files/1698998424558-咖啡.png', 15.20, 1, 12);
INSERT INTO `orders_item` VALUES (25, 16, '手剥葡萄', 'http://localhost:9090/files/1698301459462-微信截图_20231019092653.png', 16.20, 1, 11);
INSERT INTO `orders_item` VALUES (26, 17, '怪味咖啡', 'http://localhost:9090/files/1699000325898-微信截图_20231103163159.png', 15.20, 1, 15);
INSERT INTO `orders_item` VALUES (27, 17, '阿卡特里咖啡', 'http://localhost:9090/files/1699000245921-微信截图_20231103162914.png', 15.20, 1, 17);
INSERT INTO `user` VALUES (2, 'acc', '123', '张pw', 'http://localhost:9090/files/1698204887435-微信截图_20231018172251.png', 'USER', '男', '13899887766');
INSERT INTO `user` VALUES (4, 'aaa', '123', '张pw', 'http://localhost:9090/files/1698204887435-微信截图_20231018172251.png', 'USER', '男', '13899887799');
INSERT INTO `user` VALUES (7, 'bbb', '123', 'bbb', NULL, 'USER', '男', NULL);
INSERT INTO `user` VALUES (8, 'ccc', '123', 'ccc', NULL, 'USER', '男', NULL);
INSERT INTO `user` VALUES (9, 'ddd', '123', 'ddd', NULL, 'USER', '男', NULL);
INSERT INTO `user` VALUES (10, 'xcc', '123', 'xcc', 'http://localhost:9090/files/1697438073596-avatar.png', 'USER', NULL, NULL);
INSERT INTO `user` VALUES (11, 'ass', '123', '阿克斯', 'http://localhost:9090/files/1698999056103-aRhODR5m4kUm06baad89133eedfdc4a7cd08001f6699.jpg', 'USER', '男', '13877889988');

-- TODO
DROP TABLE IF EXISTS `user_bounty`;
CREATE TABLE `user_bounty` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `balance` decimal(10, 2) NOT NULL DEFAULT '0.00' COMMENT '悬赏金余额',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户悬赏金表';

-- TODO
-- DROP TABLE IF EXISTS `reward`;
-- CREATE TABLE `reward` (
--   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '悬赏任务ID',
--   `order_id` int(11) NULL DEFAULT NULL COMMENT '关联的订单ID',
--   `user1_id` int(11) NOT NULL COMMENT '接单人',
--   `user2_id` int(11) NOT NULL COMMENT '发起悬赏人',
--   `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务描述，地址',
--   `reward` decimal(10, 2) NOT NULL COMMENT '悬赏金额',
--   `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未完成' COMMENT '任务完成状态',
--   `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建时间',
--   `updated_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '更新时间',
--   PRIMARY KEY (`order_id`) USING BTREE
-- ) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '悬赏任务表' ROW_FORMAT = DYNAMIC;

-- TODO
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子ID',
  `user_id` int(11) NOT NULL COMMENT '发布者ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `likes` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '帖子表' ROW_FORMAT = DYNAMIC;

-- TODO

CREATE TABLE `post_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `post_id` int(11) NOT NULL COMMENT '帖子ID',
  `user_id` int(11) NOT NULL COMMENT '评论者ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_post_id`(`post_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '帖子评论表' ROW_FORMAT = DYNAMIC;
-- TODO

CREATE TABLE `nutrition_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '营养成分ID',
  `food_name` varchar(255) NOT NULL COMMENT '食品名称',
  `calories` decimal(10, 2) NOT NULL COMMENT '卡路里（千卡）',
  `protein` decimal(10, 2) NOT NULL COMMENT '蛋白质（克）',
  `fat` decimal(10, 2) NOT NULL COMMENT '脂肪（克）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='食品营养成分表';
-- TODO

CREATE TABLE `order_total_nutrition_info` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `calories` decimal(10, 2) NOT NULL COMMENT '卡路里（千卡）',
  `protein` decimal(10, 2) NOT NULL COMMENT '蛋白质（克）',
  `fat` decimal(10, 2) NOT NULL COMMENT '脂肪（克）',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单总营养成分';

SET FOREIGN_KEY_CHECKS = 1;









-- -- 生成user_bounty表示例数据
-- INSERT INTO `user_bounty` (`user_id`, `balance`) VALUES
-- (1, 100.00),
-- (2, 50.00),
-- (3, 80.00);

-- -- 生成reward表示例数据
-- INSERT INTO `reward` (`order_id`, `user1_id`, `user2_id`, `description`, `reward`, `status`, `created_at`, `updated_at`) VALUES
-- (NULL, 2, 1, '送外卖到武汉大学', 20.00, '已完成', '2024-03-16', '2024-03-17'),
-- (NULL, 1, 3, '送外卖到武汉大学', 30.00, '未完成', '2024-03-17', '2024-03-17');

-- -- 生成post表示例数据
-- INSERT INTO `post` (`user_id`, `title`, `content`, `likes`, `created_at`) VALUES
-- (1, '美食分享', '今天吃了一顿超级美味的火锅！', 10, '2024-03-15'),
-- (2, '快乐分享', '和朋友一起游乐园真开心！', 20, '2024-03-16'),
-- (3, '生活分享', '和家人一起做了一顿丰盛的晚餐！', 15, '2024-03-17');

-- -- 生成post_comment表示例数据
-- INSERT INTO `post_comment` (`post_id`, `user_id`, `content`, `created_at`) VALUES
-- (1, 2, '看起来好好吃哦！', '2024-03-16'),
-- (1, 3, '下次约我一起去吃吧！', '2024-03-17'),
-- (2, 1, '游乐园真的很有趣！', '2024-03-17');

-- -- 生成nutrition_info表示例数据
-- INSERT INTO `nutrition_info` (`food_name`, `calories`, `protein`, `fat`) VALUES
-- ('红烧肉', 350.0, 25.0, 18.0),
-- ('凉拌黄瓜', 50.0, 2.0, 1.0),
-- ('冰镇可乐', 150.0, 0.0, 0.0),
-- ('草莓奶昔', 200.0, 5.0, 3.0);

-- -- 生成order_total_nutrition_info表示例数据
-- INSERT INTO `order_total_nutrition_info` (`order_id`, `calories`, `protein`, `fat`) VALUES
-- (1, 500.5, 25.3, 15.7),
-- (2, 700.2, 30.8, 20.1),
-- (3, 600.7, 28.5, 18.3),
-- (4, 800.1, 35.2, 22.6),
-- (5, 900.6, 40.6, 28.4);

