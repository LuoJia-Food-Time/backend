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
  `bounty_id` int(11) NULL DEFAULT NULL COMMENT '关联的悬赏任务ID', 
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '缩略图',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单表' ROW_FORMAT = DYNAMIC;



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

-- TODO
DROP TABLE IF EXISTS `user_bounty`;
CREATE TABLE `user_bounty` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `balance` decimal(10, 2) NOT NULL DEFAULT '0.00' COMMENT '悬赏金余额',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户悬赏金表';

-- TODO
DROP TABLE IF EXISTS `reward`;
CREATE TABLE `reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '悬赏任务ID',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '关联的订单ID',
  `user1_id` int(11) NOT NULL COMMENT '接单人',
  `user2_id` int(11) NOT NULL COMMENT '发起悬赏人',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务描述，地址',
  `reward` decimal(10, 2) NOT NULL COMMENT '悬赏金额',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未完成' COMMENT '任务完成状态',
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '创建时间',
  `updated_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '悬赏任务表' ROW_FORMAT = DYNAMIC;

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



-- 生成address表示例数据
INSERT INTO `address` (`address`, `user`, `phone`, `user_id`) VALUES
('上海市浦东新区', '张三', '13888888888', 1),
('北京市朝阳区', '李四', '13999999999', 2),
('广州市天河区', '王五', '13666666666', 3),
('深圳市南山区', '赵六', '13555555555', 4);

-- 生成admin表示例数据
INSERT INTO `admin` (`username`, `password`, `name`, `avatar`, `role`, `phone`, `email`) VALUES
('admin', 'admin123', '超级管理员', 'admin.jpg', 'admin', '18888888888', 'admin@example.com');

-- 生成banner表示例数据
INSERT INTO `banner` (`img`, `business_id`) VALUES
('banner1.jpg', 1),
('banner2.jpg', 2),
('banner3.jpg', 3);

-- 生成business表示例数据
INSERT INTO `business` (`username`, `password`, `name`, `avatar`, `role`, `phone`, `info`, `address`, `license`, `status`, `time_range`, `type`) VALUES
('business1', 'pwd123', '商家1', 'logo1.jpg', 'seller', '18811111111', '我们是一家美食店', '上海市徐汇区', 'license1.jpg', '已审核', '09:00-21:00', '餐饮'),
('business2', 'pwd456', '商家2', 'logo2.jpg', 'seller', '18822222222', '我们是一家小吃店', '北京市海淀区', 'license2.jpg', '待审核', '08:00-20:00', '小吃'),
('business3', 'pwd789', '商家3', 'logo3.jpg', 'seller', '18833333333', '我们是一家饮品店', '广州市白云区', 'license3.jpg', '已审核', '10:00-22:00', '饮品');

-- 生成cart表示例数据
INSERT INTO `cart` (`goods_id`, `num`, `user_id`, `business_id`) VALUES
(1, 2, 1, 1),
(3, 1, 2, 2),
(2, 3, 3, 3);

-- 生成category表示例数据
INSERT INTO `category` (`name`, `business_id`) VALUES
('热菜', 1),
('凉菜', 1),
('饮料', 3),
('甜点', 3);

-- 生成collect表示例数据
INSERT INTO `collect` (`business_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- 生成comment表示例数据
INSERT INTO `comment` (`content`, `star`, `user_id`, `business_id`, `order_id`, `time`, `goods_id`) VALUES
('非常好吃，下次还会光顾！', 5.0, 1, 1, 1, '2024-03-15', 1),
('口感一般，希望改进。', 3.5, 2, 2, 2, '2024-03-16', 2),
('服务态度很好，点赞！', 4.5, 3, 3, 3, '2024-03-17', 3);

-- 生成goods表示例数据
INSERT INTO `goods` (`name`, `price`, `img`, `descr`, `origin`, `taste`, `specs`, `date`, `status`, `nutrition_id`, `discount`, `business_id`, `category_id`) VALUES
('红烧肉', 28.80, 'food1.jpg', '正宗的红烧肉', '猪肉', '咸甜', '500g/份', '2024-03-10', '上架', NULL, 1.0, 1, 1),
('凉拌黄瓜', 12.50, 'food2.jpg', '爽口的凉拌黄瓜', '黄瓜', '清淡', '200g/份', '2024-03-11', '上架', NULL, 1.0, 1, 2),
('冰镇可乐', 5.00, 'drink1.jpg', '冰爽的可乐', '可乐', '甜', '500ml/瓶', '2024-03-12', '上架', NULL, 1.0, 3, 3),
('草莓奶昔', 18.90, 'drink2.jpg', '鲜果的草莓奶昔', '草莓', '甜', '350ml/杯', '2024-03-13', '上架', NULL, 1.0, 3, 4);

-- 生成notice表示例数据
INSERT INTO `notice` (`title`, `content`, `time`, `user`) VALUES
('重要通知', '本店特价活动开始了！', '2024-03-14', '管理员');

-- 生成orders表示例数据
INSERT INTO `orders` (`order_no`, `time`, `pay_type`, `pay_time`, `status`, `business_id`, `user`, `phone`, `address`, `user_id`, `amount`, `discount`, `actual`, `bounty_id`, `comment`, `cover`, `name`) VALUES
('20240314001', '2024-03-14 10:00:00', '在线支付', '2024-03-14 10:05:00', '已完成', 1, '张三', '13888888888', '上海市浦东新区', 1, 58.60, 0.00, 58.60, NULL, '无', 'order1.jpg', '订单1'),
('20240314002', '2024-03-15 11:30:00', '货到付款', NULL, '待发货', 2, '李四', '13999999999', '北京市朝阳区', 2, 12.50, 0.00, 12.50, NULL, '加急配送', 'order2.jpg', '订单2'),
('20240314003', '2024-03-16 13:45:00', '在线支付', '2024-03-16 14:00:00', '已完成', 3, '王五', '13666666666', '广州市天河区', 3, 23.90, 0.00, 23.90, NULL, '无', 'order3.jpg', '订单3');

-- 生成orders_item表示例数据
INSERT INTO `orders_item` (`order_id`, `goods_name`, `goods_img`, `price`, `num`, `goods_id`) VALUES
(1, '红烧肉', 'food1.jpg', 28.80, 2, 1),
(2, '凉拌黄瓜', 'food2.jpg', 12.50, 1, 2),
(3, '冰镇可乐', 'drink1.jpg', 5.00, 1, 3);

-- 生成user表示例数据
INSERT INTO `user` (`username`, `password`, `name`, `avatar`, `role`, `sex`, `phone`) VALUES
('user1', 'pwd123', '张三', 'avatar1.jpg', 'user', '男', '18888888888'),
('user2', 'pwd456', '李四', 'avatar2.jpg', 'user', '女', '18999999999'),
('user3', 'pwd789', '王五', 'avatar3.jpg', 'user', '男', '18777777777');

-- 生成user_bounty表示例数据
INSERT INTO `user_bounty` (`user_id`, `balance`) VALUES
(1, 100.00),
(2, 50.00),
(3, 80.00);

-- 生成reward表示例数据
INSERT INTO `reward` (`order_id`, `user1_id`, `user2_id`, `description`, `reward`, `status`, `created_at`, `updated_at`) VALUES
(NULL, 2, 1, '送外卖到中关村', 20.00, '已完成', '2024-03-16', '2024-03-17'),
(NULL, 1, 3, '送外卖到天河城', 30.00, '未完成', '2024-03-17', '2024-03-17');

-- 生成post表示例数据
INSERT INTO `post` (`user_id`, `title`, `content`, `likes`, `created_at`) VALUES
(1, '美食分享', '今天吃了一顿超级美味的火锅！', 10, '2024-03-15'),
(2, '快乐分享', '和朋友一起游乐园真开心！', 20, '2024-03-16'),
(3, '生活分享', '和家人一起做了一顿丰盛的晚餐！', 15, '2024-03-17');

-- 生成post_comment表示例数据
INSERT INTO `post_comment` (`post_id`, `user_id`, `content`, `created_at`) VALUES
(1, 2, '看起来好好吃哦！', '2024-03-16'),
(1, 3, '下次约我一起去吃吧！', '2024-03-17'),
(2, 1, '游乐园真的很有趣！', '2024-03-17');

-- 生成nutrition_info表示例数据
INSERT INTO `nutrition_info` (`food_name`, `calories`, `protein`, `fat`) VALUES
('红烧肉', 350.0, 25.0, 18.0),
('凉拌黄瓜', 50.0, 2.0, 1.0),
('冰镇可乐', 150.0, 0.0, 0.0),
('草莓奶昔', 200.0, 5.0, 3.0);

-- 生成order_total_nutrition_info表示例数据
INSERT INTO `order_total_nutrition_info` (`order_id`, `calories`, `protein`, `fat`) VALUES
(1, 500.5, 25.3, 15.7),
(2, 700.2, 30.8, 20.1),
(3, 600.7, 28.5, 18.3),
(4, 800.1, 35.2, 22.6),
(5, 900.6, 40.6, 28.4);

