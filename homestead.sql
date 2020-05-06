/*
Navicat MySQL Data Transfer

Source Server         : homestead
Source Server Version : 50729
Source Host           : 127.0.0.1:33060
Source Database       : homestead

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-05-06 10:48:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `banners`
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告图 url 地址',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片 Alt信息',
  `bg_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '背景: 左侧',
  `bg_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '背景: 右侧',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '要跳转的链接地址',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('1', 'http://learnku-fdq.com/uploads/images/banners/202003/30/1_1585549604_Ja8gLTSo2a.jpg', 'banner', 'green', 'green', 'http://learnku-fdq.com', '钱塘江夜景', '1', '2020-03-30 14:27:07', '2020-03-30 14:30:15');
INSERT INTO `banners` VALUES ('2', 'http://learnku-fdq.com/uploads/images/banners/202003/30/1_1585549668_zY7zFhie1U.jpg', '1', '1', '2', 'http://learnku-fdq.com', '动画', '1', '2020-03-30 14:27:59', '2020-03-30 14:27:59');

-- ----------------------------
-- Table structure for `blog_articles`
-- ----------------------------
DROP TABLE IF EXISTS `blog_articles`;
CREATE TABLE `blog_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帖子标题',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帖子内容',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户 ID',
  `category_id` int(10) unsigned NOT NULL COMMENT '分类 ID',
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复数量',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看总数',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '喜欢总数-赞',
  `last_reply_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后回复的用户 ID',
  `order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '可用来做排序使用',
  `excerpt` text COLLATE utf8mb4_unicode_ci COMMENT '文章摘要',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'SEO7友好的 URI',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_articles_title_index` (`title`),
  KEY `blog_articles_user_id_index` (`user_id`),
  KEY `blog_articles_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog_articles
-- ----------------------------
INSERT INTO `blog_articles` VALUES ('1', 'Tempore non deserunt non esse perspiciatis.', 'Reiciendis molestiae odio vel. Doloribus dolorem et aut qui id laudantium. Consequatur repudiandae est tempora odit. Autem voluptas ex culpa ducimus incidunt facere.', '1', '7', '0', '4', '0', '0', '0', 'Reiciendis molestiae odio vel. Doloribus dolorem et aut qui id laudantium. Consequatur repudiandae est tempora odit. Autem voluptas ex culpa ducimus incidunt facere.', 'tempore-non-deserunt-non-esse-perspiciatis', '2020-03-20 16:46:05', '2020-03-30 15:08:30');
INSERT INTO `blog_articles` VALUES ('2', 'Non repellendus sunt nisi sint dolorem ut.', 'Qui earum omnis fugiat. Voluptas fugit asperiores deserunt aperiam soluta voluptatibus.', '1', '6', '0', '0', '0', '0', '0', 'Non repellendus sunt nisi sint dolorem ut.', null, '2020-03-05 07:38:32', '2020-03-26 06:41:47');
INSERT INTO `blog_articles` VALUES ('3', 'Aut commodi necessitatibus iusto et rerum.', 'Consequatur eum voluptates aut nisi velit adipisci. Odit et nihil molestiae et aliquam. Voluptate quas excepturi dolor corrupti dignissimos rem. Eos quae autem consequuntur consequuntur.', '1', '3', '0', '0', '0', '0', '0', 'Aut commodi necessitatibus iusto et rerum.', null, '2020-02-28 12:14:02', '2020-03-20 09:52:13');
INSERT INTO `blog_articles` VALUES ('4', 'Suscipit ullam voluptas adipisci eius.', 'Quia et blanditiis voluptas numquam iure ex eos. Dolore et in aut fuga sed facere. Aliquam odio qui eveniet quaerat ipsa dolore.', '1', '10', '0', '1', '0', '0', '0', 'Quia et blanditiis voluptas numquam iure ex eos. Dolore et in aut fuga sed facere. Aliquam odio qui eveniet quaerat ipsa dolore.', 'suscipit-ullam-voluptas-adipisci-eius', '2020-03-08 05:10:38', '2020-03-30 15:02:21');
INSERT INTO `blog_articles` VALUES ('5', 'Eum veniam illum et reiciendis.', 'Est officiis sed tempora voluptatem. Et aut eius cupiditate unde reprehenderit sit nisi. Ducimus qui totam velit et delectus. Recusandae nostrum modi omnis et vel.', '1', '3', '0', '1', '0', '0', '0', 'Est officiis sed tempora voluptatem. Et aut eius cupiditate unde reprehenderit sit nisi. Ducimus qui totam velit et delectus. Recusandae nostrum modi omnis et vel.', 'eum-veniam-illum-et-reiciendis', '2020-02-27 17:13:40', '2020-03-30 15:02:27');
INSERT INTO `blog_articles` VALUES ('6', 'Illum magnam ad illum eos non.', 'Laudantium autem dicta voluptatibus nihil tenetur. Non dignissimos porro repellendus non. Et voluptate totam unde ut ipsum officia.', '1', '9', '0', '0', '0', '0', '0', 'Illum magnam ad illum eos non.', null, '2020-03-09 22:59:46', '2020-03-21 00:34:12');
INSERT INTO `blog_articles` VALUES ('7', 'Quis a doloremque nihil dolorem qui consectetur adipisci.', 'Cum consequatur animi corporis consequatur. Dolores optio et qui voluptas est odit quisquam. Explicabo dolores est sequi ducimus. Ullam veritatis et aut placeat. Veritatis quod eum facere voluptatem.', '1', '3', '0', '0', '0', '0', '0', 'Quis a doloremque nihil dolorem qui consectetur adipisci.', null, '2020-03-02 13:56:20', '2020-03-02 16:30:01');
INSERT INTO `blog_articles` VALUES ('8', 'Temporibus praesentium voluptatibus deserunt enim eveniet rerum illo.', 'Impedit voluptates et molestiae esse. Neque ratione nostrum suscipit odit omnis deserunt rerum. Ut laborum et sit qui ut occaecati quia.', '1', '1', '0', '0', '0', '0', '0', 'Temporibus praesentium voluptatibus deserunt enim eveniet rerum illo.', null, '2020-02-29 09:19:18', '2020-03-09 14:51:30');
INSERT INTO `blog_articles` VALUES ('9', 'Perferendis aut doloremque rerum est nam.', 'Velit qui et quis perferendis qui quam. Qui deleniti sed vero dolorem provident veniam eos. Libero ut quo inventore. Laborum repudiandae est non aut.', '1', '7', '0', '0', '0', '0', '0', 'Perferendis aut doloremque rerum est nam.', null, '2020-02-27 20:10:04', '2020-03-19 04:52:51');
INSERT INTO `blog_articles` VALUES ('10', '阐述CGI、Fastcgi、php-cgi、php-fpm几者的关系', '- CGI：全称是“公共网关接口”(Common Gateway Interface)，HTTP服务器与你的或其它机器上的程序进行“交谈”的一种协议，保证Web Server传递过来的数据是标准格式的\r\n\r\n- Fastcgi：标准的CGI对每个请求都会执行这些步骤（不闲累啊！启动进程很累的说！），所以处理每个时间的时间会比较长。这明显不合理嘛！那么FastCGI是怎么做的呢？首先，FastCGI会先启一个master，解析配置文件，初始化执行环境，然后再启动多个worker。当请求过来时，master会传递给一个worker，然后立即可以接受下一个请求。这样就避免了重复的劳动，效率自然是高。而且当worker不够用时，master可以根据配置预先启动几个worker等着；当然空闲worker太多时，也会停掉一些，这样就提高了性能，也节约了资源。\r\n\r\n- php-cgi：实现了fastcgi协议的程序。\r\n\r\n- php-fpm：php-cgi只是个CGI程序，他自己本身只能解析请求，返回结果，不会管理进程，所以就出现了一些能够调度php-cgi进程的程序，比如说由lighthttpd分离出来的spawn-fcgi。好了php-fpm也是这么个东西，在长时间的发展后，逐渐得到了大家的认可，也越来越流行。', '1', '4', '0', '3', '1', '0', '0', '- CGI：全称是“公共网关接口”(Common Gateway Interface)，HTTP服务器与你的或其它机器上的程序进行“交谈”的一种协议，保证Web Server传递过来的数据是标准格式的  - Fastcgi：标准的CGI对每个请求都会执行这些步骤...', 'in-deserunt-labore-qui-molestiae-in-cum-delectus', '2020-02-28 03:35:13', '2020-04-09 11:34:03');
INSERT INTO `blog_articles` VALUES ('11', 'Et natus quos odit doloribus quo tempore.', 'Eligendi consequatur voluptatem et quo reiciendis fuga. Magni aperiam sint vitae sed dolor a. Sint ex quod est itaque voluptates.', '1', '10', '0', '0', '0', '0', '0', 'Et natus quos odit doloribus quo tempore.', null, '2020-03-12 06:31:12', '2020-03-27 15:08:54');
INSERT INTO `blog_articles` VALUES ('12', 'Sequi doloremque et nihil qui nobis.', 'Labore ea ducimus reiciendis aut quis nisi dolorum. Tempora asperiores ipsa fuga enim est eligendi. Quo quo et sed aut.', '1', '2', '0', '0', '0', '0', '0', 'Sequi doloremque et nihil qui nobis.', null, '2020-03-14 17:13:31', '2020-03-23 02:16:01');
INSERT INTO `blog_articles` VALUES ('13', 'Et omnis dolor illum laboriosam ullam consectetur.', 'Corporis rerum harum est eum aliquam atque. Corrupti quam tempore officiis incidunt. Autem et qui atque nobis. Odit labore aut sint fugiat qui.', '1', '9', '0', '0', '0', '0', '0', 'Et omnis dolor illum laboriosam ullam consectetur.', null, '2020-03-06 02:24:48', '2020-03-21 19:50:09');
INSERT INTO `blog_articles` VALUES ('14', 'Quia ad voluptatem sequi quia et quo.', 'Quasi qui iure omnis. Quia aut molestiae omnis nisi corporis. Est tempora harum ipsa.', '1', '9', '0', '0', '0', '0', '0', 'Quia ad voluptatem sequi quia et quo.', null, '2020-03-09 16:26:32', '2020-03-14 10:03:14');
INSERT INTO `blog_articles` VALUES ('15', 'Ut quis vero necessitatibus optio eum.', 'Consequatur sunt assumenda nobis molestiae voluptate. Dolor ipsam aut et eos ut quia quis. Rerum quia quibusdam nisi qui corporis sit. Repellendus dicta aut quos molestiae voluptatem fugit.', '1', '10', '0', '0', '0', '0', '0', 'Ut quis vero necessitatibus optio eum.', null, '2020-02-29 01:02:05', '2020-02-29 03:10:06');
INSERT INTO `blog_articles` VALUES ('16', 'Voluptatum dicta sed sed molestias.', 'Omnis quas soluta dolores sed inventore consequatur. Cumque ab sequi enim est vero. Numquam alias odit soluta non expedita dolorum dolorem. Ut ipsa impedit dolor ab aut. Porro placeat nihil minima.', '1', '3', '0', '0', '0', '0', '0', 'Voluptatum dicta sed sed molestias.', null, '2020-03-02 12:18:32', '2020-03-06 18:27:05');
INSERT INTO `blog_articles` VALUES ('17', 'Iure aspernatur quisquam qui iure laboriosam autem perspiciatis.', 'Perferendis velit perferendis totam vitae quia et necessitatibus et. Suscipit assumenda recusandae illum accusantium iste aliquam. Enim deserunt et vel dicta harum quia atque.', '1', '10', '0', '0', '0', '0', '0', 'Iure aspernatur quisquam qui iure laboriosam autem perspiciatis.', null, '2020-03-02 16:21:52', '2020-03-16 18:34:33');
INSERT INTO `blog_articles` VALUES ('18', 'Ut beatae corporis et nisi doloribus.', 'Quaerat harum ullam voluptatem neque explicabo. Numquam cupiditate sint quae nam necessitatibus rerum officiis eligendi. Rerum vitae eum omnis in similique nulla sed.', '1', '10', '0', '0', '0', '0', '0', 'Ut beatae corporis et nisi doloribus.', null, '2020-03-16 02:01:06', '2020-03-19 03:30:46');
INSERT INTO `blog_articles` VALUES ('19', 'Sed libero repellendus id voluptatem voluptatem.', 'Praesentium possimus quisquam veritatis officiis. Fugit enim eum debitis voluptatum facere quasi est provident. Error voluptates ut molestias nam doloremque qui.', '1', '3', '0', '0', '0', '0', '0', 'Sed libero repellendus id voluptatem voluptatem.', null, '2020-03-12 05:25:43', '2020-03-19 22:41:59');
INSERT INTO `blog_articles` VALUES ('20', 'Quas cum in aliquid quasi porro hic a.', 'Aspernatur quidem id dolorum hic. Veniam itaque consectetur sint qui. Ex repellat praesentium corporis rerum qui doloribus id. Quo voluptates perspiciatis neque voluptatem.', '1', '6', '0', '0', '0', '0', '0', 'Quas cum in aliquid quasi porro hic a.', null, '2020-03-05 13:59:52', '2020-03-16 06:31:39');
INSERT INTO `blog_articles` VALUES ('21', 'Facere sed aut sed.', 'Impedit eveniet iusto quia. Esse dolores suscipit sit. Ullam dolores at molestias autem mollitia doloribus aut.', '1', '2', '0', '0', '0', '0', '0', 'Facere sed aut sed.', null, '2020-03-18 15:17:02', '2020-03-23 20:33:38');
INSERT INTO `blog_articles` VALUES ('22', 'Ut sint aspernatur voluptate.', 'Hic et voluptate reiciendis enim ipsam dolor a. Nemo quis ea iusto aspernatur. Dolor aperiam sint nemo qui deserunt. Aperiam cumque rerum temporibus voluptates eligendi velit molestias.', '1', '2', '0', '0', '0', '0', '0', 'Ut sint aspernatur voluptate.', null, '2020-03-03 19:11:03', '2020-03-19 23:41:36');
INSERT INTO `blog_articles` VALUES ('23', 'Magni voluptatem aliquam et.', 'Distinctio ea debitis est cumque. Voluptatem odio eum eos repellendus sunt non. Ab eum perferendis accusamus sed nobis repellendus.', '1', '6', '0', '0', '0', '0', '0', 'Magni voluptatem aliquam et.', null, '2020-03-02 22:37:52', '2020-03-15 13:15:12');
INSERT INTO `blog_articles` VALUES ('24', 'Officiis in itaque velit qui distinctio iusto illo.', 'Dolores est ea ut repudiandae nulla corrupti. Dolores qui ad aspernatur qui itaque aperiam. Harum id occaecati doloribus quibusdam est. Aliquid hic sit impedit autem.', '1', '2', '0', '0', '0', '0', '0', 'Officiis in itaque velit qui distinctio iusto illo.', null, '2020-03-06 12:14:05', '2020-03-17 10:24:30');
INSERT INTO `blog_articles` VALUES ('25', 'Impedit fugiat corrupti velit ex illum ea est.', 'Dignissimos perspiciatis consequuntur doloremque totam quas. Commodi autem dolor modi ea ea consequatur ut delectus. Quia autem ab unde necessitatibus blanditiis.', '1', '8', '0', '0', '0', '0', '0', 'Impedit fugiat corrupti velit ex illum ea est.', null, '2020-03-02 16:55:59', '2020-03-03 05:43:02');
INSERT INTO `blog_articles` VALUES ('26', 'Nobis dolorum quasi et quia.', 'Sed a earum placeat. Iste ut et cum dicta ea aliquam laudantium ipsa. Voluptatem quis neque voluptas fuga dolores. Aut corporis qui consectetur et eaque et incidunt.', '1', '5', '0', '0', '0', '0', '0', 'Nobis dolorum quasi et quia.', null, '2020-03-06 11:13:38', '2020-03-07 21:54:27');
INSERT INTO `blog_articles` VALUES ('27', 'Nihil illum exercitationem consequuntur voluptate vel vel natus ducimus.', 'Deserunt fugiat et ea consequuntur. Officia repudiandae ut error adipisci earum et iste. Id vero praesentium fugit. Voluptatibus incidunt aperiam unde voluptates consequatur quibusdam.', '1', '1', '0', '0', '0', '0', '0', 'Nihil illum exercitationem consequuntur voluptate vel vel natus ducimus.', null, '2020-03-15 11:05:25', '2020-03-22 07:37:56');
INSERT INTO `blog_articles` VALUES ('28', 'Qui quod repellat repellat aperiam consectetur.', 'Et numquam consequatur pariatur et. Ea eius et id esse voluptatem neque. Quo necessitatibus facilis illum porro eos.', '1', '9', '0', '0', '0', '0', '0', 'Qui quod repellat repellat aperiam consectetur.', null, '2020-03-21 18:31:55', '2020-03-26 03:31:00');
INSERT INTO `blog_articles` VALUES ('29', 'Dignissimos quia culpa sapiente odit omnis est et.', 'Deserunt molestias esse qui voluptatibus autem rem. Placeat temporibus est autem repudiandae nulla et expedita accusantium. Rerum et qui velit dicta. Et autem temporibus doloribus ut nobis sint.', '1', '2', '0', '0', '0', '0', '0', 'Dignissimos quia culpa sapiente odit omnis est et.', null, '2020-02-29 19:43:48', '2020-03-08 11:28:06');
INSERT INTO `blog_articles` VALUES ('30', 'Omnis ea et natus consequatur labore deleniti et ratione.', 'Maiores et expedita error beatae beatae voluptas ut. Quia maxime dolorem natus omnis expedita velit. Distinctio accusamus est consequatur in libero.', '1', '6', '0', '0', '0', '0', '0', 'Omnis ea et natus consequatur labore deleniti et ratione.', null, '2020-03-21 02:46:06', '2020-03-27 08:27:30');
INSERT INTO `blog_articles` VALUES ('31', 'Eum et eaque fugiat excepturi eos.', 'Quia architecto expedita non magnam eum cumque. Voluptas quis in laborum qui. Enim et inventore provident quae. Nobis et rerum qui laborum ducimus et eligendi.', '1', '9', '0', '0', '0', '0', '0', 'Eum et eaque fugiat excepturi eos.', null, '2020-03-10 02:35:42', '2020-03-18 00:56:44');
INSERT INTO `blog_articles` VALUES ('32', 'Nulla exercitationem voluptatum et cupiditate vitae dolore laboriosam.', 'Qui id vel est at nam. Et nobis ipsum reiciendis dolor. Corporis consectetur sit laboriosam voluptatum ipsum dolorum.', '1', '9', '0', '0', '0', '0', '0', 'Nulla exercitationem voluptatum et cupiditate vitae dolore laboriosam.', null, '2020-03-01 18:33:05', '2020-03-12 12:29:34');
INSERT INTO `blog_articles` VALUES ('33', 'Soluta consequatur qui ut quibusdam.', 'Quia voluptatibus accusamus minima possimus. Ducimus et fugiat velit. Cum nihil amet quis autem ratione labore qui corrupti.', '1', '6', '0', '0', '0', '0', '0', 'Soluta consequatur qui ut quibusdam.', null, '2020-02-28 13:55:32', '2020-02-28 14:11:30');
INSERT INTO `blog_articles` VALUES ('34', 'Eaque voluptatem in ipsa esse non vel saepe.', 'Rem aut eos qui odit. Nulla vel qui voluptatum quisquam ut reiciendis. Eveniet quasi minus beatae suscipit. Aut debitis veritatis iure commodi.', '1', '6', '0', '0', '0', '0', '0', 'Eaque voluptatem in ipsa esse non vel saepe.', null, '2020-03-17 19:36:24', '2020-03-23 01:39:04');
INSERT INTO `blog_articles` VALUES ('35', 'Consectetur esse vel dolores qui.', 'Et earum officiis doloremque amet error cum. Exercitationem aut eum officiis consequatur quia consectetur. Sed officia cupiditate atque. Consequuntur accusantium eum qui quo molestiae est.', '1', '9', '0', '0', '0', '0', '0', 'Consectetur esse vel dolores qui.', null, '2020-03-08 11:15:06', '2020-03-10 10:05:18');
INSERT INTO `blog_articles` VALUES ('36', 'Ab soluta nesciunt iste quibusdam placeat.', 'Suscipit consequatur qui veritatis illo error et. Id cum numquam qui aut. Libero odio porro quis sit placeat nobis doloribus.', '1', '5', '0', '0', '0', '0', '0', 'Ab soluta nesciunt iste quibusdam placeat.', null, '2020-03-03 07:43:16', '2020-03-07 20:19:20');
INSERT INTO `blog_articles` VALUES ('37', 'Id numquam quam quasi aut maxime quia eligendi.', 'Id veniam voluptatibus quasi. Eos voluptates ut laborum non alias ullam. Ullam natus minima perspiciatis voluptatem voluptas consequuntur atque libero.', '1', '6', '0', '0', '0', '0', '0', 'Id numquam quam quasi aut maxime quia eligendi.', null, '2020-03-01 13:36:17', '2020-03-15 06:11:52');
INSERT INTO `blog_articles` VALUES ('38', 'Harum ipsum eligendi repellendus ut vel.', 'Suscipit tempore numquam rem voluptatem odio atque voluptatum. Quia est et iure eos. Ea molestiae saepe saepe excepturi aut. At dolorum sit voluptatem.', '1', '5', '0', '0', '0', '0', '0', 'Harum ipsum eligendi repellendus ut vel.', null, '2020-02-29 18:20:18', '2020-03-07 07:49:14');
INSERT INTO `blog_articles` VALUES ('39', 'Websocket协议的应用场景，解决了什么问题，列举你所了解的实现了websocket协议的项目或者软件', '服务器可以主动向客户端推送信息，客户端也可以主动向服务器发送信息，是真正的双向平等对话，属于服务器推送技术的一种。在 WebSocket API 中，浏览器和服务器只需要做一个握手的动作，然后，浏览器和服务器之间就形成了一条快速通道。两者之间就直接可以数据互相传送。', '1', '4', '0', '3', '0', '0', '0', '服务器可以主动向客户端推送信息，客户端也可以主动向服务器发送信息，是真正的双向平等对话，属于服务器推送技术的一种。在 WebSocket API 中，浏览器和服务器只需要做一个握手的动作，然后，浏览器和服务器之间就...', 'suscipit-vitae-ea-in-repellendus-rem-placeat', '2020-03-10 23:15:38', '2020-04-20 16:59:59');
INSERT INTO `blog_articles` VALUES ('40', 'Asperiores non totam sit non pariatur qui.', 'Ut id et voluptatem expedita recusandae blanditiis. Mollitia omnis soluta cupiditate doloremque quibusdam aliquam dolor molestiae. Quod ipsa omnis quaerat.', '1', '1', '0', '0', '0', '0', '0', 'Asperiores non totam sit non pariatur qui.', null, '2020-02-29 08:37:32', '2020-03-02 06:23:23');
INSERT INTO `blog_articles` VALUES ('41', 'Consequuntur non ut dolor modi voluptatibus incidunt.', 'Illum non facilis est ullam. Vel ducimus culpa et nihil sed optio. Eos provident vitae eius consectetur sunt. Culpa doloribus quis quam culpa id sed rerum. Aut autem sed sint fuga sint officia.', '1', '3', '0', '0', '0', '0', '0', 'Consequuntur non ut dolor modi voluptatibus incidunt.', null, '2020-03-05 07:36:44', '2020-03-07 12:09:49');
INSERT INTO `blog_articles` VALUES ('42', 'Repudiandae tempora minima ipsum perferendis possimus magni aperiam.', 'Asperiores ex et iusto amet amet. Rerum accusantium dicta molestiae architecto molestiae voluptatibus. Vel eos corporis aut facere explicabo. Voluptatem dolor ducimus qui soluta.', '1', '8', '0', '0', '0', '0', '0', 'Repudiandae tempora minima ipsum perferendis possimus magni aperiam.', null, '2020-03-05 18:54:03', '2020-03-18 07:43:15');
INSERT INTO `blog_articles` VALUES ('43', 'Rem ad quis vel praesentium tenetur cumque error.', 'Ut rerum enim ut saepe vel nulla. Aliquid ut consectetur esse. Minus nisi et omnis et minima ut iure. Eligendi rem explicabo odit atque quos et.', '1', '5', '0', '0', '0', '0', '0', 'Rem ad quis vel praesentium tenetur cumque error.', null, '2020-03-11 20:27:33', '2020-03-14 12:49:07');
INSERT INTO `blog_articles` VALUES ('44', 'Qui consequuntur id saepe a possimus doloremque vel maiores.', 'Qui vitae quod impedit aut veniam et ut consequatur. Nemo rerum quia voluptates ab. Sequi quam vitae ut autem voluptatem ipsum nulla. Alias maiores nam omnis ducimus. Id eos veritatis deleniti ut.', '1', '1', '0', '0', '0', '0', '0', 'Qui consequuntur id saepe a possimus doloremque vel maiores.', null, '2020-02-29 23:57:46', '2020-03-09 01:44:40');
INSERT INTO `blog_articles` VALUES ('45', 'Praesentium velit alias ipsam ut velit.', 'Voluptatibus est sunt voluptatem iure quis hic rerum. Nam et architecto iste omnis ut aperiam. Dolor aut est repudiandae.', '1', '1', '0', '0', '0', '0', '0', 'Praesentium velit alias ipsam ut velit.', null, '2020-02-29 09:04:23', '2020-03-07 11:14:07');
INSERT INTO `blog_articles` VALUES ('46', 'Itaque assumenda amet aspernatur qui eligendi sint ipsum.', 'Dolores nobis adipisci molestiae corporis porro laudantium totam. Quia et esse eveniet. Consequuntur eum quos ratione suscipit deleniti porro non ut.', '1', '1', '0', '0', '0', '0', '0', 'Itaque assumenda amet aspernatur qui eligendi sint ipsum.', null, '2020-02-29 18:17:00', '2020-03-15 15:05:02');
INSERT INTO `blog_articles` VALUES ('47', 'Incidunt pariatur sit ducimus nobis.', 'Assumenda ut sit quaerat optio. Sunt suscipit nesciunt non. Et dolores sit qui culpa voluptatem repellat. Dolores optio omnis aliquid itaque quo.', '1', '10', '0', '0', '0', '0', '0', 'Incidunt pariatur sit ducimus nobis.', null, '2020-02-29 23:52:09', '2020-03-03 07:09:00');
INSERT INTO `blog_articles` VALUES ('48', 'Omnis repellendus accusantium deserunt ut mollitia corrupti.', 'Culpa eos dolorem velit aut. Commodi est incidunt vitae dolor quas molestiae neque. Doloremque voluptatem nulla numquam doloremque dolores. Quasi laudantium magnam ut voluptatum et porro sit.', '1', '2', '0', '0', '0', '0', '0', 'Omnis repellendus accusantium deserunt ut mollitia corrupti.', null, '2020-03-25 16:06:06', '2020-03-26 07:27:44');
INSERT INTO `blog_articles` VALUES ('49', 'Numquam magnam recusandae quis sit expedita odit aut.', 'Ab enim voluptas nihil ex quia dignissimos. Et ipsum quibusdam omnis alias et deleniti et. Delectus nisi ut vel qui. Cum quis aut eaque quia iusto a ullam molestiae.', '1', '6', '0', '0', '0', '0', '0', 'Numquam magnam recusandae quis sit expedita odit aut.', null, '2020-03-01 16:46:42', '2020-03-08 09:36:35');
INSERT INTO `blog_articles` VALUES ('50', 'Qui ex nemo possimus doloribus praesentium.', 'Consequatur minus assumenda dolorum nihil autem. Facere eligendi eos consequuntur enim. Ut odit commodi non est amet.', '1', '5', '0', '0', '0', '0', '0', 'Qui ex nemo possimus doloribus praesentium.', null, '2020-02-28 13:27:46', '2020-02-28 19:31:24');
INSERT INTO `blog_articles` VALUES ('51', 'Nisi ea id quia qui.', 'Exercitationem expedita voluptatem voluptatem quo. Quaerat ex dolor modi soluta. Nihil debitis accusantium perferendis numquam. Possimus doloribus officia sit quae recusandae.', '1', '10', '0', '0', '0', '0', '0', 'Nisi ea id quia qui.', null, '2020-03-10 21:23:21', '2020-03-15 01:57:43');
INSERT INTO `blog_articles` VALUES ('52', 'Rerum explicabo sequi voluptates qui at aliquid.', 'Hic cupiditate cum numquam quae est. Quo provident deserunt dignissimos accusantium veniam quaerat saepe sequi. Perferendis est beatae error hic ex nihil. Tempore quia ipsam atque et commodi dicta.', '1', '5', '0', '0', '0', '0', '0', 'Rerum explicabo sequi voluptates qui at aliquid.', null, '2020-03-06 03:24:10', '2020-03-11 22:58:22');
INSERT INTO `blog_articles` VALUES ('53', 'Iusto velit incidunt rerum amet.', 'Sunt libero et molestiae eos sunt. Rerum fugit maiores voluptas. Hic suscipit pariatur corrupti sunt libero dolor.', '1', '2', '0', '0', '0', '0', '0', 'Iusto velit incidunt rerum amet.', null, '2020-02-29 23:41:26', '2020-03-08 06:21:53');
INSERT INTO `blog_articles` VALUES ('54', 'Vitae velit quisquam quia.', 'Voluptates iusto architecto soluta esse quia. Sequi voluptatum voluptatem fugit tempore quaerat culpa voluptatem aut. Sit non dolore at a rerum quia corporis.', '1', '6', '0', '0', '0', '0', '0', 'Vitae velit quisquam quia.', null, '2020-03-17 02:51:47', '2020-03-25 02:17:55');
INSERT INTO `blog_articles` VALUES ('55', 'Repellendus in ut delectus quidem.', 'Eius dolores eum dolorem nihil molestiae neque quia. Quaerat doloremque eum quos labore voluptatem. Qui quibusdam doloribus mollitia non quam quod omnis. Voluptatibus quo odit et voluptatem.', '1', '8', '0', '0', '0', '0', '0', 'Repellendus in ut delectus quidem.', null, '2020-03-08 04:04:25', '2020-03-22 06:37:48');
INSERT INTO `blog_articles` VALUES ('56', 'Consequuntur laborum perferendis asperiores minus similique aut dolor ducimus.', 'Minus repellendus reiciendis qui. Molestias ut sed recusandae aut quia reprehenderit vero. Aliquam aliquam magni perspiciatis quae pariatur.', '1', '9', '0', '0', '0', '0', '0', 'Consequuntur laborum perferendis asperiores minus similique aut dolor ducimus.', null, '2020-03-10 18:34:39', '2020-03-14 03:33:33');
INSERT INTO `blog_articles` VALUES ('57', 'Sit architecto omnis atque aut cumque.', 'Et libero ut sunt qui perferendis fugit amet dolorum. Nihil recusandae nihil esse quam. Enim reiciendis ullam id quia. Qui sit qui aut quae provident non.', '1', '10', '0', '0', '0', '0', '0', 'Sit architecto omnis atque aut cumque.', null, '2020-02-29 16:57:37', '2020-03-11 00:18:17');
INSERT INTO `blog_articles` VALUES ('58', 'Exercitationem at ex quaerat autem facilis deleniti.', 'Et perferendis impedit deserunt autem. Autem aliquam aut dolores asperiores iste minima. Voluptatem error ad dolorum facere est esse. Doloribus dolor laborum veniam rerum rem quae vitae dolorem.', '1', '5', '0', '0', '0', '0', '0', 'Exercitationem at ex quaerat autem facilis deleniti.', null, '2020-03-14 02:20:57', '2020-03-16 00:02:14');
INSERT INTO `blog_articles` VALUES ('59', 'Corporis error officia doloribus quibusdam quia.', 'Laborum accusantium ratione ab consequatur. Aut repellendus possimus quis qui. Illum qui aperiam est officiis.', '1', '6', '0', '0', '0', '0', '0', 'Corporis error officia doloribus quibusdam quia.', null, '2020-03-10 06:55:48', '2020-03-26 07:11:13');
INSERT INTO `blog_articles` VALUES ('60', 'Incidunt rerum aspernatur dolorum fugit porro.', 'Nulla a ratione hic. Et autem odit qui et labore perspiciatis. Est quo odit laboriosam id quis ex error consequatur. Aut accusantium excepturi quo ipsam laboriosam.', '1', '2', '0', '0', '0', '0', '0', 'Incidunt rerum aspernatur dolorum fugit porro.', null, '2020-03-04 19:32:32', '2020-03-07 04:57:23');
INSERT INTO `blog_articles` VALUES ('61', 'Unde accusantium optio rerum est.', 'Libero fuga dolorem iusto. Delectus architecto autem minima delectus doloremque sunt cumque. Voluptatem repellat ullam est ut distinctio.', '1', '5', '0', '0', '0', '0', '0', 'Unde accusantium optio rerum est.', null, '2020-03-11 06:30:08', '2020-03-15 15:54:38');
INSERT INTO `blog_articles` VALUES ('62', 'Qui reprehenderit doloribus iste omnis.', 'Hic voluptatibus maxime rerum distinctio quibusdam quod. Ea similique dolor itaque reiciendis neque reiciendis perspiciatis. Voluptatem enim reprehenderit rem minus.', '1', '8', '0', '0', '0', '0', '0', 'Qui reprehenderit doloribus iste omnis.', null, '2020-02-28 21:08:06', '2020-03-09 16:50:12');
INSERT INTO `blog_articles` VALUES ('63', 'PHP有哪几种运行模式，并说明每种模式应用场景', '1. cgi全称“通用网关接口”(Common Gateway Interface)， 它可以让一个客户端，从浏览器向Web服务器上的程序请求数据，是客户端和程序之间传输数据的一种标准，另外CGI独立于任何语言，所以可以用任何一种语言编写，只要这种语言具有标准输入、输出和环境变量。如php,perl,tcl等。CGI针对每个用户请求都要开单独的子进程去维护，执行结束处理掉这个进程。典型的fork-and-execute方式\r\n\r\n2. fastcgi，根据1中cgi的特性，可以知道消耗很大，如果很多用户请求，则会申请很多个子进程。。这时候出现了FastCGI。FastCGI 像是一个常驻 (long-live) 型的 CGI，它可以一直执行着，只要激活后，不会每次都要花费时间去 fork 一次 (这是 CGI 最为人诟病的 fork-and-execute 模式)。这个是当下用的最多的了。。linux+nginx+php+mysql\r\n\r\n	FastCGI的工作原理是：\r\n\r\n	(1)、Web Server启动时载入FastCGI进程管理器【PHP的FastCGI进程管理器是PHP-FPM(php-FastCGI Process Manager)】（nginx);\r\n\r\n	(2)、FastCGI进程管理器自身初始化，启动多个CGI解释器进程 (在任务管理器中可见多个php-cgi.exe)并等待来自WebServer的连接。\r\n\r\n	(3)、当客户端请求到达Web Server时，FastCGI进程管理器选择并连接到一个CGI解释器。Web server将CGI环境变量和标准输入发送到FastCGI子进程php-cgi。\r\n\r\n	(4)、FastCGI子进程完成处理后将标准输出和错误信息从同一连接返回Web Server。当FastCGI子进程关闭连接时，请求便告处理完成。FastCGI子进程接着等待并处理来自FastCGI进程管理器（运行在 WebServer中）的下一个连接。在正常的CGI模式中，php-cgi或 .exe在此便退出了。\r\n\r\n	在CGI模式中，你可以想象 CGI通常有多慢。每一个Web请求PHP都必须重新解析php.ini、重新载入全部dll扩展并重初始化全部数据结构。使用FastCGI，所有这些都只在进程启动时发生一次。一个额外的好处是，持续数据库连接(Persistent database connection)可以工作。\r\n\r\n3. module形式一般用于apache，模块模式是以mod_php5模块的形式集成，此时mod_php5模块的作用是接收Apache传递过来的PHP文件请求，并处理这些请求，然后将处理后的结果返回给Apache。\r\n\r\n4. cli模式。命令行执行php，一般不用。我们在linux下经常使用 \"php -m\"查找PHP安装了那些扩展就是PHP命令行运行模式；也可以直接命令行执行php xxx.php', '1', '4', '0', '1', '0', '0', '0', '1. cgi全称“通用网关接口”(Common Gateway Interface)， 它可以让一个客户端，从浏览器向Web服务器上的程序请求数据，是客户端和程序之间传输数据的一种标准，另外CGI独立于任何语言，所以可以用任何一种语言编写，...', 'et-dolores-aspernatur-ut-saepe', '2020-03-19 18:18:54', '2020-03-30 15:28:00');
INSERT INTO `blog_articles` VALUES ('64', 'Minus dolorem eum eius laudantium et.', 'Quia quae et animi. Aut nobis et suscipit soluta. Provident aut iste esse ullam voluptatem. Labore eius voluptatem nihil ipsam rerum voluptatibus.', '1', '1', '0', '0', '0', '0', '0', 'Minus dolorem eum eius laudantium et.', null, '2020-03-18 03:45:30', '2020-03-21 01:24:40');
INSERT INTO `blog_articles` VALUES ('65', 'Ab corrupti asperiores pariatur ad.', 'Quia tempore id consequatur et explicabo beatae amet. Labore aut error sequi alias vel ut. Laboriosam vero architecto aut sit. Laboriosam aut praesentium architecto hic nemo laboriosam.', '1', '7', '0', '0', '0', '0', '0', 'Ab corrupti asperiores pariatur ad.', null, '2020-02-29 21:39:19', '2020-03-24 01:19:44');
INSERT INTO `blog_articles` VALUES ('66', '简述PHP类的自动加载原理和实现方式', 'php的自动加载：在php5以前，我们要用某个类或类的方法，那必须include或者require，之后才能使用，每次用一个类，都需要写一条include，麻烦php作者想简单点，最好能引用一个类时，如果当前没有include进来，系统能自动去找到该类，自动引进~于是：autoload()函数应运而生。通常放在应用程序入口类里面，比如discuz中，放在class_core.php中。\r\n先讲浅显的例子：\r\n\r\n1. 第一种情况：文件A.php中内容如下\r\n\r\n```\r\n<?php\r\nclass A{\r\n\r\n  public function __construct(){\r\n\r\n		 echo \'fff\';\r\n\r\n  }\r\n\r\n}\r\n\r\n?>\r\n```\r\n\r\n文件C.php 中内容如下：\r\n\r\n```\r\n<?php   \r\nfunction __autoload($class)   \r\n{   \r\n$file = $class . \'.php\';   \r\nif (is_file($file)) {   \r\n	require_once($file);   \r\n}   \r\n}   \r\n$a = new A(); //这边会自动调用autoload，引入A.php文件\r\n\r\n?>\r\n```\r\n\r\n2. 第二种情况：有时我希望能自定义autoload，并且希望起一个更酷的名字loader，则C.php改为如下：\r\n\r\n```\r\n<?php\r\nfunction loader($class)\r\n{\r\n	$file = $class . \'.php\';\r\n	if (is_file($file)) {\r\n		require_once($file);\r\n	}\r\n}\r\nspl_autoload_register(\'loader\'); //注册一个自动加载方法，覆盖原有的__autoload\r\n$a = new A();\r\n?>\r\n```\r\n\r\n3. 第三种情况：我希望高大上一点，用一个类来管理自动加载\r\n\r\n```\r\n<?php\r\n\r\n\r\nclass Loader\r\n{\r\n    public static function loadClass($class)\r\n    {\r\n        $file = $class . \'.php\';\r\n        if (is_file($file)) {\r\n            require_once($file);\r\n        }\r\n    }\r\n}\r\n\r\nspl_autoload_register(array(\'Loader\', \'loadClass\'));\r\n\r\n$a = new A();\r\n```\r\n\r\n\r\n当前为最佳形式。\r\n通常我们将spl_autoload_register()放在入口脚本，即一开始就引用进来。比如下面discuz的做法。\r\n```\r\nif (function_exist(\'spl_autoload_register\')) {\r\n\r\nspl_autoload_register(array(\'core\', \'autoload\'));  //如果是php5以上，存在注册函数，则注册自己写的core类中的autoload为自动加载函数\r\n\r\n} else {\r\n\r\nfunction __autoload($class)\r\n{         //如果不是，则重写php原生函数__autoload函数，让其调用自己的core中函数。\r\n\r\nreturn core::autoload($class);\r\n\r\n}\r\n\r\n}\r\n```\r\n\r\n这段扔在入口文件最前面，自然是极好的~', '1', '4', '0', '5', '0', '0', '0', 'php的自动加载：在php5以前，我们要用某个类或类的方法，那必须include或者require，之后才能使用，每次用一个类，都需要写一条include，麻烦php作者想简单点，最好能引用一个类时，如果当前没有include进来，系统能...', 'cumque-non-et-sit-id', '2020-03-12 17:08:28', '2020-03-31 10:29:36');
INSERT INTO `blog_articles` VALUES ('67', 'Officiis vitae modi earum pariatur et aut.', 'Recusandae dolore fugit aliquid. Exercitationem magnam vel voluptatem rem eos. Quidem tenetur nesciunt voluptas. Aut qui consequatur sed nemo perferendis.', '1', '10', '0', '0', '0', '0', '0', 'Officiis vitae modi earum pariatur et aut.', null, '2020-03-02 21:30:58', '2020-03-06 10:04:03');
INSERT INTO `blog_articles` VALUES ('68', 'Cum consectetur quia quae quas libero dicta sed eum.', 'Maxime eum nam doloremque. Error placeat repellat sint natus nesciunt. Eveniet eligendi quo accusamus voluptas qui dicta ipsum. Odit inventore eos rerum sed perferendis aliquid.', '1', '10', '0', '0', '0', '0', '0', 'Cum consectetur quia quae quas libero dicta sed eum.', null, '2020-03-01 10:50:46', '2020-03-03 03:46:32');
INSERT INTO `blog_articles` VALUES ('69', '简述Laravel应用的生命周期', '```\r\n加载框架的composer依赖\r\nrequire __DIR__.\'/../vendor/autoload.php\';\r\n\r\n获得服务容器\r\n$app = require_once __DIR__.\'/../bootstrap/app.php\';\r\n\r\n通过服务容器解析获得HTTP内核实例\r\n$kernel = $app->make(Illuminate\\Contracts\\Http\\Kernel::class);\r\n\r\n调用内核的handle方法处理请求，并返回一个响应\r\n$response = $kernel->handle(\r\n	$request = Illuminate\\Http\\Request::capture()\r\n);\r\n\r\n发送响应\r\n$response->send();\r\n\r\n$kernel->terminate($request, $response);\r\n```', '1', '4', '0', '2', '0', '0', '0', '``` 加载框架的composer依赖 require __DIR__.\'/../vendor/autoload.php\';  获得服务容器 $app = require_once __DIR__.\'/../bootstrap/app.php\';  通过服务容器解析获得HTTP内核实例 $kernel = $app->make(Illumina...', 'ea-autem-explicabo-odit-aut-molestiae-iure-quos', '2020-02-28 09:26:34', '2020-04-15 13:59:56');
INSERT INTO `blog_articles` VALUES ('70', '如何实现多机器session共享？', '先了解一下为什么会出现这种session共享的解决方案？\r\n\r\n* 随着互联网公司的项目在微服务和分布式的环境下进行的搭建，导致一个项目可能分别部署在几个甚至很多的服务器集群下，此时就会出现一个问题\r\n* 当用户进行一个session会话的时候，比如一个用户去登录项目，一般的大公司的项目都是有Nginx进行反向代理的，但是这里简单列举一下Nginx常用的几种反向代理策略：1.轮询策略，2. 权重比例策略，3. ip_hash策略，4. 还可以自定义的策略，在Nginx的反向代理下，一般会把用户的请求分发到不同的服务器上，但是如果用户请求的请求是存放在该请求的服务器A上，那么该用户的sessionID就存储在该服务器上JVM的一个ConcurrentHashmap中，以sessionID为key。\r\n* 但是如果此时用户请求的一个服务模块可能需要调用到服务器B，当用户发起请求的时候，此时的服务器B上并没有存储该用户的sessionID，所以就会再次让用户进行一个登陆操作。还有可能会导致用户本来就想完成一个下单操作，但是却还登陆了好几次的情况。\r\n* 所以session共享方案在分布式环境和微服务系统下，显得尤其重要。\r\n\r\n**解决方案一：基于Nginx的ip_hash 负载均衡**\r\n* 其实就是对请求过来的ip地址对你的多少台可用的服务器进行取模，然后就会把你的请求通过Nginx的反向代理给分发到对应的服务器上。（这里会把可用的服务器放到一个数组中，如果取模得到的结果是几，就把请求分到服务器数组中的下标为几 的服务器上）\r\n* 具体实现：\r\n\r\n需要你在Nginx.conf文件中进行对应的修改，根据自己的可用服务器\r\n```\r\nupstream backend{\r\n    ip_hash;\r\n    server 192.168.128.1:8080 ;\r\n    server 192.168.128.2:8080 ;\r\n    server 192.168.128.3:8080 down;\r\n    server 192.168.128.4:8080 down;\r\n \r\n}\r\nserver {\r\n    listen 8081;\r\n    server_name test.csdn.net;\r\n    root /home/system/test.csdn.net/test;\r\n    location ^~ /Upload/upload {\r\n    proxy_pass http://backend;\r\n \r\n    }\r\n \r\n}\r\n```\r\n**解决方案二：基于Tomcat的session复制**\r\n* 这个解决方案其实就是当用户请求的时候，把产生的sessionID给复制到系统所有的服务器中，这样就能保证当用户请求的时候从服务器A可能调用到服务器B上的模块的时候，也能保证服务B也有该用户的sessionID，这样就不会再次让用户进行再次登录操作了。也就解决问题了。\r\n\r\n**解决方案三：使用Redis做缓存session的统一缓存**\r\n* 这种方案呢，其实就是把每次用户的请求的时候生成的sessionID给放到Redis的服务器上。然后在基于Redis的特性进行设置一个失效时间的机制，这样就能保证用户在我们设置的Redis中的session失效时间内，都不需要进行再次登录。\r\n\r\n**解决方案四：其实还可以把session放到cookie中去，因为每次用户请求的时候，都会把自己的cookie放到请求中，所以这样就能保证每次用户请求的时候都能保证用户在分布式环境下，也不会在进行二次登陆。**\r\n\r\n————————————————\r\n版权声明：本文为CSDN博主「依本多情」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/qq_36520235/java/article/details/87830929', '1', '4', '0', '3', '0', '0', '0', '先了解一下为什么会出现这种session共享的解决方案？  * 随着互联网公司的项目在微服务和分布式的环境下进行的搭建，导致一个项目可能分别部署在几个甚至很多的服务器集群下，此时就会出现一个问题 * 当用户进行一个...', 'quas-numquam-maxime-voluptas-vero-omnis-odit-iste', '2020-02-29 12:42:59', '2020-04-02 15:08:51');
INSERT INTO `blog_articles` VALUES ('71', 'Necessitatibus aspernatur itaque dolor porro voluptatem veritatis sed.', 'Libero voluptatum debitis saepe ipsum. Blanditiis voluptatem voluptas deleniti nulla. Et asperiores consequatur fuga deleniti sed molestiae.', '1', '2', '0', '0', '0', '0', '0', 'Necessitatibus aspernatur itaque dolor porro voluptatem veritatis sed.', null, '2020-02-28 00:16:39', '2020-02-29 02:15:41');
INSERT INTO `blog_articles` VALUES ('72', 'Sunt distinctio quam occaecati eligendi a.', 'Consequatur odit aut sunt porro dignissimos voluptatem dolorem. Quae animi aspernatur commodi rerum facere qui tempore magnam. Sint ut et rerum.', '1', '9', '0', '0', '0', '0', '0', 'Sunt distinctio quam occaecati eligendi a.', null, '2020-03-11 03:01:35', '2020-03-27 12:32:27');
INSERT INTO `blog_articles` VALUES ('73', 'Facilis accusantium dolores et cum voluptatem cupiditate.', 'Sit dolor explicabo eos temporibus et ut. Aut sequi minima doloribus occaecati. Odit perspiciatis blanditiis dolorem commodi pariatur quod est.', '1', '6', '0', '0', '0', '0', '0', 'Facilis accusantium dolores et cum voluptatem cupiditate.', null, '2020-03-18 05:40:30', '2020-03-26 09:53:40');
INSERT INTO `blog_articles` VALUES ('74', 'Eaque officia deleniti minima omnis quis a.', 'Iusto quasi id ad excepturi iure. At aut dicta autem maiores consequuntur ea. Modi et velit quidem occaecati rerum ut autem.', '1', '3', '0', '0', '0', '0', '0', 'Eaque officia deleniti minima omnis quis a.', null, '2020-03-06 17:44:15', '2020-03-07 11:35:47');
INSERT INTO `blog_articles` VALUES ('75', 'Alias qui voluptatem iusto sapiente et unde.', 'Laudantium ut quia non autem saepe. Temporibus est sequi consequatur optio. Vitae nihil deserunt quae rerum.', '1', '8', '0', '0', '0', '0', '0', 'Alias qui voluptatem iusto sapiente et unde.', null, '2020-03-10 23:10:24', '2020-03-25 02:14:26');
INSERT INTO `blog_articles` VALUES ('76', 'Est esse vero unde aliquam.', 'Et omnis officia autem consequuntur. Dolor eum omnis accusantium consequatur sapiente est. Sunt et enim veniam maxime pariatur. Ut maxime quia earum et velit commodi.', '1', '7', '0', '0', '0', '0', '0', 'Est esse vero unde aliquam.', null, '2020-03-08 08:21:07', '2020-03-20 05:48:18');
INSERT INTO `blog_articles` VALUES ('77', 'Iste earum sed et quis et et.', 'Est veritatis officiis et incidunt blanditiis. Commodi nihil rerum qui dolores harum consequatur. Eum non adipisci esse earum expedita in eos recusandae. Repudiandae ut omnis quos rerum.', '1', '7', '0', '0', '0', '0', '0', 'Iste earum sed et quis et et.', null, '2020-02-28 00:15:24', '2020-03-16 06:21:29');
INSERT INTO `blog_articles` VALUES ('78', 'Tenetur hic animi quae sunt quod quo consequuntur illum.', 'Nobis harum ad vero nihil unde doloremque quis. Quis et et iste velit necessitatibus dignissimos doloremque. Enim possimus adipisci repellat tempore. Totam est et esse aut asperiores enim dicta.', '1', '3', '0', '0', '0', '0', '0', 'Tenetur hic animi quae sunt quod quo consequuntur illum.', null, '2020-03-10 18:06:44', '2020-03-13 10:29:33');
INSERT INTO `blog_articles` VALUES ('79', '请阐述opcache原理', 'Zend引擎必须从文件系统读取文件、扫描其词典和表达式、解析文件、创建要执行的计算机代码（称为Opcode）,\r\n最后执行Opcode。每一次请求PHP脚本都会执行一遍以上步骤，如果PHP源代码没有变化，那么Opcode也不会\r\n变化，显然没有必要每次都重行生成Opcode，结合在Web中无所不在的缓存机制，我们可以把Opcode缓存下来,\r\n以后直接访问缓存的Opcode岂不是更快，启用Opcode缓存之后的流程图如下所示：\r\n\r\n![](http://cdn.pic1.54php.cn/20160905/ddaf48406b019c5e856811af955e2478.jpeg?imageView/2/w/600)', '1', '4', '0', '1', '0', '0', '0', 'Zend引擎必须从文件系统读取文件、扫描其词典和表达式、解析文件、创建要执行的计算机代码（称为Opcode）, 最后执行Opcode。每一次请求PHP脚本都会执行一遍以上步骤，如果PHP源代码没有变化，那么Opcode也不会 变化...', 'et-libero-dolorum-saepe-praesentium-ipsa', '2020-03-09 20:45:07', '2020-03-30 16:01:47');
INSERT INTO `blog_articles` VALUES ('80', 'Qui sint est eos pariatur et et perferendis.', 'Ipsa nesciunt voluptas quia maxime qui dolor. Repellendus fugit non voluptatem aut aut aut aliquid fugiat. Doloremque laboriosam repudiandae aut quis iure et unde.', '1', '8', '0', '0', '0', '0', '0', 'Qui sint est eos pariatur et et perferendis.', null, '2020-03-04 05:39:32', '2020-03-04 21:24:28');
INSERT INTO `blog_articles` VALUES ('81', 'Dolorem sed architecto id quaerat.', 'Pariatur laborum sunt debitis voluptas. Consequatur iusto fugiat vitae dolorum incidunt. Sit iure odio deserunt eum eligendi minima modi.', '1', '8', '0', '0', '0', '0', '0', 'Dolorem sed architecto id quaerat.', null, '2020-03-01 11:58:53', '2020-03-14 04:19:04');
INSERT INTO `blog_articles` VALUES ('82', 'Dolore laborum et corrupti deserunt qui corrupti sint.', 'Est doloribus ut sed corporis minima. Et quo tempora fuga eligendi iure voluptatibus. Nemo in quo voluptatem sit ab provident accusamus.', '1', '2', '0', '0', '0', '0', '0', 'Dolore laborum et corrupti deserunt qui corrupti sint.', null, '2020-03-09 10:37:52', '2020-03-17 18:33:00');
INSERT INTO `blog_articles` VALUES ('83', 'Magni aspernatur rerum perferendis numquam voluptatum rerum voluptas.', 'Voluptates ut excepturi qui quas sapiente. Nihil eum est omnis voluptas repellat. Exercitationem ullam quo voluptatem temporibus quasi quod.', '1', '6', '0', '0', '0', '0', '0', 'Magni aspernatur rerum perferendis numquam voluptatum rerum voluptas.', null, '2020-02-28 05:54:40', '2020-02-29 14:05:12');
INSERT INTO `blog_articles` VALUES ('84', 'MySQL里有2000w数据，redis中只存20w的数据，如何保证redis中的数据都是热点数据？', 'Redis内存数据集大小上升到一定大小的时候，就会施行数据淘汰策略。\r\n\r\n相关知识：Redis提供6种数据淘汰策略：\r\n\r\nvolatile-lru：从已设置过期时间的数据集（server.db[i].expires）中挑选最近最少使用的数据淘汰\r\n\r\nvolatile-ttl：从已设置过期时间的数据集（server.db[i].expires）中挑选将要过期的数据淘汰\r\n\r\nvolatile-random：从已设置过期时间的数据集（server.db[i].expires）中任意选择数据淘汰\r\n\r\nallkeys-lru：从数据集（server.db[i].dict）中挑选最近最少使用的数据淘汰\r\n\r\nallkeys-random：从数据集（server.db[i].dict）中任意选择数据淘汰\r\n\r\nno-enviction（驱逐）：禁止驱逐数据', '1', '4', '0', '2', '0', '0', '0', 'Redis内存数据集大小上升到一定大小的时候，就会施行数据淘汰策略。  相关知识：Redis提供6种数据淘汰策略：  volatile-lru：从已设置过期时间的数据集（server.db[i].expires）中挑选最近最少使用的数据淘汰  volat...', 'autem-omnis-et-blanditiis-soluta-enim-perferendis-exercitationem', '2020-03-11 02:29:09', '2020-04-29 10:00:26');
INSERT INTO `blog_articles` VALUES ('85', 'HTTP生命周期', '**HTTP的工作流程如下 :**\r\n1. 地址解析\r\n（1）Chrome搜索自身的DNS缓存，看有没有对应该域名的IP地址，这个缓存的时间只有一分钟。\r\n（查看浏览器自身缓存：chrome://net-internals/#dns）\r\n（2）如果在浏览器没有找到缓存或者缓存已经失效，则搜索操作系统自身的DNS缓存。\r\n（3）如果在操作系统中也没有找到缓存或者缓存已经失效。则读取本地的host文件。\r\n（host文件：window在System32\\drivers\\etc；mac在finder中按快捷键组合 Shift+Command+G 三个组合按键，并输入 Hosts 文件的所在路径：/etc/hosts）\r\n（4）如果在host文件中找不到对应的配置，浏览器则发起一个DNS的系统调用。\r\n（5）主机向本地域名服务器（宽带运营商服务器）发出查询（主机向本地域名服务器的查询一般是递归查询）。\r\n	① 本地域名服务器查看本身缓存。\r\n	② 如果本地域名服务器没有该域名的缓存，则发起一个迭代DNS解析的请求。\r\n	A 本地域名服务器会向根域名服务器发送迭代查询请求报文，查询域名对应的IP地址。如果根域名服务器知道，则给出IP地址；否则，根域名服务器会给出com域的顶级域名服务器的IP地址，让本地域名服务器再向顶级域名服务器查询。\r\n	B 本地域名服务器向顶级域名服务器发送迭代查询请求报文，查询域名对应的IP地址。如果顶级域名服务器知道，则给出IP地址；否则，顶级域名服务器会给出mshanzi.com域的权限域名服务器的IP地址，让本地域名服务器再向权限域名服务器查询。\r\n	C 到了mshanzi.com域的权限域名服务器（域名注册商的地址，例如万网），拿到www.mshanzi.com对应的IP地址。\r\n	③ 本地域名服务器把结果返回操作系统内核同时缓存起来。\r\n	④ 操作系统内核把结果返回浏览器。\r\n	⑤ 最后浏览器拿到了mshanzi.com对应的IP地址。\r\n\r\n2. 封装HTTP 请求\r\n       这一步把上面写的 URL 以及本机的一些信息封装成一个 HTTP 请求数据包\r\n3. 封装 TCP 包\r\n       第三步就是封装 TCP 包 , 建立 TCP 连接 , 也就是常说的\"三次握手\" . 由于HTTP位于最上层的应用层 , 所以HTTP在工作之前要由 TCP 和 IP 协议建立网络连接 , 这就是TCP/IP协议族 , 因此互联网又称为 TCP/IP 网络 .\r\n4. 客户端发送请求命令\r\n       第四步就是在连接建立之后 , 客户端发送 HTTP 请求到服务端与请求相关的信息都会包含在请求头和请求体中发送给服务器端 .\r\n5. 服务器端响应\r\n       服务器端在收到请求之后 , 根据客户端的请求发送给客户端相应的信息 , 相关的响应信息都会放在响应头和响应体中 .\r\n关闭连接\r\n       服务器端在发送完响应之后 , 就会关闭连接 , 如果过客户端的请求的头部信息中有 Connection-alive , 那么客户端在响应完这个请求之后不会关闭连接 , 知道客户端的所有请求都响应完毕 , 才会关闭连接 , 这样大大节省了带宽和 IO 资源 .\r\n\r\n原文地址：https://blog.csdn.net/zhongshanxian/article/details/80858884', '1', '14', '0', '4', '0', '0', '0', '**HTTP的工作流程如下 :** 1. 地址解析 （1）Chrome搜索自身的DNS缓存，看有没有对应该域名的IP地址，这个缓存的时间只有一分钟。 （查看浏览器自身缓存：chrome://net-internals/#dns） （2）如果在浏览器没有找到...', 'ratione-asperiores-est-eos-minus', '2020-03-05 04:58:17', '2020-04-10 10:54:59');
INSERT INTO `blog_articles` VALUES ('86', 'Nesciunt sed est et.', 'Nihil earum et et ex aut. Est blanditiis repudiandae rerum ducimus qui. Praesentium omnis qui iusto ut hic. Quae voluptates adipisci veniam enim ut.', '1', '8', '0', '0', '0', '0', '0', 'Nesciunt sed est et.', null, '2020-02-28 05:07:45', '2020-03-03 00:00:11');
INSERT INTO `blog_articles` VALUES ('87', 'Sint fugit quae voluptatem est.', 'Pariatur quos ab quis quod rerum quis. A voluptatem nostrum iure perspiciatis. Ut officiis expedita aut dolores quis dolorem voluptatem occaecati. Doloremque rerum harum rem rerum.', '1', '10', '0', '0', '0', '0', '0', 'Sint fugit quae voluptatem est.', null, '2020-03-11 21:24:13', '2020-03-13 00:23:16');
INSERT INTO `blog_articles` VALUES ('88', 'Sint nihil vel aut facilis.', 'Doloribus nesciunt eum ratione rerum aut quaerat. Nisi praesentium nemo ab molestias perferendis dolores. Non architecto explicabo facere magni ullam.', '1', '10', '0', '0', '0', '0', '0', 'Sint nihil vel aut facilis.', null, '2020-03-11 21:28:43', '2020-03-26 10:20:04');
INSERT INTO `blog_articles` VALUES ('89', 'Tempore illum quo beatae sed.', 'Ad quia et tempora error molestias. Officiis ex odio ratione quod quae iste esse libero. Velit necessitatibus aliquid voluptas. Vel velit nulla unde error.', '1', '6', '0', '0', '0', '0', '0', 'Tempore illum quo beatae sed.', null, '2020-02-29 15:27:15', '2020-03-03 13:05:33');
INSERT INTO `blog_articles` VALUES ('90', 'Facilis quia id et molestias beatae.', 'Reprehenderit sed aut deleniti fuga distinctio reiciendis officia et. Et alias reprehenderit architecto blanditiis possimus numquam. Iste accusamus laudantium explicabo.', '1', '1', '0', '0', '0', '0', '0', 'Facilis quia id et molestias beatae.', null, '2020-03-03 13:39:01', '2020-03-09 00:17:16');
INSERT INTO `blog_articles` VALUES ('91', 'Harum numquam autem illum perferendis sit.', 'Laudantium qui veritatis aut nam optio autem dolorum. Rem ducimus voluptatum saepe animi cupiditate modi veniam culpa. Impedit fugiat nostrum rerum nobis et placeat ex.', '1', '7', '0', '0', '0', '0', '0', 'Harum numquam autem illum perferendis sit.', null, '2020-03-01 08:01:54', '2020-03-01 22:16:49');
INSERT INTO `blog_articles` VALUES ('92', 'Nam quos ut velit hic eos hic ipsa.', 'Recusandae ratione error reiciendis. Sit voluptates doloribus est nemo explicabo nihil commodi ut. Commodi et voluptatem dolor sed id quos. Id a enim quam et iure necessitatibus autem.', '1', '7', '0', '0', '0', '0', '0', 'Nam quos ut velit hic eos hic ipsa.', null, '2020-02-27 19:33:37', '2020-03-04 01:28:11');
INSERT INTO `blog_articles` VALUES ('93', 'Voluptates et accusamus nobis consectetur repudiandae voluptas in quia.', 'Illum qui neque iure sit ea id suscipit. Vitae nihil velit reprehenderit et repellat voluptatem ad quia. Molestias ut consequuntur voluptas amet. Facere quis quae et aliquam quia minus.', '1', '3', '0', '0', '0', '0', '0', 'Voluptates et accusamus nobis consectetur repudiandae voluptas in quia.', null, '2020-03-17 12:18:23', '2020-03-20 10:08:12');
INSERT INTO `blog_articles` VALUES ('94', 'Et nihil tempore quo sunt quos voluptatem hic.', 'Tempora doloribus a laudantium dolorum. Quaerat tenetur non optio sunt illum recusandae eum ea. Ipsa maxime rerum eius vel dolor voluptate. In maiores ut iusto aut.', '1', '10', '0', '0', '0', '0', '0', 'Et nihil tempore quo sunt quos voluptatem hic.', null, '2020-02-28 01:25:18', '2020-03-14 19:09:44');
INSERT INTO `blog_articles` VALUES ('95', 'Odio quas dolore dolor occaecati.', 'Sunt consequatur ipsam eligendi. Hic ullam deserunt corrupti distinctio repudiandae ut. Ad molestiae fuga deleniti laudantium. Culpa et esse autem officiis blanditiis ut.', '1', '6', '0', '0', '0', '0', '0', 'Odio quas dolore dolor occaecati.', null, '2020-03-14 19:10:33', '2020-03-19 16:53:22');
INSERT INTO `blog_articles` VALUES ('96', 'A vel sed sed.', 'Quisquam iure dolor a vero nemo. Non quod explicabo distinctio expedita velit et aut voluptatem.', '1', '1', '0', '0', '0', '0', '0', 'A vel sed sed.', null, '2020-02-28 22:55:10', '2020-02-29 07:18:51');
INSERT INTO `blog_articles` VALUES ('97', 'PHP工厂模式', '```\r\n<?php\r\nabstract class AbstractClass{\r\n    abstract public function myTest():void;\r\n}\r\n \r\nclass Mysql extends AbstractClass{\r\n    public function myTest():void{\r\n        echo \'mysql\';\r\n    }\r\n}\r\n \r\nclass MyPdo extends AbstractClass{\r\n    public function myTest():void{\r\n        echo \"pdo\";\r\n    }\r\n}\r\n \r\nclass Factory{\r\n    public static function myFactory(string $className=\'Mysql\'):object{\r\n        return new $className();\r\n    }\r\n}\r\n \r\n$mysql = Factory::myFactory(\'Mysql\');\r\n$pdo = Factory::myFactory(\'MyPdo\');\r\n \r\nvar_dump($pdo);\r\nvar_dump($mysql);\r\n \r\n$mysql->myTest();\r\necho \"\\n\";\r\n$pdo->myTest();\r\n```', '1', '4', '0', '1', '0', '0', '0', '```', 'laudantium-incidunt-vero-qui-ut-esse-eaque-ratione', '2020-03-01 11:40:29', '2020-03-30 16:15:34');
INSERT INTO `blog_articles` VALUES ('98', 'Quis ducimus est labore omnis sint.', 'Earum voluptatem impedit consectetur quibusdam architecto commodi. Sunt quia voluptatem voluptas fugiat recusandae dolore numquam.', '1', '6', '0', '0', '0', '0', '0', 'Quis ducimus est labore omnis sint.', null, '2020-03-03 16:25:19', '2020-03-09 06:50:14');
INSERT INTO `blog_articles` VALUES ('99', 'Aut minima harum inventore quibusdam aspernatur.', 'Fuga inventore dolorem dolor et quia. Doloremque ea aut voluptate ut tempora ipsum ea.', '1', '8', '0', '0', '0', '0', '0', 'Aut minima harum inventore quibusdam aspernatur.', null, '2020-03-09 08:55:08', '2020-03-16 18:06:49');
INSERT INTO `blog_articles` VALUES ('100', 'Dolorem voluptatem rerum officiis velit dicta veniam.', 'Exercitationem recusandae nisi qui nihil. Harum sed repellendus quo nesciunt. Vitae et eos distinctio et.', '1', '7', '0', '0', '0', '0', '0', 'Dolorem voluptatem rerum officiis velit dicta veniam.', null, '2020-02-27 19:02:20', '2020-02-27 19:04:53');
INSERT INTO `blog_articles` VALUES ('101', '简述Https双向认证', '- 双向认证\r\n　　1、先决条件是有两个或两个以上的证书，一个是服务端证书，另一个或多个是客户端证书。\r\n　　2、服务端保存着客户端的证书并信任该证书，客户端保存着服务端的证书并信任该证书。这样，在证书验证成功的情况下即可完成请求响应。\r\n　　3、双向认证一般企业应用对接。\r\n \r\n- 单向认证\r\n　　1、客户端保存着服务端的证书并信任该证书即可\r\n　　2、https一般是单向认证，这样可以让绝大部分人都可以访问你的站点。', '1', '4', '1', '3', '1', '0', '0', '- 双向认证 　　1、先决条件是有两个或两个以上的证书，一个是服务端证书，另一个或多个是客户端证书。 　　2、服务端保存着客户端的证书并信任该证书，客户端保存着服务端的证书并信任该证书。这样，在证书验证成功...', 'qian-tang-jiang-ye-jing', '2020-03-30 14:22:19', '2020-04-13 15:51:22');
INSERT INTO `blog_articles` VALUES ('102', '接口和抽象类的区别是什么？', '抽象类是一种不能被实例化的类，只能作为其他类的父类来使用。抽象类是通过关键字`abstract`来声明的。\r\n抽象类与普通类相似，都包含成员变量和成员方法，两者的区别在于，抽象类中至少要包含一个抽象方法，抽象方法没有方法体，该方法天生就是要被子类重写的。\r\n抽象方法的格式为：`abstract function abstractMethod();`\r\n接口是通过 `interface` 关键字来声明的，接口中的成员常量和方法都是 `public` 的，方法可以不写关键字`public`，接口中的方法也是没有方法体。接口中的方法也天生就是要被子类实现的。\r\n抽象类和接口实现的功能十分相似，最大的不同是接口能实现多继承。在应用中选择抽象类还是接口要看具体实现。\r\n子类继承抽象类使用 `extends`，子类实现接口使用`implements`。', '1', '4', '0', '2', '0', '0', '0', '抽象类是一种不能被实例化的类，只能作为其他类的父类来使用。抽象类是通过关键字`abstract`来声明的。 抽象类与普通类相似，都包含成员变量和成员方法，两者的区别在于，抽象类中至少要包含一个抽象方法，抽象方法...', 'jie-kou-he-chou-xiang-lei-de-qu-bie-shi-shen-me', '2020-03-30 15:11:33', '2020-04-09 11:37:28');
INSERT INTO `blog_articles` VALUES ('103', 'php反射的原理', '什么是反射呢？\r\n\r\n在PHP的面向对象编程中的对象，它被系统赋予自省的能力，而这个自省的过程，我们把它叫做反射。\r\n\r\n我们对反射的直观理解可以是，根据达到地，找到出发地和来源这么一个过程，通俗来讲就是，我给你一个光秃秃的对象，完事你可以根据这个对象，知道它所属的类，拥有哪些方法。\r\n\r\n在PHP中，反射是指在PHP运行状态中，扩展分析PHP程序，导出或者提取出关于类、属性、方法、参数等的详细信息，包括注释。这种动态获取信息以及动态调用对象方法的功能，被称为反射API。\r\n\r\n我们接下来通过一段代码来感受下：\r\n\r\n```\r\nclass person\r\n{\r\n\r\n    public $name;\r\n\r\n    public $age;\r\n\r\n\r\n    public function say()\r\n\r\n    {\r\n\r\n        echo $this->name . \"<br>\" . $this->age;\r\n\r\n    }\r\n\r\n\r\n    public function set($name, $value)\r\n\r\n    {\r\n\r\n        echo \'set name to value\';\r\n\r\n        $this->$name = $value;\r\n\r\n    }\r\n\r\n\r\n    public function get($name)\r\n\r\n    {\r\n\r\n        if (!isset($this->$name)) {\r\n\r\n            echo \'unset name\';\r\n\r\n            $this->$name = \'seting~~~\';\r\n\r\n        }\r\n\r\n\r\n        return $this->$name;\r\n\r\n    }\r\n\r\n}\r\n\r\n$stu = new person();\r\n$stu->name = \'luyaran\';\r\n$stu->age = 26;\r\n$stu->sex = \'girl\';\r\n```\r\n\r\n上述代码是一个简单的类，我们通过实例化它，以及赋值，让它含有意义。\r\n\r\n完事，我们就来通过反射API获取这个stu对象的方法和属性的一个列表：\r\n\r\n//获取对象的属性列表\r\n\r\n```\r\n$reflect = new ReflectionObject($stu);\r\n\r\n$props = $reflect->getProperties();\r\n\r\nforeach ($props as $key_p => $value_p) {\r\n\r\n    var_dump($value_p->getName());\r\n\r\n}\r\n\r\n//获取对象的方法列表\r\n\r\n$method = $reflect->getMethods();\r\n\r\nforeach ($method as $key_m => $value_m) {\r\n\r\n    var_dump($value_m->getName());\r\n\r\n}\r\n```\r\n\r\n同时呢，反射不仅可以用作类和对象，还可以用于函数，扩展模块，异常等。\r\n\r\n咱们呢，在这里就不赘述了，最后一点篇幅，就来聊聊反射的一些作用。\r\n\r\n首先，它可以用作文档生成，所以，我们可以用它对文档中的类进行扫描，逐个生成扫描文档。\r\n\r\n反射可以探知类的内部结构，也可以用作hook来实现插件功能，还有就是可以做动态代理。', '1', '4', '0', '2', '0', '0', '0', '什么是反射呢？  在PHP的面向对象编程中的对象，它被系统赋予自省的能力，而这个自省的过程，我们把它叫做反射。  我们对反射的直观理解可以是，根据达到地，找到出发地和来源这么一个过程，通俗来讲就是，我给你一...', 'php-fan-she-di-yuan-li', '2020-03-31 10:33:49', '2020-04-20 17:01:06');
INSERT INTO `blog_articles` VALUES ('104', 'PHP单列模式', '```\r\n<?php\r\n \r\nclass Single {\r\n    private static $instance = null;\r\n    private function __construct(){}\r\n \r\n    public static function getInstance(){\r\n        if (!(self::$instance instanceof self)) {\r\n            self::$instance = new self;\r\n        }\r\n \r\n        return self::$instance;\r\n    }\r\n \r\n    private function __clone(){}\r\n}\r\n \r\n$test1 = Single::getInstance();\r\n$test2 = Single::getInstance();\r\n \r\nvar_dump($test1);\r\nvar_dump($test2);\r\n```', '1', '4', '0', '1', '0', '0', '0', '```', 'php-dan-lie-mo-shi', '2020-03-31 10:35:57', '2020-03-31 10:35:59');
INSERT INTO `blog_articles` VALUES ('105', 'Redis的两种持久化RDB和AOF的区别', '- RDB：在指定时间间隔内，将内存中的数据集快照写入磁盘，也就是Snapshot快照，它恢复时是将快照文件直接读到内存中，来达到恢复数据的。在默认情况下， Redis 将数据库快照保存在名字为 dump.rdb 的二进制文件中。通过触发快照的形式，来做到将指定时间间隔内的数据持久化到dump.rdb。例如，可以2分钟内持久化一次，将对数据库的写操作，备份到磁盘上的dump.rdb。如何触发持久化呢？可以通过查看或者设置redis.conf配置文件来指定触发规则。\r\n\r\nRDB优点：\r\n1. 如果要进行大规模数据的恢复，RDB方式要比AOF方式恢复速度要快。\r\n2. RDB可以最大化Redis性能，父进程做的就是fork子进程，然后继续接受客户端请求，让子进程负责持久化操作，父进程无需进行IO操作。\r\n3. RDB是一个非常紧凑(compact)的文件,它保存了某个时间点的数据集，非常适合用作备份，同时也非常适合用作灾难性恢复，它只有一个文件，内容紧凑，通过备份原文件到本机外的其他主机上，一旦本机发生宕机，就能将备份文件复制到redis安装目录下，通过启用服务就能完成数据的恢复。\r\n\r\nRDB的缺点：\r\n1. RDB这种持久化方式不太适应对数据完整性要求严格的情况，因为，尽管我们可以用过修改快照实现持久化的频率，但是要持久化的数据是一段时间内的整个数据集的状态，如果在还没有触发快照时，本机就宕机了，那么对数据库所做的写操作就随之而消失了并没有持久化本地dump.rdb文件中。\r\n2. 每次进行RDB时，父进程都会fork一个子进程，由子进程来进行实际的持久化操作，如果数据集庞大，那么fork出子进程的这个过程将是非常耗时的，就会出现服务器暂停客户端请求，将内存中的数据复制一份给子进程，让子进程进行持久化操作。\r\n\r\n- AOF：以日志的形式记录Redis每一个写操作,将Redis执行过的所有写指令记录下来（读操作不记录），只许追加文件不可以改写文件，redis启动之后会读取appendonly.aof文件来实现重新恢复数据，完成恢复数据的工作。默认不开启，需要将redis.conf中的appendonly  no改为yes启动Redis。\r\n\r\nAOF的优点：\r\n1. AOF有着多种持久化策略：\r\nappendfsync always:每修改同步，每一次发生数据变更都会持久化到磁盘上，性能较差，但数据完整性较好。\r\nappendfsync everysec: 每秒同步，每秒内记录操作，异步操作，如果一秒内宕机，有数据丢失。\r\nappendfsync no:不同步。\r\n2. AOF文件是一个只进行追加操作的日志文件，对文件写入不需要进行seek，即使在追加的过程中，写入了不完整的命令（例如：磁盘已满），可以使用redis-check-aof工具可以修复这种问题\r\n3. Redis可以在AOF文件变得过大时，会自动地在后台对AOF进行重写：重写后的新的AOF文件包含了恢复当前数据集所需的最小命令集合。整个重写操作是绝对安全的，因为Redis在创建AOF文件的过程中，会继续将命令追加到现有的AOF文件中，即使在重写的过程中发生宕机，现有的AOF文件也不会丢失。一旦新AOF文件创建完毕，Redis就会从旧的AOF文件切换到新的AOF文件，并对新的AOF文件进行追加操作。\r\n4. AOF文件有序地保存了对数据库执行的所有写入操作。这些写入操作一Redis协议的格式保存，易于对文件进行分析；例如，如果不小心执行了FLUSHALL命令，但只要AOF文件未被重写，通过停止服务器，移除AOF文件末尾的FLUSHALL命令，重启服务器就能达到FLUSHALL执行之前的状态。\r\n\r\nAOF的缺点：\r\n1. 对于相同的数据集来说，AOF文件要比RDB文件大\r\n2. 根据所使用的持久化策略来说，AOF的速度要慢与RDB。一般情况下，每秒同步策略效果较好。不使用同步策略的情况下，AOF与RDB速度一样快。', '1', '11', '0', '3', '0', '0', '0', '- RDB：在指定时间间隔内，将内存中的数据集快照写入磁盘，也就是Snapshot快照，它恢复时是将快照文件直接读到内存中，来达到恢复数据的。在默认情况下， Redis 将数据库快照保存在名字为 dump.rdb 的二进制文件中。...', 'redis-de-liang-zhong-chi-jiu-hua-rdb-he-aof-de-qu-bie', '2020-03-31 10:41:07', '2020-04-14 13:28:04');
INSERT INTO `blog_articles` VALUES ('106', 'Laravel的控制反转理解（DI/IOC）', '**Ioc （Inversion of Control） 控制反转模式 又称 （Depe-ndency Injection）依赖注入模式**\r\n\r\n控制反转是将组件的依赖关系从程序内部提到程序外部来管理，而依赖注入是指组件的依赖通过外部以参数或其它形式注入。\r\n\r\n下面我将以一个简单的例子来演示什么是 Ioc 控制反转。\r\n\r\n```\r\n<?php\r\n\r\ninterface Visit\r\n{\r\n    public function go();\r\n}\r\n\r\nclass Leg implements Visit       //行走接口\r\n{\r\n    public function go()\r\n    {\r\n        // TODO: Implement go() method.\r\n        echo \"walt to Tibet!!!\";\r\n    }\r\n}\r\n\r\nclass Car implements Visit         //汽车接口\r\n{\r\n    public function go()\r\n    {\r\n        // TODO: Implement go() method.\r\n        echo \"drive car to Tibet!!!\";\r\n    }\r\n\r\n}\r\n\r\nclass Train implements Visit        //火车接口\r\n{\r\n    public function go()\r\n    {\r\n        // TODO: Implement go() method.\r\n        echo \"go to Tibet by train\";\r\n    }\r\n}\r\n\r\nclass Traveller                  // 旅行者类\r\n{\r\n    protected $trafficTool;\r\n\r\n    public function __construct(Visit $trafficTool)\r\n    {\r\n        $this->trafficTool = $trafficTool;\r\n    }\r\n\r\n    public function visitTibet()\r\n    {\r\n        $this->trafficTool->go();\r\n    }\r\n}\r\n\r\n$tra = new Traveller(new Car());\r\n\r\n$tra->visitTibet();\r\n\r\n```\r\n\r\n\r\n`Traveller` 类的构造函数依赖了一个外部的具有 `visit `接口的实例，而实例化 `Traveller `时，我们传递了一个 `$trafficTool` 实例， 即通过依赖注入的方法解决依赖', '1', '12', '0', '1', '0', '0', '0', '**Ioc （Inversion of Control） 控制反转模式 又称 （Depe-ndency Injection）依赖注入模式**  控制反转是将组件的依赖关系从程序内部提到程序外部来管理，而依赖注入是指组件的依赖通过外部以参数或其它形式注入。...', 'laravel-de-kong-zhi-fan-zhuan-li-jie-di-ioc', '2020-03-31 10:47:04', '2020-03-31 10:47:05');
INSERT INTO `blog_articles` VALUES ('107', 'Laravel框架特点', '`laravel`框架的设计思想比较先进,非常适合应用各种开发模式,作为一个框架,它为你准备好了一切,`composer`是`php`的未来,没有`composer`,`php`肯定要走向没落。\r\n\r\n`laravel`框架最大的特点和优秀之处就是集合了`php`比较新的特点,以及各种各样的设计模式,`Ioc`模式,依赖注入等。\r\n\r\n1. 强大的`rest router`:用简单的回调函数就可以调用,快速绑定`controller`和`router`\r\n2. ` artisan`:命令行工具,很多手动的工作都自动化\r\n3. 可继承的模板,简化`view`的开发和管理\r\n4. `blade`模板:渲染速度更快\r\n5. `ORM`操作数据库\r\n6. `migration`:管理数据库和版本控制\r\n7. 测试功能也很强大\r\n8. `composer`也是亮点', '1', '12', '0', '3', '0', '0', '0', '`laravel`框架的设计思想比较先进,非常适合应用各种开发模式,作为一个框架,它为你准备好了一切,`composer`是`php`的未来,没有`composer`,`php`肯定要走向没落。  `laravel`框架最大的特点和优秀之处就是集合了`php`...', 'laravel-kuang-jia-te-dian', '2020-03-31 10:50:20', '2020-04-15 13:58:31');
INSERT INTO `blog_articles` VALUES ('108', 'MySQL数据库常用优化', '1. 从结构层: web服务器采用负载均衡服务器,mysql服务器采用主从复制,读写分离\r\n2. 从储存层: 采用合适的存储引擎,采用三范式\r\n3. 从设计层: 采用分区分表,索引,表的字段采用合适的字段属性,适当的采用逆范式,开启mysql缓存\r\n4. sql语句层:结果一样的情况下,采用效率高,速度快节省资源的sql语句执行', '1', '13', '0', '1', '0', '0', '0', '1. 从结构层: web服务器采用负载均衡服务器,mysql服务器采用主从复制,读写分离 2. 从储存层: 采用合适的存储引擎,采用三范式 3. 从设计层: 采用分区分表,索引,表的字段采用合适的字段属性,适当的采用逆范式,开启mysq...', 'mysql-shu-ju-ku-chang-yong-you-hua', '2020-03-31 10:53:04', '2020-03-31 10:53:06');
INSERT INTO `blog_articles` VALUES ('109', '商城秒杀的实现', '抢购、秒杀是如今很常见的一个应用场景，主要需要解决的问题有两个：\r\n\r\n* 高并发对数据库产生的压力\r\n* 竞争状态下如何解决库存的正确减少（\"超卖\"问题）\r\n\r\n对于第一个问题，已经很容易想到用缓存来处理抢购，避免直接操作数据库，例如使用Redis。\r\n\r\n第二个问题，我们可以使用redis队列来完成，把要秒杀的商品放入到队列中，因为pop操作是原子的，即使有很多用户同时到达，也是依次执行，文件锁和事务在高并发下性能下降很快，当然还要考虑其他方面的东西，比如抢购页面做成静态的，通过ajax调用接口，其中也可能会出现一个用户抢多次的情况，这时候需要再加上一个排队队列和抢购结果队列及库存队列。高并发情况下，将用户进入排队队列，用一个线程循环处理从排队队列取出一个用户，判断用户是否已在抢购结果队列，如果在，则已抢购，否则未抢购，库存减1，写数据库，将用户入结果队列。', '1', '4', '0', '2', '0', '0', '0', '抢购、秒杀是如今很常见的一个应用场景，主要需要解决的问题有两个：  * 高并发对数据库产生的压力 * 竞争状态下如何解决库存的正确减少（\"超卖\"问题）  对于第一个问题，已经很容易想到用缓存来处理抢购，避免直接...', 'shang-cheng-miao-sha-de-shi-xian', '2020-03-31 10:55:51', '2020-04-13 16:02:56');
INSERT INTO `blog_articles` VALUES ('110', '第三方登录注册实现原理', '第三方登陆主要使用的是`author`协议，我就以QQ的第三方登陆为例来进行说明：当用户在我们的站点请求QQ的第三方登陆时，我们站点会引导用户跳转到QQ的登陆授权界面， 当用户输入QQ和密码成功登录以后会自动跳回到我们站点设置好的回调页面，并附带一个`code`参数，接着你使用code再次去请求QQ的授权页面，就可以从中获取到一个`access token`（访问令牌），通过这个`access_token`，我们可以调用QQ提供给我们的接口，比如获取`open_id`，可以获取用户的基本信息。获取到之后，我们需要拿用户的授权信息和`open_id`和我们平台的普通用户进行绑定。这样不管是普通用户登陆还是第三方登陆用户，都可以实现登陆。', '1', '4', '0', '2', '0', '0', '0', '第三方登陆主要使用的是`author`协议，我就以QQ的第三方登陆为例来进行说明：当用户在我们的站点请求QQ的第三方登陆时，我们站点会引导用户跳转到QQ的登陆授权界面， 当用户输入QQ和密码成功登录以后会自动跳回到我...', 'di-san-fang-deng-lu-zhu-ce-shi-xian-yuan-li', '2020-03-31 10:57:29', '2020-03-31 11:21:20');
INSERT INTO `blog_articles` VALUES ('111', '接口安全方面是怎么处理的', '我们当时是这么做的，使用HTTP的`POST`方式,对固定参数+附加参数进行数字签名,使用的是`md5`加密,比如:我想通过标题获取一个信息,在客户端使用 信息标题+日期+双方约定好的一个key通过`md5`加密生成一个签名(`sign`),然后作为参数传递到服务器端,服务器端使用同样的方法进行校验,如何接受过来的`sign`和我们通过算法算的值相同，证明是一个正常的接口请求，我们才会返回相应的接口数据。', '1', '4', '0', '1', '0', '0', '0', '我们当时是这么做的，使用HTTP的`POST`方式,对固定参数+附加参数进行数字签名,使用的是`md5`加密,比如:我想通过标题获取一个信息,在客户端使用 信息标题+日期+双方约定好的一个key通过`md5`加密生成一个签名(`sign`)...', 'jie-kou-an-quan-fang-mian-shi-zen-me-chu-li-de', '2020-03-31 11:28:43', '2020-03-31 11:28:44');
INSERT INTO `blog_articles` VALUES ('112', '在工作中遇到什么困难', '* 我之前工作的时候发现经常会出现一些临时需求打乱了我的计划，搞得有时候这个任务还没完成，又得去做其他的任务，最后一天下来，大大小小的东西是很多，但是没有完成得非常好的，后面我总结了一下，我会把这些都添加优先级，遇到临时需求，按照优先级重新将已有任务和临时任务进行排版，保证在规定时间内有效率的完成优先级高的任务。\r\n* 在做项目需求时候，遇到理解能力欠佳的人，沟通时容易被气到，影响自己的情绪，最后反倒还不能到达需要的效果。后面，每次到这种时候，我一般会借助一些纸质的、更加形象的东西，让双方都认同的、都能明白的一种方式来进行沟通，后面减少了很多不必须的麻烦。大家都知道，对于程序员来说，改需求是一件很痛苦的事情，所以前期的沟通工作很重要。\r\n* 还有一件事时，我以前的领导不太懂技术，所以每次出一个新的需求出来，总是要求我们在很短的时间内完成，完不成我们就会被怀疑能力有问题。当然，每个领导都希望自己的员工能够尽快的完成任务，降低成本，提高效率。这时候我会把我们的需求细化，把其中的重点、难点都列出来，做好时间规划，耐心的跟领导沟通，项目每个点的重要性和时间的花费比例，确保在这个规划的时间点内保质保量的完成任务。慢慢的也得到了领导的认可，其实领导也不是一味的不通情理，只要把东西计划好了，以最小的代价换取最高的价值，每个人都是很容易理解得。', '1', '4', '0', '1', '0', '0', '0', '* 我之前工作的时候发现经常会出现一些临时需求打乱了我的计划，搞得有时候这个任务还没完成，又得去做其他的任务，最后一天下来，大大小小的东西是很多，但是没有完成得非常好的，后面我总结了一下，我会把这些都添...', 'zai-gong-zuo-zhong-yu-dao-shen-me-kun-nan', '2020-03-31 11:29:34', '2020-03-31 11:29:35');
INSERT INTO `blog_articles` VALUES ('113', '离线安装Laravel Homestead', '## 一、简介\r\n\r\nLaravel Homestead 是一个官方预封装的 Vagrant box，它为你提供了一个完美的开发环境，你无需在本地安装 PHP ，web 服务器，或其他服务软件。并且不用担心系统被搞乱！ Vagrant box 是完全一次性的。如果有什么地方出错了，你也可以在几分钟内销毁并重建 box ！\r\n\r\nHomestead 可以运行在 Windows 、 Mac 或 Linux 系统上，并且里面包含了 Nginx Web 服务器、 PHP 7.1 、 MySQL 、 Postgres 、 Redis 、 Memcached 、 Node 、 以及所有利于你开发 laravel 应用的其他程序。\r\n\r\n## 二、下载安装包\r\n\r\n在你启动你的`Homestead` 环境之前，你必须安装`VirtualBox 5.1`、 `VMWare`或`Parallels`的其中之一，以及`Vagrant`，并下载`laravel/homestead` 官方预封装的 `Vagrant box`包（类似于系统镜像，用于在虚拟环境中安装linux系统，这个系统就是的本地服务器）。本次采用的`VirtualBox 6.1`。下面提供了本次需要的安装包下载地址。\r\n\r\n- 官方直接下载：[VirtualBox-6.1.4-136177-Win.exe](https://download.virtualbox.org/virtualbox/6.1.4/VirtualBox-6.1.4-136177-Win.exe)\r\n- 官方直接下载：[vagrant_2.2.7_x86_64.msi](https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.msi) \r\n- `laravel/homestead` 官方预封装的 [Vagrant box](https://vagrantcloud.com/laravel/boxes/homestead/versions/9.4.0/providers/virtualbox.box)，最好用第三方工具下载，这样会快点。\r\n\r\n> 注意，其他版本的`VirtualBox`，可能会造成安装虚拟环境失败\r\n\r\n\r\n## 三、安装\r\n\r\n1. 安装`vagrant`，`vagrant`属于跨平台应用，我的系统是`win10`。安装成功后可以在`cmd`中输入 `vagrant -v` 。\r\n```\r\nPS E:\\Homestead> vagrant -v\r\nVagrant 2.2.7\r\n```\r\n\r\n2. 安装`Virtualbox`，直接按照提示安装即可\r\n3. 安装服务器环境，将下载好的`laravel/homestead` 官方预封装的 `Vagrant box`包，重新命名为`virtualbox.box`，将该包复制到任何不带有中文名字的目录即可。进入到该包目录，新建文件`metadata.json`，输入以下内容：\r\n```\r\n{\r\n    \"name\": \"laravel/homestead\",\r\n    \"versions\": [{\r\n        \"version\": \"9.4.0\",//对应的virtualbox.box版本号\r\n        \"providers\": [{\r\n            \"name\": \"virtualbox\",\r\n            \"url\": \"file://virtualbox.box\"\r\n        }]\r\n    }]\r\n}\r\n```\r\n\r\n接下来， `Ctrl` + 鼠标右键，打开 `Powershell` 窗口，运行`vagrant box add metadata.json`，查看。见到这样，表示安装成功了！\r\n\r\n```\r\nPS E:\\Homestead> vagrant box list\r\nlaravel/homestead (virtualbox, 9.4.0)\r\n```\r\n\r\n4. 安装 `Homestead`，首先保证你系统已经按照了`git`，选择你的工作目录，使用`git bash`克隆`Homestead`\r\n```\r\ngit clone https://github.com/laravel/homestead.git Homestead\r\n```\r\n\r\n一旦你克隆完 `Homestead` 的代码仓库，即可在 `Homestead` 目录中运行 `bash init.sh `命令 来创建 `Homesstead.yaml` 配置文件：\r\n\r\n```\r\n// Mac / Linux...\r\nbash init.sh\r\n\r\n// Windows...双击运行\r\ninit.bat\r\n```\r\n运行完成后，Homesstead.yaml 文件会被放置在你的 Homestead 目录中。\r\n\r\n## 四、配置 `Homestead`\r\n\r\n1. 配置你的提供者，`Homestead.yaml` 中的 `provider` 参数设置取决于你用的是哪一个` Vagrant` 提供者 `virtualbox` 、 `vmware_fusion `、 `vmware_workstation` ，或者 `parallels` 。你可以根据自己的喜好来设置提供者，这里选择的是`virtualbox` 。\r\n\r\n```\r\nprovider: virtualbox\r\n```\r\n2. 配置共享文件夹，你可以在` Homestead.yaml` 文件的 `folders` 属性里列出所有想与 `Homestead` 环境共享的文件夹。这些文件夹中的文件若有变更，它们将会在你的本机电脑与 `Homestead` 环境自动更新同步。你可以在这里设置多个共享文件夹，这里我在`Homestead`文件夹中创建了`code`文件夹用来共享。\r\n```\r\nfolders:\r\n    - map: F:/Homestead/www        //对应Homestead文件夹的路径\r\n      to: /home/vagrant/code\r\n```\r\n3. 配置 `Nginx` 站点，对 `Nginx` 不熟悉吗？没关系。`sites` 属性可以帮助你可以轻易指定一个 域名 来对应到 `homestead` 环境中的一个目录上。在` Homestead.yaml `文件中已包含了一个网站设置范本。\r\n```\r\nsites:\r\n    - map: homestead.app   //域名\r\n      to: /home/vagrant/code/laravel/public    //对应Nginx 虚拟机的laravel安装目录\r\n```\r\n如果你在 `Homestead box` 配置之后更改了 `sites` 属性，那么应该重新运行 `vagrant reload --provision` 来更新 `Nginx` 配置到虚拟机上。\r\n\r\n4. 配置`hosts` 文件，必须将在 `Nginx sites` 中所添加的「域名」也添加到你本机电脑的 `hosts` 上。 `hosts` 文件会将请求重定向至 `Homestead` 环境中设置的本地域名。在 Mac 或 `Linux` 上，该文件通常会存放在 `/etc/hosts` 。在 `Windows` 上，则存放于 `C:\\Windows\\System32\\drivers\\etc\\hosts` 。\r\n\r\n`192.168.10.10  homestead.app`\r\n务必确认 `IP `地址与 `Homestead.yaml` 文件中设置的相同。\r\n\r\n## 五、启动 `Vagrant Box`\r\n编辑完 `Homestead.yaml` 后，进入你的 `Homestead` 目录并运行 `vagrant up` 命令，多半会重新下载虚拟环境。`Vagrant` 就会根据 `Homestead.yaml` 里的配置信息，为虚拟机设置共享文件夹和 `Nginx` 网站。打开你的`Oracle VM VirtualBox`，里面正在运行着你的服务器，说明安装成功了。\r\n\r\n###### 注意事项：\r\n> - *需要重新下载`laravel/homestead`*\r\n> ```\r\n> PS E:\\Homestead> vagrant up\r\n> Bringing machine \'homestead\' up with \'virtualbox\' provider...\r\n> ==> homestead: Box \'laravel/homestead\' could not be found. Attempting to find and install...\r\n>     homestead: Box Provider: virtualbox\r\n>     homestead: Box Version: >= 9.0.0\r\n> ==> homestead: Loading metadata for box \'laravel/homestead\'\r\n>     homestead: URL: https://vagrantcloud.com/laravel/homestead\r\n> ==> homestead: Adding box \'laravel/homestead\' (v9.4.0) for provider: virtualbox\r\n>     homestead: Downloading: https://vagrantcloud.com/laravel/boxes/homestead/versions/9.4.0/providers/virtualbox.box\r\n> ```\r\n> 原因是:\r\n>\r\n>系统没有找到我们安装的`laravel/homestead`盒子：那是离线安装的时候没有跟上版本号，直接命令行安装`vagrant box add laravel/homestead virtualbox.box`，造成安装的版本号为0\r\n> \r\n> 解决办法：\r\n> 按照上面`metadata.json`以配置文件安装，即可\r\n>\r\n> - *工作目录映射没有成功*\r\n>\r\n> 如果你出现本地工作目录没有映射到虚拟机上，有可能是在`Homestead`目录中，重新运行`vagrant init laravel/homestead`，生成了新的`Vagrantfile`文件，原来的文件被删除了，造成`vagrant up`没有生成对应的文件映射目录。解决办法，重新`git chekcout -- Vagrantfile`即可：\r\n>  ```\r\n>  PS E:\\Homestead> vagrant up\r\n>  Check your Homestead.yaml file, the path to your private key\r\n>  ```\r\n>  我们根据提示，貌似是`ssh`的`key`没有生成，于是我们要运行如下命令，这个命令可以在`git bash`下生成。\r\n>  \r\n>  ```\r\n>  ssh-keygen\r\n>  ```\r\n>  \r\n> - *如果你出现如下情况*：\r\n>  ```\r\n>  PS E:\\Homestead> vagrant up\r\n>  Check your Homestead.yaml file, the path to your private key\r\n>  ```\r\n>  我们根据提示，貌似是`ssh`的`key`没有生成，于是我们要运行如下命令，这个命令可以在`git bash`下生成。\r\n>  \r\n>  ```\r\n>  ssh-keygen\r\n>  ```\r\n\r\n\r\n## 六、登录`vagrant`并安装`laravel`\r\n\r\n（1）我们可以用cmd命令行进入Homestead目录，使用如下命令连接，如果使用Virtualbox开启登录需要用户名跟密码，都是 vagrant\r\n \r\n ```\r\n vagrant ssh\r\n ```\r\n （2）安装laravel，我们一般是通过composer来进行安装，在Homestead.yaml中我们配置的目录是 to: /home/vagrant/code/public ，因此我们要进入code目录下安装，输入如下命令：\r\n```\r\ncd /home/vagrant/code\r\ncomposer create-project --prefer-dist laravel/laravel\r\n```\r\n （3）完成后测试laravel是否安装成功\r\n ```\r\n cd /home/vagrant/code/laravel\r\n php artisan\r\n```\r\n（4）重开一个cmd运行程序，进入Homestead目录重新运行 vagrant reload --provision 来更新 Nginx 配置到虚拟机上，之后我们可以在Homestead/code文件夹中看到下载的laravel代码。这是在浏览器中通过该域名访问站点了：\r\n```\r\nhttp://homestead.app\r\n```\r\n\r\n（5）访问 提示No input file specified，这个可能是laravel的安装目录与Homestead.yaml中配置的目录不一致，或者是Homestead.yaml中配置的目录出现了大写字母。因为在虚拟机中的目录都是小写字母的。修改完成之后进入Homestead目录重新运行 vagrant reload --provision 来更新 Nginx 配置到虚拟机上。', '1', '12', '0', '2', '0', '0', '0', '## 一、简介  Laravel Homestead 是一个官方预封装的 Vagrant box，它为你提供了一个完美的开发环境，你无需在本地安装 PHP ，web 服务器，或其他服务软件。并且不用担心系统被搞乱！ Vagrant box 是完全一次性的。...', 'li-xian-an-zhuang-laravel-homestead', '2020-03-31 11:30:51', '2020-03-31 11:37:33');
INSERT INTO `blog_articles` VALUES ('114', 'HTTP的四层/七层模型', '七层、四层模型及其协议：\r\n\r\n![](https://img2018.cnblogs.com/blog/1252647/201810/1252647-20181025162201515-1292578776.png)\r\n\r\n应用层：\r\n\r\n　　应用层决定了在向用户提供应用服务时通信的活动，TCP/IP协议簇中有各类通用的应用服务。如FTP（文件传输协议）、DNS（域名解析协议），\r\n\r\n　　当然还有HTTP（超文本传输协议）。\r\n\r\n传输层：\r\n\r\n　　传输层相对于上层的应用层，提供处于网络连接中的两台计算机之间的数据传输，传输层有两个性质不同的协议：TCP（传输控制协议）、UDP(用户数据报协议)\r\n\r\n网际层/网络层：\r\n\r\n　　网际层用来处理在网络上流动的数据包，数据包是网络传输的最小单位。该层规定了根据怎样的传输路线来到达对方的计算机，并把数据包传送给对方。\r\n\r\n　　与对方计算机通过多台计算机或网络设备进行传输时，网际层负责的就是在众多的选项内选择一条传输路线。网际层上的协议有：\r\n\r\n　　IP（网际协议）、ARP（地址解析协议）、RARP（逆地址解析协议）等。\r\n\r\n网络接口层/链路层：\r\n\r\n　　网络接口层用来处理连接网络的硬件部分，包括控制操作系统、硬件的设备驱动、NIC（网络适配器，即网卡）、及光纤等物理可见部分。', '1', '14', '0', '2', '0', '0', '0', '七层、四层模型及其协议：  ![](https://img2018.cnblogs.com/blog/1252647/201810/1252647-20181025162201515-1292578776.png)  应用层：  　　应用层决定了在向用户提供应用服务时通信的活动，TCP/IP协议簇中有各...', 'http-de-si-ceng-qi-ceng-mo-xing', '2020-04-01 10:46:05', '2020-04-14 13:47:05');
INSERT INTO `blog_articles` VALUES ('115', 'TCP和UDP的区别', '- TCP的优点： 可靠，稳定 TCP的可靠体现在TCP在传递数据之前，会有三次握手来建立连接，而且在数据传递时，有确认、窗口、重传、拥塞控制机制，在数据传完后，还会断开连接用来节约系统资源。\r\n- TCP的缺点： 慢，效率低，占用系统资源高，易被攻击 TCP在传递数据之前，要先建连接，这会消耗时间，而且在数据传递时，确认机制、重传机制、拥塞控制机制等都会消耗大量的时间，而且要在每台设备上维护所有的传输连接，事实上，每个连接都会占用系统的CPU、内存等硬件资源。 而且，因为TCP有确认机制、三次握手机制，这些也导致TCP容易被人利用，实现DOS、DDOS、CC等攻击。\r\n- UDP的优点： 快，比TCP稍安全 UDP没有TCP的握手、确认、窗口、重传、拥塞控制等机制，UDP是一个无状态的传输协议，所以它在传递数据时非常快。没有TCP的这些机制，UDP较TCP被攻击者利用的漏洞就要少一些。但UDP也是无法避免攻击的，比如：UDP Flood攻击…… \r\n- UDP的缺点： 不可靠，不稳定 因为UDP没有TCP那些可靠的机制，在数据传递时，如果网络质量不好，就会很容易丢包。\r\n- 什么时候应该使用TCP： 当对网络通讯质量有要求的时候，比如：整个数据要准确无误的传递给对方，这往往用于一些要求可靠的应用，比如HTTP、HTTPS、FTP等传输文件的协议，POP、SMTP等邮件传输的协议。 在日常生活中，常见使用TCP协议的应用如下： 浏览器，用的HTTP FlashFXP，用的FTP Outlook，用的POP、SMTP Putty，用的Telnet、SSH QQ文件传输 …\r\n- 什么时候应该使用UDP： 当对网络通讯质量要求不高的时候，要求网络通讯速度能尽量的快，这时就可以使用UDP。 比如，日常生活中，常见使用UDP协议的应用如下： QQ语音 QQ视频 TFTP ……\r\n\r\nTCP与UDP区别总结：\r\n\r\n1. TCP面向连接（如打电话要先拨号建立连接）;UDP是无连接的，即发送数据之前不需要建立连接\r\n2. TCP提供可靠的服务。也就是说，通过TCP连接传送的数据，无差错，不丢失，不重复，且按序到达;UDP尽最大努力交付，即不保证可靠交付\r\n3. TCP面向字节流，实际上是TCP把数据看成一连串无结构的字节流;UDP是面向报文的。UDP没有拥塞控制，因此网络出现拥塞不会使源主机的发送速率降低（对实时应用很有用，如IP电话，实时视频会议等）\r\n4. 每一条TCP连接只能是点到点的;UDP支持一对一，一对多，多对一和多对多的交互通信\r\n5. TCP首部开销20字节;UDP的首部开销小，只有8个字节\r\n6. TCP的逻辑通信信道是全双工的可靠信道，UDP则是不可靠信道', '1', '14', '0', '4', '0', '0', '0', '- TCP的优点： 可靠，稳定 TCP的可靠体现在TCP在传递数据之前，会有三次握手来建立连接，而且在数据传递时，有确认、窗口、重传、拥塞控制机制，在数据传完后，还会断开连接用来节约系统资源。 - TCP的缺点： 慢，效...', 'tcp-he-udp-de-qu-bie', '2020-04-01 10:53:47', '2020-04-20 16:57:46');
INSERT INTO `blog_articles` VALUES ('120', 'PHP实现 bitmap 位图排序、求交集', '初始化一串全为0的二进制;\r\n\r\n现有一串无序的整数数组;\r\n\r\n如果整数x在这个整数数组当中,就将二进制串的第x位置为1;\r\n\r\n然后顺序读取这个二进制串,并将为1的位转换成整数,顺序存放到新的集合中,就是排好序的了\r\n\r\n排序代码:\r\n\r\n```\r\nfunction sort()\r\n    {\r\n        // var_dump(PHP_INT_MAX, PHP_INT_SIZE);\r\n        // int 9223372036854775807\r\n        // int 8\r\n        $bitmap = array_fill(0, 50, 0); //申请一个整形数组, 50个元素, 初始化为整数0\r\n        $int_bit_size = PHP_INT_SIZE * 8; //$bitmap中每个整形的二进制位数 (本例中int = 8*8 = 64bit; $bitmap数组一共50*64 = 3200个bit位),也就是说能为最大值小于等于3200的整数集合排序\r\n        $a = array(1,4,3,50,34,60,100,88,200,150,300); //定义一个乱序的数组\r\n\r\n        //扫描$a中的每一个数, 将其转换为 x*64 + y\r\n        foreach ($a as $k => $v) {\r\n            $shang = $v / $int_bit_size;\r\n            $yushu = $v % $int_bit_size;\r\n\r\n            $offset = 1 << $yushu;\r\n\r\n            $bitmap[$shang] = $bitmap[$shang] | $offset;//将bit位置为1\r\n        }\r\n\r\n        //将$bitmap中的bit位依次还原为整数输出,即可得到排序后的数组\r\n        $b = array();\r\n        foreach ($bitmap as $k => $v) {\r\n            for ($i = 0; $i < $int_bit_size; $i++) {\r\n                $tmp = 1 << $i;\r\n                $flag = $tmp & $bitmap[$k];\r\n\r\n                // $b[] = $flag ? $k * $int_bit_size + $i : false;\r\n                if ($flag) {\r\n                    $b[] =  $k * $int_bit_size + $i;\r\n                }\r\n            }\r\n        }\r\n\r\n        var_dump($b);exit;\r\n    }\r\n// 浏览器输出:\r\narray\r\n  0 => int 1\r\n  1 => int 3\r\n  2 => int 4\r\n  3 => int 34\r\n  4 => int 50\r\n  5 => int 60\r\n  6 => int 88\r\n  7 => int 100\r\n  8 => int 150\r\n  9 => int 200\r\n  10 => int 300\r\n```\r\n求交集代码:\r\n\r\n生成两个bitmap -> 循环两个bitmap 与操作 生成一个新的bitmap -> 还原bitmap为数字\r\n```\r\npublic function sort($a = array())\r\n    {\r\n        // var_dump(PHP_INT_MAX, PHP_INT_SIZE);\r\n        // int 9223372036854775807\r\n        // int 8\r\n        $bitmap = array_fill(0, 50, 0); //申请一个整形数组, 50个元素, 初始化为整数0\r\n        $int_bit_size = PHP_INT_SIZE * 8; //$bitmap中每个整形的二进制位数 (本例中int = 8*8 = 64bit; $bitmap数组一共50*64 = 3200个bit位)\r\n        // $a = array(1,4,3,50,34,60,100,88,200,150,300); //定一个乱序的数组\r\n\r\n        //扫描$a中的每一个数, 将其转换为 x*64 + y\r\n        foreach ($a as $k => $v) {\r\n            $shang = $v / $int_bit_size;\r\n            $yushu = $v % $int_bit_size;\r\n\r\n            $offset = 1 << $yushu;\r\n\r\n            $bitmap[$shang] = $bitmap[$shang] | $offset;//将bit位置为1\r\n        }\r\n\r\n        return $bitmap;\r\n    }\r\n\r\n    public function intersect()\r\n    {\r\n        $int_bit_size = PHP_INT_SIZE * 8;\r\n\r\n        $a = array(1,4,3,50,34,60,100,88,200,150,300);\r\n        $b = array(1,5,3,50,34,55,100,87,222,150,300);\r\n\r\n        $bit_a = $this->sort($a);\r\n        $bit_b = $this->sort($b);\r\n\r\n        $c = array();\r\n        foreach ($bit_a as $k => $v) {\r\n            $c[$k] = $bit_a[$k] & $bit_b[$k]; //二进制 & 计算求交集\r\n        }\r\n\r\n        $d = array();\r\n        foreach ($c as $k => $v) {\r\n            for ($i = 0; $i < $int_bit_size; $i++) {\r\n                $tmp = 1 << $i;\r\n                $flag = $tmp & $c[$k];\r\n\r\n                // $b[] = $flag ? $k * $int_bit_size + $i : false;\r\n                if ($flag) {\r\n                    $d[] =  $k * $int_bit_size + $i;\r\n                }\r\n            }\r\n        }\r\n\r\n        var_dump($d);exit;\r\n\r\n    }\r\n浏览器输出:\r\narray\r\n=> int 1\r\n=> int 3\r\n=> int 34\r\n=> int 50\r\n=> int 100\r\n=> int 150\r\n=> int 300\r\n```', '1', '4', '0', '3', '0', '0', '0', '初始化一串全为0的二进制;  现有一串无序的整数数组;  如果整数x在这个整数数组当中,就将二进制串的第x位置为1;  然后顺序读取这个二进制串,并将为1的位转换成整数,顺序存放到新的集合中,就是排好序的了  排序代码:...', 'ce-shi', '2020-04-02 11:13:55', '2020-04-14 14:01:16');
INSERT INTO `blog_articles` VALUES ('123', 'select、poll、epoll三者区别', '- **select**\r\n```\r\nsockfd = socket(AF_INET, SOCK_STREAM, 0);\r\n  memset(&addr, 0, sizeof (addr));\r\n  addr.sin_family = AF_INET;\r\n  addr.sin_port = htons(2000);\r\n  addr.sin_addr.s_addr = INADDR_ANY;\r\n  bind(sockfd,(struct sockaddr*)&addr ,sizeof(addr));\r\n  listen (sockfd, 5); \r\n \r\n  for (i=0;i<5;i++) \r\n  {\r\n    memset(&client, 0, sizeof (client));\r\n    addrlen = sizeof(client);\r\n    fds[i] = accept(sockfd,(struct sockaddr*)&client, &addrlen);\r\n    if(fds[i] > max)\r\n		//求出最大值\r\n    	max = fds[i];\r\n  }\r\n  \r\n  while(1){\r\n    //重置&rset，&rset是bitmap\r\n	FD_ZERO(&rset);\r\n  	for (i = 0; i< 5; i++ ) {\r\n		// 将对应的fd，设置到对应bitmap中\r\n  		FD_SET(fds[i],&rset);\r\n  	}\r\n \r\n   	puts(\"round again\");\r\n	// 传入最大fd值，并在有数据的fd上进行标记\r\n	select(max+1, &rset, NULL, NULL, NULL);\r\n \r\n	for(i=0;i<5;i++) {\r\n		//判断是否有标记\r\n		if (FD_ISSET(fds[i], &rset)){\r\n			memset(buffer,0,MAXBUF);\r\n			read(fds[i], buffer, MAXBUF);\r\n			puts(buffer);\r\n		}\r\n	}	\r\n  }\r\n```\r\n特点：\r\n1. FD_SET有限，默认1024位\r\n2. &rset不可重用\r\n3. 用户空间到内核空间的拷贝，消耗性能\r\n4. 时间复杂度O(n)\r\n\r\n- **poll**\r\npollfd结构的事件和返回事件具有不同的字段，因此我们不需要每次都构建它：\r\n```\r\nstruct pollfd {\r\n      int fd;\r\n      short events; \r\n      short revents;\r\n};\r\n```\r\n对于每个文件描述符，构建一个类型为pollfd的对象，并填充所需的事件。在poll循环处理后，对有数据的fd进行标记，设置revents为1。\r\n```\r\nfor (i=0;i<5;i++) \r\n  {\r\n    memset(&client, 0, sizeof (client));\r\n    addrlen = sizeof(client);\r\n    pollfds[i].fd = accept(sockfd,(struct sockaddr*)&client, &addrlen);\r\n    pollfds[i].events = POLLIN;\r\n  }\r\n  sleep(1);\r\n  while(1){\r\n  	puts(\"round again\");\r\n	poll(pollfds, 5, 50000);\r\n \r\n	for(i=0;i<5;i++) {\r\n		if (pollfds[i].revents & POLLIN){\r\n			pollfds[i].revents = 0;\r\n			memset(buffer,0,MAXBUF);\r\n			read(pollfds[i].fd, buffer, MAXBUF);\r\n			puts(buffer);\r\n		}\r\n	}\r\n  }\r\n```\r\n特点：\r\n1. 描述fd集合的方式不同，poll使用 pollfd 结构而不是select结构fd_set结构，所以poll是链式的，没有最大连接数的限制\r\n2. 用户空间到内核空间的拷贝，消耗性能\r\n3. 时间复杂度O(n)\r\n- **epoll**\r\n```\r\nstruct epoll_event events[5];\r\n  int epfd = epoll_create(10);\r\n  ...\r\n  ...\r\n  for (i=0;i<5;i++) \r\n  {\r\n    static struct epoll_event ev;\r\n    memset(&client, 0, sizeof (client));\r\n    addrlen = sizeof(client);\r\n    ev.data.fd = accept(sockfd,(struct sockaddr*)&client, &addrlen);\r\n    ev.events = EPOLLIN;\r\n    epoll_ctl(epfd, EPOLL_CTL_ADD, ev.data.fd, &ev); \r\n  }\r\n  \r\n  while(1){\r\n  	puts(\"round again\");\r\n  	nfds = epoll_wait(epfd, events, 5, 10000);\r\n	\r\n	for(i=0;i<nfds;i++) {\r\n			memset(buffer,0,MAXBUF);\r\n			read(events[i].data.fd, buffer, MAXBUF);\r\n			puts(buffer);\r\n	}\r\n  }\r\n```\r\nepoll 提供了三个函数：\r\n1. int epoll_create(int size);\r\n建立一個 epoll 对象，并传回它的id\r\n2. int epoll_ctl(int epfd, int op, int fd, struct epoll_event *event);\r\n事件注册函数，将需要监听的事件和需要监听的fd交给epoll对象\r\n3. int epollwait(int epfd, struct epollevent events, int maxevents, int timeout);\r\n等待注册的事件被触发或者timeout发生\r\n\r\nepoll解决的问题：\r\n1. epoll没有fd数量限制\r\nepoll没有这个限制，我们知道每个epoll监听一个fd，所以最大数量与能打开的fd数量有关，一个g的内存的机器上，能打开10万个左右\r\n\r\n2. epoll不需要每次都从用户空间将fd_set复制到内核kernel\r\nepoll在用epoll_ctl函数进行事件注册的时候，已经将fd复制到内核中，所以不需要每次都重新复制一次\r\n\r\n3. select 和 poll 都是主动轮询机制，需要遍历每一个人fd；\r\nepoll是被动触发方式，给fd注册了相应事件的时候，我们为每一个fd指定了一个回调函数，当数据准备好之后，就会把就绪的fd加入一个就绪的队列中，epoll_wait的工作方式实际上就是在这个就绪队列中查看有没有就绪的fd，如果有，就唤醒就绪队列上的等待者，然后调用回调函数。\r\n\r\n4. 虽然epoll。poll。epoll都需要查看是否有fd就绪，但是epoll之所以是被动触发，就在于它只要去查找就绪队列中有没有fd，就绪的fd是主动加到队列中，epoll不需要一个个轮询确认。\r\n换一句话讲，就是select和poll只能通知有fd已经就绪了，但不能知道究竟是哪个fd就绪，所以select和poll就要去主动轮询一遍找到就绪的fd。而epoll则是不但可以知道有fd可以就绪，而且还具体可以知道就绪fd的编号，所以直接找到就可以，不用轮询。', '1', '15', '0', '12', '1', '0', '0', '- **select** ``` sockfd = socket(AF_INET, SOCK_STREAM, 0);   memset(&addr, 0, sizeof (addr));   addr.sin_family = AF_INET;   addr.sin_port = htons(2000);   addr.sin_addr.s_addr = INADDR_ANY;   bind(so...', 'jie-kou-an-quan-fang-mian-shi-zen-me-chu-li-de', '2020-04-02 14:20:06', '2020-04-29 09:57:09');
INSERT INTO `blog_articles` VALUES ('124', 'PHP代码，确保多个进程写入同一个文件成功', '这个需求是在软件设计过程常见的加锁。\r\n学计算机的同学都应该知道，这个是在《计算机操作系统》课程上有这个知识点。\r\n主要要考虑的是进程的同步，也就是进程对资源的互斥访问。\r\nOK，用程序说话吧！\r\n```\r\n<?php\r\nfunction writefile( $filename, $data ){\r\n $fp = fopen( $filepath, \'a\' );   //以追加的方式打开文件，返回的是指针\r\n do{\r\n 　　 usleep( 100 ); 　　　　　　//暂停执行程序，参数是以微秒为单位的\r\n }while( !flock( $fp, LOCK_EX ) );　　//以独享写入的方式锁定文件，成功则返回TRUE，否则FALSE\r\n}\r\n $res = fwrite( $fp, $data.\"/n\" );　　// 以追加的方式写入数据到打开的文件\r\n flock( $fp, LOCK_UN );　　　　　　//解锁，以让别的进程进行锁定\r\n fclose( $fp );　　　　　　　　　　　//关闭打开的文件指针\r\n return $res;　　　　　　　　　　　　//返回写入结果\r\n?>\r\n```', '1', '4', '0', '2', '0', '0', '0', '这个需求是在软件设计过程常见的加锁。 学计算机的同学都应该知道，这个是在《计算机操作系统》课程上有这个知识点。 主要要考虑的是进程的同步，也就是进程对资源的互斥访问。 OK，用程序说话吧！ ```  ```', 'php-dai-ma-que-bao-duo-ge-jin-cheng-xie-ru-tong-yi-ge-wen-jian-cheng-gong', '2020-04-02 15:11:37', '2020-04-10 14:57:38');
INSERT INTO `blog_articles` VALUES ('125', 'array_merge和array() + array()区别', '| 类型 |字符串 | 索引 |\r\n| -------- | -------- | -------- |\r\n| array_merge  | 后面覆盖前面     | 合并，索引并递增     |\r\n| array() + array()  | 前面为准     | 前面为准    |', '1', '4', '0', '3', '0', '0', '0', '| 类型 |字符串 | 索引 | | -------- | -------- | -------- | | array_merge  | 后面覆盖前面     | 合并，索引并递增     | | array() + array()  | 前面为准     | 前面为准    |', 'array-merge-he-array-array-qu-bie', '2020-04-02 15:15:40', '2020-04-09 11:37:14');
INSERT INTO `blog_articles` VALUES ('126', 'PHP 多进程与进程间通信', '实现 PHP 进程间通信的方式有很多种，共享内存，管道，信号量，信号，消息队列，socket', '1', '4', '0', '3', '0', '0', '0', '实现 PHP 进程间通信的方式有很多种，共享内存，管道，信号量，信号，消息队列，socket', 'php-duo-jin-cheng-yu-jin-cheng-jian-tong-xin', '2020-04-02 15:18:32', '2020-04-15 13:58:56');
INSERT INTO `blog_articles` VALUES ('127', 'PHP如何快速读取大文件', '1. 直接采用file函数来操作\r\n2. 直接调用Linux的 tail 命令来显示最 后几行\r\n3. 直接使用PHP的 fseek 来进行文件操作\r\n这种方式是最为普遍的方式，它不需要将文件的内容全部读入内容，而是直接通过指针来操作，所以效率是相当高效的。在使用fseek来对文件进行操作时，也有多种不同的方法，效率可能也是略有差别的，下面是常用的两种方法：\r\n方法一\r\n首先通过fseek找到文件的最后一位EOF，然后找最后一行的起始位置，取这一行的数据，再找次一行的起始位置， 再取这一行的位置，依次类推，直到找到了$num行。\r\n方法二\r\n还是采用fseek的方式从文件最后开始读，但这时不是一位一位的读，而是一块一块的读，每读一块数据时，就将读取后的数据放在一个buf里，然后通过换 行符(\\n)的个数来判断是否已经读完最后$num行数据。\r\n\r\n[参考链接](https://www.cnblogs.com/lxwphp/p/10567894.html)', '1', '4', '0', '2', '0', '0', '0', '1. 直接采用file函数来操作 2. 直接调用Linux的 tail 命令来显示最 后几行 3. 直接使用PHP的 fseek 来进行文件操作 这种方式是最为普遍的方式，它不需要将文件的内容全部读入内容，而是直接通过指针来操作，所以效率...', 'php-ru-he-kuai-su-du-qu-da-wen-jian', '2020-04-02 15:32:23', '2020-04-23 17:00:25');
INSERT INTO `blog_articles` VALUES ('128', '如何解决MySQL内存占用过高', '为了装mysql环境测试，装上后发现启动后MySQL占用内存了很大，达8百多兆。网上搜索了一下，得到高人指点my.ini。再也没见再详细的了..只好打开my.ini逐行的啃，虽然英文差了点，不过多少M还是看得明的\r\n更改后如下：\r\n\r\ninnodb_buffer_pool_size=576M ->256M InnoDB引擎缓冲区占了大头，首要就是拿它开刀\r\nquery_cache_size=100M ->16M 查询缓存\r\ntmp_table_size=102M ->64M 临时表大小\r\nkey_buffer_size=256m ->32M\r\n\r\n重启mysql服务后，虚拟内存降到200以下．\r\n\r\n另外mysql安装目录下有几个文件：my-huge.ini 、my-large.ini、my-medium.ini...这几个是根据内存大小作的建议配置，新手在设置的时候也可以参考一下。\r\n2G内存的MYSQL数据库服务器 my.ini优化 (my.ini)\r\n2G内存,针对站少,优质型的设置,试验特：\r\ntable_cache=1024 物理内存越大,设置就越大.默认为2402,调到512-1024最佳\r\ninnodb_additional_mem_pool_size=8M 默认为2M\r\ninnodb_flush_log_at_trx_commit=0 等到innodb_log_buffer_size列队满后再统一储存,默认为1\r\ninnodb_log_buffer_size=4M 默认为1M\r\ninnodb_thread_concurrency=8 你的服务器CPU有几个就设置为几,默认为8\r\nkey_buffer_size=256M 默认为218 调到128最佳\r\ntmp_table_size=64M 默认为16M 调到64-256最挂\r\nread_buffer_size=4M 默认为64K\r\nread_rnd_buffer_size=16M 默认为256K\r\nsort_buffer_size=32M 默认为256K\r\nmax_connections=1024 默认为1210', '1', '13', '0', '3', '0', '0', '0', '为了装mysql环境测试，装上后发现启动后MySQL占用内存了很大，达8百多兆。网上搜索了一下，得到高人指点my.ini。再也没见再详细的了..只好打开my.ini逐行的啃，虽然英文差了点，不过多少M还是看得明的 更改后如下：...', 'ru-he-jie-jue-mysql-nei-cun-zhan-yong-guo-gao', '2020-04-02 15:43:42', '2020-04-03 10:05:17');
INSERT INTO `blog_articles` VALUES ('129', 'php内存管理机制、垃圾回收机制', '[地址](https://www.cnblogs.com/xinghun/p/5660051.html)', '1', '4', '0', '1', '0', '0', '0', '[地址](https://www.cnblogs.com/xinghun/p/5660051.html)', '', '2020-04-02 15:59:25', '2020-04-02 16:36:00');
INSERT INTO `blog_articles` VALUES ('150', '理解PHP内存管理', '首先让我们看一个问题: 如下代码的输出\r\n```\r\nvar_dump(memory_get_usage());\r\n$a = \"laruence\";\r\nvar_dump(memory_get_usage());\r\nunset($a);\r\nvar_dump(memory_get_usage());\r\n```\r\n输出(在我的个人电脑上, 可能会因为系统,PHP版本,载入的扩展不同而不同):\r\n```\r\nint(90440)\r\nint(90640)\r\nint(90472)\r\n```\r\n注意到 90472-90440=32, 于是就有了各种的结论, 有的人说PHP的unset并不真正释放内存, 有的说, PHP的unset只是在释放大变量(大量字符串, 大数组)的时候才会真正free内存, 更有人说, 在PHP层面讨论内存是没有意义的.\r\n那么, 到底unset会不会释放内存? 这32个字节跑哪里去了?\r\n\r\n要回答这个问题, 我将从俩个方面入手:\r\n\r\n这32个字节去哪里了\r\n首先我们要打破一个思维: PHP不像C语言那样, 只有你显示的调用内存分配相关API才会有内存的分配.\r\n也就是说, 在PHP中, 有很多我们看不到的内存分配过程.\r\n比如对于:\r\n```\r\n$a = \"laruence\";\r\n```\r\n隐式的内存分配点就有:\r\n1. 为变量名分配内存, 存入符号表\r\n2. 为变量值分配内存\r\n\r\n所以, 不能只看表象.\r\n第二, 别怀疑,PHP的unset确实会释放内存(当然, 还要结合引用和计数, 这部分的内容请参看我之前的文章深入理解PHP原理之变量分离/引用), 但这个释放不是C编程意义上的释放, 不是交回给OS.\r\n对于PHP来说, 它自身提供了一套和C语言对内存分配相似的内存管理API:\r\n```\r\nemalloc(size_t size);\r\nefree(void *ptr);\r\necalloc(size_t nmemb, size_t size);\r\nerealloc(void *ptr, size_t size);\r\nestrdup(const char *s);\r\nestrndup(const char *s, unsigned int length);\r\n```\r\n这些API和C的API意义对应, 在PHP内部都是通过这些API来管理内存的.\r\n当我们调用emalloc申请内存的时候, PHP并不是简单的向OS要内存, 而是会像OS要一个大块的内存, 然后把其中的一块分配给申请者, 这样当再有逻辑来申请内存的时候, 就不再需要向OS申请内存了, 避免了频繁的系统调用.\r\n比如如下的例子:\r\n```\r\n<?php\r\nvar_dump(memory_get_usage(TRUE)); //注意获取的是real_size\r\n$a = \"laruence\";\r\nvar_dump(memory_get_usage(TRUE));\r\nunset($a);\r\nvar_dump(memory_get_usage(TRUE));\r\n```\r\n输出:\r\n```\r\nint(262144)\r\nint(262144)\r\nint(262144)\r\n```\r\n也就是我们在定义变量$a的时候, PHP并没有向系统申请新内存.\r\n同样的, 在我们调用efree释放内存的时候, PHP也不会把内存还给OS, 而会把这块内存, 归入自己维护的空闲内存列表. 而对于小块内存来说, 更可能的是, 把它放到内存缓存列表中去(后记, 某些版本的PHP, 比如我验证过的PHP5.2.4, 5.2.6, 5.2.8, 在调用get_memory_usage()的时候, 不会减去内存缓存列表中的可用内存块大小, 导致看起来, unset以后内存不变, 见评论).\r\n现在让我来回答这32个字节跑哪里去了, 就向我刚才说的, 很多内存分配的过程不是显式的, 看了下面的代码你就明白了:\r\n```\r\n<?php\r\nvar_dump(\"I am Laruence, From http://www.laruence.com\");\r\nvar_dump(memory_get_usage());\r\n$a = \"laruence\";\r\nvar_dump(memory_get_usage());\r\nunset($a);\r\nvar_dump(memory_get_usage());\r\n```\r\n输出:\r\n```\r\nstring(43) \"I am Laruence, From http://www.laruence.com\"\r\nint(90808) //赋值前\r\nint(90976)\r\nint(90808) //是的, 内存正常释放了\r\n```\r\n90808-90808 = 0, 正常了, 也就是说这32个字节是被输出函数给占用了(严格来说, 是被输出的Header占用了)\r\n\r\n只增不减的数组\r\nHashtable是PHP的核心结构(了解Hashtable, 可以参看我之前的文章深入理解PHP之数组(遍历顺序)), 数组也是用她来表示的, 而符号表也是一种关联数组, 对于如下代码:\r\n```\r\nvar_dump(\"I am Laruence, From http://www.laruence.com\");\r\nvar_dump(memory_get_usage());\r\n$array = array_fill(1, 100, \"laruence\");\r\nforeach ($array as $key => $value) {\r\n    ${$value . $key} = NULL;\r\n}\r\nvar_dump(memory_get_usage());\r\nforeach ($array as $key=> $value) {\r\n    unset(${$value . $key});\r\n}\r\nvar_dump(memory_get_usage());\r\n```\r\n我们定义了100个变量, 然后又按个Unset了他们, 来看看输出:\r\n```\r\nstring(43) \"I am Laruence, From http://www.laruence.com\"\r\nint(93560)\r\nint(118848)\r\nint(104448)\r\n```\r\nWow, 怎么少了这么多内存?\r\n这是因为对于Hashtable来说, 定义它的时候, 不可能一次性分配足够多的内存块, 来保存未知个数的元素, 所以PHP会在初始化的时候, 只是分配一小部分内存块给HashTable, 当不够用的时候再RESIZE扩容,\r\n而Hashtable, 只能扩容, 不会减少, 对于上面的例子, 当我们存入100个变量的时候, 符号表不够用了, 做了一次扩容, 而当我们依次unset掉这100个变量以后, 变量占用的内存是释放了(118848 - 104448), 但是符号表并没有缩小, 所以这些少的内存是被符号表本身占去了...\r\n现在, 你是不是对PHP的内存管理有了一个初步的认识了呢?\r\n\r\n[转载地址](https://www.laruence.com/2011/03/04/1894.html)', '1', '4', '0', '3', '0', '0', '0', '首先让我们看一个问题: 如下代码的输出 ``` var_dump(memory_get_usage()); $a = \"laruence\"; var_dump(memory_get_usage()); unset($a); var_dump(memory_get_usage()); ``` 输出(在我的个人电脑上, 可能会因为系统...', '', '2020-04-03 14:02:25', '2020-04-13 15:51:39');
INSERT INTO `blog_articles` VALUES ('151', 'PHP垃圾回收机制', '两个核心概念\r\n- 引用计数\r\n- 写时复制\r\n\r\n## PHP变量存储在一个zval容器里面的\r\n1. 变量类型 \r\n2. 变量值\r\n3. is_ref 代表是否有地址引用\r\n4. refcount 指向该值的变量数量\r\n\r\n变量赋值的时候：is_ref为false， refcount为1\r\n```\r\n$a = 1;\r\nxdebug_debug_zval(\'a\');\r\necho PHP_EOL;//换行符，提高代码的源代码级可移植性\r\n```\r\n输出：\r\n```\r\na:\r\n\r\n(refcount=1, is_ref=0),\r\nint\r\n\r\n 1\r\n ```\r\n 将变量a的值赋给变量b，变量b不会立刻去在内存中存储值，而是先指向变量a的值，一直到变量a有任何操作的时候\r\n ```\r\n $b = $a;\r\nxdebug_debug_zval(\'a\');\r\necho PHP_EOL;\r\n```\r\n输出：\r\n```\r\na:\r\n\r\n(refcount=2, is_ref=0),\r\nint\r\n\r\n 1\r\n ```\r\n ```\r\n $c = &$a;\r\nxdebug_debug_zval(\'a\');\r\necho PHP_EOL;\r\n\r\nxdebug_debug_zval(\'b\');\r\necho PHP_EOL;\r\n```\r\n输出：\r\n```\r\na:\r\n\r\n(refcount=2, is_ref=1),\r\nint\r\n\r\n 1\r\nb:\r\n\r\n(refcount=1, is_ref=0),\r\nint\r\n\r\n 1\r\n ```\r\n 因为程序又操作了变量a，所以变量b会自己申请一块内存将值放进去。\r\n所以变量a的zval容器中refcount会减1变为1，变量c指向a，所以refcount会加1变为2，is_ref变为true\r\n\r\n垃圾回收\r\n1.在5.2版本或之前版本，PHP会根据refcount值来判断是不是垃圾\r\n如果refcount值为0，PHP会当做垃圾释放掉\r\n这种回收机制有缺陷，对于环状引用的变量无法回收\r\n\r\n环状引用：\r\n```\r\n$attr = array(\"hello\");\r\n$attr[]= &$attr;\r\n\r\nxdebug_debug_zval(\'attr\');\r\necho PHP_EOL;\r\n```\r\n输出：\r\n```\r\nattr:\r\n\r\n(refcount=2, is_ref=1),\r\narray (size=2)\r\n  0 => (refcount=1, is_ref=0),\r\nstring\r\n\r\n \'hello\' (length=5)\r\n  1 => (refcount=2, is_ref=1),\r\n    &array\r\n```\r\n## 在5.3之后版本改进了垃圾回收机制\r\n如果发现一个zval容器中的refcount在增加，说明不是垃圾\r\n如果发现一个zval容器中的refcount在减少，如果减到了0，直接当做垃圾回收\r\n如果发现一个zval容器中的refcount在减少，并没有减到0，PHP会把该值放到缓冲区，当做有可能是垃圾的怀疑对象\r\n当缓冲区达到临界值，PHP会自动调用一个方法取遍历每一个值，如果发现是垃圾就清理', '1', '4', '0', '1', '0', '0', '0', '两个核心概念 - 引用计数 - 写时复制  ## PHP变量存储在一个zval容器里面的 1. 变量类型  2. 变量值 3. is_ref 代表是否有地址引用 4. refcount 指向该值的变量数量  变量赋值的时候：is_ref为false， refcount为1 `...', '', '2020-04-03 14:19:07', '2020-04-03 14:19:08');
INSERT INTO `blog_articles` VALUES ('152', 'GIT中cherry-pick和merge区别', '假设你现在正在开发一个项目，有一个功能分支 feature，开发分支 develop。 feature 有3个提交，分别是 A ，B ，C 。develop 分支只想加入 C 功能， 此时合并操作无法满足，因为直接合并 feature，会将3个提交都合并上，我想合并就只有 C，不要 A，B。此时就需要挑樱桃大法–cherry pick！\r\n\r\n`git merge` ：将两个或者多个提交历史合并。\r\n`git cherry-pick`：将提交对应的内容合并。\r\n\r\n这里，非常需要明确的一点，commit 代表的是修改！\r\n\r\n例中，提交 C 的内容，就是对比 B 上面做的修改，可能是创建了一个文件，或者修改了一个词语。那么 C 内容就是一个文件的添加，和一个词语的修改。\r\n\r\n以提交 C 为结束点的提交历史，实际内容是提交 C 和 C 之前所有的修改。\r\n\r\n`cherry-pick` 操作的对象就是` commit`。\r\n`merge` 操作的对象就是 `commit history`。\r\n\r\n所以，使用的时候，你要知道，你想要的什么。\r\n————————————————\r\n版权声明：本文为CSDN博主「DRPrincess」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/qq_32452623/java/article/details/79449534', '1', '16', '0', '1', '0', '0', '0', '假设你现在正在开发一个项目，有一个功能分支 feature，开发分支 develop。 feature 有3个提交，分别是 A ，B ，C 。develop 分支只想加入 C 功能， 此时合并操作无法满足，因为直接合并 feature，会将3个提交都合并...', '', '2020-04-08 14:21:10', '2020-04-08 14:21:11');
INSERT INTO `blog_articles` VALUES ('153', 'redis互斥锁简易设计原理', '方式一: 使用 set(arg1,arg2,arg3,arg4,arg5)\r\n```\r\n//如果不存在就设置,且设置成功60秒后key自动失效,成功会返回字符串\"OK \", 如果存在就不设置该key\r\nString ret = jedis.set(key, value, \"NX\", \"EX\", 60);\r\nflag = ret.equals(\"OK\") ? true : false;\r\njedis.del(key);\r\n```\r\n方式二: 使用 setnx(arg1,arg2)\r\n```\r\nString ret = jedis.setnx(key, value);//如果不存在就设置key,成功会返回 Long类型的 1, 如果存在就不设置该key ,且会返回Long 类型的 0\r\njedis.expire(60); //60秒后key自动失效\r\njedis.del(key);\r\n```\r\n![](https://images2017.cnblogs.com/blog/756542/201802/756542-20180209150711216-1637297168.png)', '1', '11', '0', '4', '0', '0', '0', '方式一: 使用 set(arg1,arg2,arg3,arg4,arg5) ``` //如果不存在就设置,且设置成功60秒后key自动失效,成功会返回字符串\"OK \", 如果存在就不设置该key String ret = jedis.set(key, value, \"NX\", \"EX\", 60); flag = re...', '', '2020-04-08 15:39:17', '2020-04-14 13:25:44');
INSERT INTO `blog_articles` VALUES ('154', '如何应对Redis缓存穿透和缓存雪崩', '分析:这两个问题，说句实在话，一般中小型传统软件企业，很难碰到这个问题。如果有大并发的项目，流量有几百万左右。这两个问题一定要深刻考虑。\r\n\r\n回答:如下所示\r\n\r\n缓存穿透，即黑客故意去请求缓存中不存在的数据，导致所有的请求都怼到数据库上，从而数据库连接异常。\r\n\r\n解决方案:\r\n\r\n(一)利用互斥锁，缓存失效的时候，先去获得锁，得到锁了，再去请求数据库。没得到锁，则休眠一段时间重试\r\n\r\n(二)采用异步更新策略，无论key是否取到值，都直接返回。value值中维护一个缓存失效时间，缓存如果过期，异步起一个线程去读数据库，更新缓存。需要做缓存预热(项目启动前，先加载缓存)操作。\r\n\r\n(三)提供一个能迅速判断请求是否有效的拦截机制，比如，利用布隆过滤器，内部维护一系列合法有效的key。迅速判断出，请求所携带的Key是否合法有效。如果不合法，则直接返回。\r\n\r\n缓存雪崩，即缓存同一时间大面积的失效，这个时候又来了一波请求，结果请求都怼到数据库上，从而导致数据库连接异常。\r\n\r\n解决方案:\r\n\r\n(一)给缓存的失效时间，加上一个随机值，避免集体失效。\r\n\r\n(二)使用互斥锁，但是该方案吞吐量明显下降了。\r\n\r\n(三)双缓存。我们有两个缓存，缓存A和缓存B。缓存A的失效时间为20分钟，缓存B不设失效时间。自己做缓存预热操作。然后细分以下几个小点\r\n\r\nI 从缓存A读数据库，有则直接返回\r\n\r\nII A没有数据，直接从B读数据，直接返回，并且异步启动一个更新线程。\r\n\r\nIII 更新线程同时更新缓存A和缓存B。\r\n\r\n作者：生活的探路者\r\n链接：https://www.jianshu.com/p/6a67f7c93231\r\n来源：简书\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '1', '11', '0', '5', '0', '0', '0', '分析:这两个问题，说句实在话，一般中小型传统软件企业，很难碰到这个问题。如果有大并发的项目，流量有几百万左右。这两个问题一定要深刻考虑。  回答:如下所示  缓存穿透，即黑客故意去请求缓存中不存在的数据，导...', '', '2020-04-08 15:46:06', '2020-04-29 09:58:46');
INSERT INTO `blog_articles` VALUES ('155', '如何解决redis的并发竞争key问题', '分析:这个问题大致就是，同时有多个子系统去set一个key。这个时候要注意什么呢？大家思考过么。需要说明一下，博主提前百度了一下，发现答案基本都是推荐用redis事务机制。博主不推荐使用redis的事务机制。因为我们的生产环境，基本都是redis集群环境，做了数据分片操作。你一个事务中有涉及到多个key操作的时候，这多个key不一定都存储在同一个redis-server上。因此，redis的事务机制，十分鸡肋。\r\n\r\n回答:如下所示\r\n\r\n(1)如果对这个key操作，不要求顺序\r\n\r\n这种情况下，准备一个分布式锁，大家去抢锁，抢到锁就做set操作即可，比较简单。\r\n\r\n(2)如果对这个key操作，要求顺序\r\n\r\n假设有一个key1,系统A需要将key1设置为valueA,系统B需要将key1设置为valueB,系统C需要将key1设置为valueC.\r\n\r\n期望按照key1的value值按照 valueA–>valueB–>valueC的顺序变化。这种时候我们在数据写入数据库的时候，需要保存一个时间戳。假设时间戳如下\r\n\r\n系统A key 1 {valueA  3:00}\r\n\r\n系统B key 1 {valueB  3:05}\r\n\r\n系统C key 1 {valueC  3:10}\r\n\r\n那么，假设这会系统B先抢到锁，将key1设置为{valueB 3:05}。接下来系统A抢到锁，发现自己的valueA的时间戳早于缓存中的时间戳，那就不做set操作了。以此类推。\r\n\r\n其他方法，比如利用队列，将set方法变成串行访问也可以。总之，灵活变通。\r\n\r\n作者：生活的探路者\r\n链接：https://www.jianshu.com/p/6a67f7c93231\r\n来源：简书\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '1', '11', '0', '3', '0', '0', '0', '分析:这个问题大致就是，同时有多个子系统去set一个key。这个时候要注意什么呢？大家思考过么。需要说明一下，博主提前百度了一下，发现答案基本都是推荐用redis事务机制。博主不推荐使用redis的事务机制。因为我们...', '', '2020-04-08 15:57:19', '2020-04-15 13:50:36');
INSERT INTO `blog_articles` VALUES ('156', '如何保证redis和数据库双写一致性', '分析:一致性问题是分布式常见问题，还可以再分为最终一致性和强一致性。数据库和缓存双写，就必然会存在不一致的问题。答这个问题，先明白一个前提。就是如果对数据有强一致性要求，不能放缓存。我们所做的一切，只能保证最终一致性。另外，我们所做的方案其实从根本上来说，只能说降低不一致发生的概率，无法完全避免。因此，有强一致性要求的数据，不能放缓存。\r\n\r\n首先，采取正确更新策略，先更新数据库，再删缓存。其次，因为可能存在删除缓存失败的问题，提供一个补偿措施即可，例如利用消息队列。\r\n\r\n作者：生活的探路者\r\n链接：https://www.jianshu.com/p/6a67f7c93231\r\n来源：简书\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '1', '11', '0', '4', '0', '0', '0', '分析:一致性问题是分布式常见问题，还可以再分为最终一致性和强一致性。数据库和缓存双写，就必然会存在不一致的问题。答这个问题，先明白一个前提。就是如果对数据有强一致性要求，不能放缓存。我们所做的一切，只...', '', '2020-04-08 15:58:32', '2020-04-23 16:59:40');
INSERT INTO `blog_articles` VALUES ('157', 'PHP冒泡排序与快速排序', '1、冒泡排序\r\n```\r\nfunction sort($arr)\r\n  {\r\n      // 第一层可以理解为从数组中键为0开始循环到最后一个\r\n      for ($i = 0; $i < count($arr); $i++) {\r\n          for ($j = $i + 1; $j < count($arr); $j++) {// 第二层为从$i+1的地方循环到数组最后\r\n              if ($arr[$i] > $arr[$j]) {// 比较数组中两个相邻值的大小\r\n                  $tem = $arr[$i]; // 这里临时变量，存贮$i的值\r\n                  $arr[$i] = $arr[$j]; // 第一次更换位置\r\n                  $arr[$j] = $tem; // 完成位置互换\r\n              }\r\n          }\r\n      }\r\n  }\r\n```\r\n2、快排\r\n```\r\nfunction quick_sort($array)\r\n{\r\n \r\n    if (count($array) <= 1) return $array;\r\n \r\n    $key = $array[0];\r\n \r\n    $left_arr = array();\r\n \r\n    $right_arr = array();\r\n \r\n    for ($i = 1; $i < count($array); $i++) {\r\n \r\n        if ($array[$i] <= $key)\r\n \r\n            $left_arr[] = $array[$i];\r\n \r\n        else\r\n \r\n            $right_arr[] = $array[$i];\r\n \r\n    }\r\n \r\n    $left_arr = $this->quick_sort($left_arr);\r\n \r\n    $right_arr = $this->quick_sort($right_arr);\r\n \r\n    return array_merge($left_arr, array($key), $right_arr);\r\n \r\n}\r\n```', '1', '4', '0', '1', '0', '0', '0', '1、冒泡排序 ``` function sort($arr)   {       // 第一层可以理解为从数组中键为0开始循环到最后一个       for ($i = 0; $i < count($arr); $i++) {           for ($j = $i + 1; $j < count($arr); $j++) {// 第...', '', '2020-04-09 13:59:02', '2020-04-09 13:59:03');
INSERT INTO `blog_articles` VALUES ('158', '什么是四次挥手', '![](https://img2018.cnblogs.com/blog/940884/201901/940884-20190123153326877-773515873.png)\r\n什么是三次握手\r\n\r\n在网络数据传输中，传输层协议TCP(传输控制协议)是建立连接的可靠传输，TCP建立连接的过程，我们称为三次握手。\r\n\r\n第一次，客户端向服务器发送SYN同步报文段，请求建立连接\r\n\r\n第二次，服务器确认收到客户端的连接请求，并向客户端发送SYN同步报文，表示要向客户端建立连接\r\n\r\n第三次，客户端收到服务器端的确认请求后，处于建立连接状态，向服务器发送确认报文\r\n\r\n客户端是在收到确认请求后，先建立连接\r\n\r\n服务器是在收到最后客户端的确认后，建立连接\r\n\r\n发起连接请求的一定是客户端\r\n\r\n \r\n\r\n为什么建立连接时要进行三次握手？\r\n\r\n我们可以分析一次握手肯定是不行的，这样服务器都不一定能收到连接请求\r\n\r\n \r\n\r\n那么如果是两次握手呢?\r\n\r\n如果是两次握手，连接过程应该是这样的，当服务器收到对端的连接请求时，就认为连接建立好了，进入ESTABLISHED状态。客户端在收到服务器发来的同步确认报文后，就认为连接建立好了，进入ESTABLISHED，在报文都能正常收到的情况下，两次握手是可以安全建立连接的。\r\n\r\n但是存在这样的情况，假设第二次握手的报文丢失了，当前的状态是，服务器认为连接已经建立好了，可是客户端没有收到同步确认报文，认为连接还没有建立好，此时，服务器端的连接其实是无效连接，客户端因为没有收到确认，便会向服务器重传同步报文，同样，在服务器收到客户端的同步报文时，认为连接已经建立好了，同样糟糕的事情发生了，服务器给客户端发送的同步确认报文丢失了，或者是说有人恶意向服务器不断发送SYN同步报文（SYN洪水）。那么服务器端就会有大量的无效连接，服务器处理连接的数量是有限的，当有大量的无效连接建立后，服务器处理有效连接是能力就会受限，且建立连接会消耗大量是资源，至此有可能导致服务器崩溃。\r\n\r\n这样看来两次握手是不可行的。\r\n\r\n \r\n\r\n三次握手为什么是可行的呢？\r\n\r\n在上面的两次握手的方案中，我们看到建立连接过程中，是服务器先处于连接建立好的状态，出现差错时，客户端没有连接建立成功，致使服务器可能有大量的无效连接，导致服务器安全问题。\r\n\r\n那么在三次握手方案中，客户端收到服务器的同步确认报文后，就认为连接建立好了（先处于连接建立好的状态），而服务器是要收到客户端的确认报文后才认为连接建立好了。\r\n\r\n那么也可能存在这样的问题，在最后一次握手时，服务器没有收到客户端的确认报文，此时的状态是，客户端处于建立连接状态，服务器处于没有建立连接状态，此时客户端负责维护这次连接\r\n\r\n \r\n\r\n三次握手中，是谁先发起请求，谁来负责维护这次连接，那么会出现上面类似SYN洪水的问题吗？显然是不会的，自己发出SYN，最终无效连接还是建立在自己这方，客户端也不会这么无聊吧\r\n\r\n而当客户端尝试向服务器发送数据时，服务器看到的是，还没有建立连接的数据，服务器会响应一个带有RST标志位的报文，告知客户端你需要先建立连接，此时当客户端收到这个报文时，就会重新发起建立连接的请求。\r\n\r\n总结下来就是，三次握手中，即使建立连接失败，对服务器是没有影响的，保证服务器的安全，而对客户端而言，也不过是多次建立连接而已。并且在经过验证，三次握手的成功率也是非常高的。\r\n\r\n \r\n\r\n四次握手可行吗？\r\n\r\n很明显，三次握手已经可以满足我们的需求了，也就没必要多一次而浪费资源了。\r\n\r\n在两次握手和三次握手的方案中，我们发现要保证客户端先建立连接的话，能保证连接的安全建立。若是偶数次握手，或者是说让服务器先建立连接，就是不安全不可行的方案。所以四次 握手是不可行的。\r\n\r\n \r\n\r\n什么是四次挥手\r\n\r\n在网络数据传输中，传输层协议断开连接的过程我们称为四次挥手\r\n\r\n第一次，A端像B端发送FIN结束报文段，准备关闭连接\r\n\r\n第二次，B端确认A端的FIN，表示自己已经收到对方关闭连接的请求\r\n\r\n中间这段时间，A端停止向B端发送数据，但是B端可以向A端发送数据，要将自己未处理完任务处理完\r\n\r\n第三次，B端向A端发送FIN结束报文段，准备关闭连接\r\n\r\n第四次，A端确认B端的FIN，进入TIME_WAIT状态，此时A端进程已经退出，但是连接还在\r\n\r\n当B端收到A端的ACK之后，先断开连接\r\n\r\n当A端等待2 MSL之后，确认的B端接收到ACK后，再断开连接\r\n\r\n发起断开连接请求的一端最后要进入有一个TIME_WAIT状态\r\n\r\n发起连接请求的可以是客户端也可以是服务器端\r\n\r\n \r\n\r\n为什么断开连接要四次?\r\n\r\n不像建立连接的过程,服务器端在调用了accept()之后,剩下的都交给内核来处理,用户空间不用做什么,断开连接是,A端调用close()关闭文件描述符后,A端就停止发送数据了进行发送,B端收到后结束报文段之后,的得知A端要断开连接了,但是B端可能有自己还没有处理完的数据,不能立即断开连接,就要先给出回复,表示自己已经收到消息了,然后将自己的数据处理完之后,可以断开连接的时候,再调用close()发出断开连接请求,在收到A端的确认回复之后,断开连接,这样看来每一步都不能少,但是有时候若服务器端没有什么要处理的数据,就看可以直接调用close()捎带上响应报文,此时就是3次\r\n\r\n为什么先发起断开连接请求的一端最后要等待 2MSL？\r\n\r\nMSL为一段报文从一段到一段的最大时间，也称为报文的最大生存时间，我们假设在上面的四次挥手过程中最后A端在收到B端的FIN之后，就关闭连接，最后B端在收到A端的确认报文之后也断开连接，这种情况是我们预期的\r\n\r\n试想是否存在这样的情况，在A端已经关闭连接后，但是发给B端的ACK报文中途丢失，此时B端就会重发FIN结束报文段，但是A端已经关闭与这台服务器的连接，并且已经开始了一段新的连接，那么A端收到这个过期的FIN，误认为是关闭当前连接，给出错误处理。\r\n\r\n也就是说A端等待 2MSL就 可以保证在B端没有收到A 到ACK时，B端重发的FIN,A端来的及处理，然后重新确认等待2 MSL，保证了最后的ACK 报文 B端成功收到。', '1', '14', '0', '1', '0', '0', '0', '![](https://img2018.cnblogs.com/blog/940884/201901/940884-20190123153326877-773515873.png) 什么是三次握手  在网络数据传输中，传输层协议TCP(传输控制协议)是建立连接的可靠传输，TCP建立连接的过程，我们称...', '', '2020-04-10 14:20:29', '2020-04-10 14:20:29');
INSERT INTO `blog_articles` VALUES ('159', 'Linux中的kill与kill -9  wenmingxing', '1、我们经常会用到kill命令去杀死一个进程，但是有时会出现kill不成功的现象，这是就要用到kill -9。\r\n\r\n2、之所以这两个命令会有区别是因为所发送的信号(Signal)是不同的：\r\n默认情况下kill命令的参数为-15，如下图所示：\r\nkill -15代表的信号为SIGTERM，这是告诉进程你需要被关闭，请自行停止运行并退出；\r\n\r\n而kill -9代表的信号是SIGKILL，表示进程被终止，需要立即退出；\r\n\r\n3、因此kill -9表示强制杀死该进程，这个信号不能被捕获也不能被忽略。', '1', '15', '0', '2', '0', '0', '0', '1、我们经常会用到kill命令去杀死一个进程，但是有时会出现kill不成功的现象，这是就要用到kill -9。  2、之所以这两个命令会有区别是因为所发送的信号(Signal)是不同的： 默认情况下kill命令的参数为-15，如下图所...', '', '2020-04-13 17:01:16', '2020-04-23 16:58:35');
INSERT INTO `blog_articles` VALUES ('160', '水平触发和边缘触发的区别是啥？', '1.水平触发level trigger  LT（状态达到）\r\n\r\n　　当被监控的文件描述符上有可读写事件发生时，会通知用户程序去读写，如果用户一次读写没取完数据，他会一直通知用户，如果这个描述符是用户不关心的，它每次都返回通知用户，则会导致用户对于关心的描述符的处理效率降低。\r\n\r\n　　复用型IO中的select和poll都是使用的水平触发方式。\r\n\r\n2.边缘触发edge trigger  ET（状态改变）\r\n\r\n　　当被监控的文件描述符上有可读写事件发生时，会通知用户程序去读写，它只会通知用户进程一次，这需要用户一次把内容读取玩，相对于水平触发，效率更高。如果用户一次没有读完数据，再次请求时，不会立即返回，需要等待下一次的新的数据到来时才会返回，这次返回的内容包括上次未取完的数据。\r\n\r\n　　信号驱动型IO使用的是边缘触发方式。\r\n\r\n　　epoll既支持水平触发也支持边缘触发，默认是水平触发。\r\n\r\n3.比较\r\n\r\n水平触发是状态达到后，可以多次取数据。这种模式下要注意多次读写的情况下，效率和资源利用率情况。\r\n\r\n边缘触发是状态改变一次，取一次数据。这种模式下读写数据要注意一次是否能读写完成。\r\n\r\n水平触发优、缺点及应用场景：\r\n\r\n优点：当进行socket通信的时候，保证了数据的完整输出，进行IO操作的时候，如果还有数据，就会一直的通知你。\r\n\r\n缺点：由于只要还有数据，内核就会不停的从内核空间转到用户空间，所有占用了大量内核资源，试想一下当有大量数据到来的时候，每次读取一个字节，这样就会不停的进行切换。内核资源的浪费严重。效率来讲也是很低的。\r\n\r\n边沿触发优、缺点及应用场景：\r\n\r\n优点：每次内核只会通知一次，大大减少了内核资源的浪费，提高效率。\r\n\r\n缺点：不能保证数据的完整。不能及时的取出所有的数据。\r\n\r\n应用场景：处理大数据。使用non-block模式的socket。\r\n\r\n总结：\r\n\r\n如果我们用水平触发不用担心数据有没有读完因为下次epoll返回时，没有读完的socket依然会被返回，但是要注意这种模式下的写事件，因为是水平触发，每次socket可写时epoll都会返回，当我们写的数据包过大时，一次写不完，要多次才能写完或者每次socket写都写一个很小的数据包时，每次写都会被epoll检测到，因此长期关注socket写事件会无故cpu消耗过大甚至导致cpu跑满，所以在水平触发模式下我们一般不关注socket可写事件而是通过调用socket write或者send api函数来写socket，说到这我们可以看到这种模式在效率上是没有边缘触发高的，因为每个socket读或者写可能被返回两次甚至多次，所以有时候我们也会用到边缘触发但是这种模式下在读数据的时候一定要注意，因为如果一次可写事件我们没有把数据读完，如果没有读完，在socket没有新的数据可读时epoll就不回返回了，只有在新的数据到来时，我们才能读取到上次没有读完的数据。\r\n————————————————\r\n版权声明：本文为CSDN博主「jigetage」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/jigetage/java/article/details/89227326', '1', '15', '0', '3', '0', '0', '0', '1.水平触发level trigger  LT（状态达到）  　　当被监控的文件描述符上有可读写事件发生时，会通知用户程序去读写，如果用户一次读写没取完数据，他会一直通知用户，如果这个描述符是用户不关心的，它每次都返回通...', '', '2020-04-13 17:02:03', '2020-04-15 11:36:14');
INSERT INTO `blog_articles` VALUES ('161', 'Swoole4 协程与 Go 协程有哪些区别', 'https://wiki.swoole.com/wiki/version/?id=1018&version=5', '1', '4', '0', '3', '0', '0', '0', 'https://wiki.swoole.com/wiki/version/?id=1018&version=5', '', '2020-04-13 17:05:31', '2020-04-29 09:59:57');
INSERT INTO `blog_articles` VALUES ('162', 'PHP数组原理', '数组是PHPer最常用的数据类型，同时php容易上手也得益于其强大的数组，但是数组在php中是如何实现的呢？\r\n\r\n首先，我们还是先了解下相关的数据结构，为下面的内容打好基础\r\n\r\n哈希表\r\n哈希表，顾名思义，即将不同的关键字映射到不同单元的一种数据结构。而将不同关键字映射到不同单元的方法就叫做哈希函数\r\n\r\n理想情况下，经过哈希函数处理，关键字和单元是会进行一一对应的；但是如果关键字值足够多的情况下，就容易出现多个关键字映射到同一单元的情况，即出现哈希冲突\r\n\r\n哈希冲突的解决方案，要么使用链接法，要么使用开放寻址法\r\n\r\n链接法\r\n即当不同的关键字映射到同一单元时，在同一单元内使用链表来保存这些关键字\r\n\r\n开放寻址法\r\n即当插入数据时，如果发现关键字被映射到的单元存在数据了，说明发生了冲突，就继续寻找下一个单元，直到找到可用单元为止\r\n\r\n而因为开放寻址法方案属于占用其他关键字映射单元的位置，所以后续的关键字更容易出现哈希冲突，因此容易出现性能下降\r\n\r\n链表\r\n既然上面提到了链表，这里我们简单聊一下链表的基础知识。链表分为很多种类型，常用的数据结构包括：队列，栈，双向链表等\r\n\r\n链表，就是由不同的链表节点组成的一种数据结构。链表节点一般由元素+指向下一节点的指针组成。而双向链表，顾名思义，则是由指向上一节点的指针+元素+指向下一节点的指针组成\r\n\r\n对于数据结构的内容，我们不过多展开，我们之后会有专门的内容去详细介绍数据结构\r\n\r\nphp数组\r\nphp解决哈希冲突的方式是使用了链接法，所以php数组是由哈希表+链表实现，准确来说，是由哈希表+双向链表实现\r\n\r\n内部结构-哈希表\r\nHashTable结构体主要用来存放哈希表的基本信息\r\n```\r\ntypedef struct _hashtable { \r\n\r\n    uint nTableSize;        // hash Bucket的大小，即哈希表的容量，最小为8，以2x增长。\r\n\r\n    uint nTableMask;        // nTableSize-1 ， 索引取值的优化\r\n\r\n    uint nNumOfElements;    // hash Bucket中当前存在的元素个数，count()函数会直接返回此值 \r\n\r\n    ulong nNextFreeElement; // 下一个可使用的数字键值\r\n\r\n    Bucket *pInternalPointer;   // 当前遍历的指针（foreach比for快的原因之一）\r\n\r\n    Bucket *pListHead;          // 存储整个哈希表的头元素指针\r\n\r\n    Bucket *pListTail;          // 存储整个哈希表的尾元素指针\r\n\r\n    Bucket **arBuckets;         // 存储hash数组\r\n\r\n    dtor_func_t pDestructor;    // 在删除元素时执行的回调函数，用于资源的释放\r\n\r\n    zend_bool persistent;       //指出了Bucket内存分配的方式。如果persisient为TRUE，则使用操作系统本身的内存分配函数为Bucket分配内存，否则使用PHP的内存分配函数。\r\n\r\n    unsigned char nApplyCount; // 标记当前hash Bucket被递归访问的次数（防止多次递归）\r\n\r\n    zend_bool bApplyProtection;// 标记当前hash桶允许不允许多次访问，不允许时，最多只能递归3次\r\n\r\n#if ZEND_DEBUG\r\n\r\n    int inconsistent;\r\n\r\n#endif\r\n\r\n} HashTable;\r\n```\r\nBucket结构体则用于保存数据的具体内容\r\n```\r\ntypedef struct bucket {\r\n\r\n    ulong h;            // 对char *key进行hash后的值，或者是用户指定的数字索引值\r\n\r\n    uint nKeyLength;    // hash关键字的长度，如果数组索引为数字，此值为0\r\n\r\n    void *pData;        // 指向value，一般是用户数据的副本，如果是指针数据，则指向pDataPtr\r\n\r\n    void *pDataPtr;     // 如果是指针数据，此值会指向真正的value，同时上面pData会指向此值\r\n\r\n    struct bucket *pListNext;   // 指向整个哈希表的该单元的下一个元素\r\n\r\n    struct bucket *pListLast;   // 指向整个哈希表的该单元的上一个元素\r\n\r\n    struct bucket *pNext;       // 指向由于哈希冲突导致存放在同一个单元的链表中的下一个元素\r\n\r\n    struct bucket *pLast;       // 指向由于哈希冲突导致存放在同一个单元的链表中的上一个元素\r\n\r\n    // 保存当前值所对于的key字符串，这个字段只能定义在最后，实现变长结构体\r\n\r\n    char arKey[1];              \r\n\r\n} Bucket;\r\n```\r\n其中Bucket结构体内有指向用户数据的pData元素，其实是指向了之前我们介绍的变量zval结构体，这也是为什么当创建数组时，会出现数组元素+1的变量容器。\r\n\r\n哈希表内部结构关系图\r\n![](https://img.php.cn/upload/image/589/725/857/1566459270846986.png)\r\n从上图我们可以看出，Bucket在存放数据的时候，如果存在哈希冲突，则将多个关键字映射到链表中，由此组成了双向链表\r\n\r\n总结\r\n\r\n　　今天，我们以数组作为切入点，简单了解了下基本的数据结构：哈希表和链表；并且了解了数组的底层实现，即哈希表+双向链表。其实哈希表作为php中最重要的数据结构，用处很广。变量的符号表，函数列表等都是用哈希表来存储的', '1', '4', '0', '2', '0', '0', '0', '数组是PHPer最常用的数据类型，同时php容易上手也得益于其强大的数组，但是数组在php中是如何实现的呢？  首先，我们还是先了解下相关的数据结构，为下面的内容打好基础  哈希表 哈希表，顾名思义，即将不同的关键字...', '', '2020-04-14 16:11:41', '2020-04-23 16:29:40');
INSERT INTO `blog_articles` VALUES ('163', '理解RESTful架构', 'http://www.ruanyifeng.com/blog/2011/09/restful.html', '1', '14', '0', '1', '0', '0', '0', 'http://www.ruanyifeng.com/blog/2011/09/restful.html', '', '2020-04-15 15:08:16', '2020-04-15 15:08:16');
INSERT INTO `blog_articles` VALUES ('164', '怎样实现大整数相加？', '因为对于较大的整数，我们无法一步就直接计算出结果，所以不得不把计算过程拆分成一个一个小步骤来完成。\r\n\r\n不仅仅是人脑，对于计算机来说也可以这样解决。程序不可能通过一条指令计算出两个大整数之和，却可以像列竖式一样将运算拆解成若干小运算。\r\n\r\n可是，如果大整数超出了long型的范围，该如何存储这个数呢？\r\n我们想到了数组，可以用数组的每一个元素存储整数的每一个数位。\r\n\r\n在程序中列出的 “竖式” 究竟是什么样子呢？我们以 426709752318 + 95481253129 为例，来看看大整数相加的详细步骤：\r\n> 。。。\r\n————————————————\r\n版权声明：本文为CSDN博主「allyyhh」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/allyyhh/java/article/details/88602088', '1', '4', '0', '1', '0', '0', '0', '因为对于较大的整数，我们无法一步就直接计算出结果，所以不得不把计算过程拆分成一个一个小步骤来完成。  不仅仅是人脑，对于计算机来说也可以这样解决。程序不可能通过一条指令计算出两个大整数之和，却可以像列竖...', '', '2020-04-21 11:20:03', '2020-04-21 11:20:04');
INSERT INTO `blog_articles` VALUES ('165', '常用流媒体协议及应用场景', '题外话：\r\n\r\nHTTP渐进下载流媒体播放:  基于TCP。\r\n\r\nyy、乐视、爱奇艺、优酷土豆、搜狐视频、花椒直播，主要还是通过rtmp&hls来实现的，\r\n\r\n但他们也意识到rtmp的天生缺陷，所以不管是技术预研也好，还是测试版也好，都已经或多或少在弄WebRTC了。\r\n\r\n   \r\n\r\n流媒体概述：\r\n\r\n所谓流媒体是指采用流式传输的方式在 Internet 播放的媒体格式。 \r\n流媒体又叫流式媒体，它是指商家用一个视频传送服务器把节目当成数据包发出，传送到网络上。\r\n用户通过解压设备对这些数据进行解压后，节目就会像发送前那样显示出来。\r\n流媒体以流的方式在网络中传输音频、视频和多媒体文件的形式。\r\n流媒体文件格式是支持采用流式传输及播放的媒体格式。\r\n流式传输方式是将视频和音频等多媒体文件经过特殊的压缩方式分成一个个压缩包，\r\n由服务器向用户计算机连续、实时传送。在采用流式传输方式的系统中，用户不必像非流式播放那样等到整个文件\r\n全部下载完毕后才能看到当中的内容，而是只需要经过几秒钟或几十秒的启动延时即可在用户计算机上利用\r\n相应的播放器对压缩的视频或音频等流式媒体文件进行播放，剩余的部分将继续进行下载，直至播放完毕。\r\n\r\n   \r\n\r\nRTP :(Real-time Transport Protocol)\r\n\r\n是用于Internet上针对多媒体数据流的一种传输层协议.RTP 协议和 RTP 控制协议 RTCP 一起使用，\r\n而且它是建立在 UDP 协议上的.\r\nRTP 不像http和ftp可完整的下载整个影视文件，它是以固定的数据率在网络上发送数据，客户端也是按照这种速度观看影视文件，当\r\n影视画面播放过后，就不可以再重复播放，除非重新向服务器端要求数据。\r\n\r\n   \r\n\r\nRTCP:Real-time Transport Control Protocol 或 RTP Control Protocol或简写 RTCP)\r\n\r\n实时传输控制协议,是实时传输协议(RTP)的一个姐妹协议.\r\n\r\n注:--:RTP 协议和 RTP控制协议(RTCP) 一起使用，而且它是建立在UDP协议上的（一般用于视频会议）\r\n\r\nRTSP:(Real Time Streaming Protocol)\r\n\r\n实时流媒体会话协议,SDP(会话描述协议)，RTP(实时传输协议)。\r\n\r\n是用来控制声音或影像的多媒体串流协议,RTSP 提供了一个可扩展框架，使实时数据，如音频与视频的受控、点播成为可能。\r\n媒体数据使用rtp,rtcp协议。\r\n一般使用udp 作为传输层。适合IPTV场景。\r\n数据源包括现场数据与存储在剪辑中的数据。该协议目的在于控制多个数据发送连接，为选择发送通道，如UDP、多播UDP与TCP提供途\r\n径，并为选择基于RTP上发送机制提供方法\r\n传输时所用的网络通讯协定并不在其定义的范围内，服务器端可以自行选择使用TCP或UDP来传送串流内容，比较能容忍网络延迟.\r\n\r\n\r\n--->:RTSP 与 RTP 最大的区别在于：RTSP 是一种双向实时数据传输协议，它允许客户端向服务器端发送请求，如回放、快进、倒退等操作。当\r\n然，RTSP 可基于 RTP 来传送数据，还可以选择 TCP、UDP、组播 UDP 等通道来发送数据，具有很好的扩展性。它时一种类似与http协议\r\n的网络应用层协议.\r\n\r\nWebRTC:\r\n\r\nweb端实现流媒体的协议。google刚推出WebRTC的时候巨头们要么冷眼旁观，要么抵触情绪很大。使用RTP协议传输。\r\n\r\n   \r\n\r\nRTMP(Real Time Messaging Protocol)\r\n\r\nMacromedia 开发的一套视频直播协议，现在属于 Adobe。和 HLS 一样都可以应用于视频直播，基于TCP不会丢失。\r\n// 区别是 RTMP 基于 flash 无法在 iOS 的浏览器里播放，但是实时性比 HLS 要好。\r\n实时消息传送协议是 Adobe Systems 公司为 Flash 播放器和服务器之间音频、视频和数据传输开发的开放协议.\r\n // iOS 代码里面一般常用的是使用 RTMP 推流，可以使用第三方库 librtmp-iOS 进行推流，librtmp 封装了一些核心的 API 供使用者调用\r\nRTMP 协议也要客户端和服务器通过\"握手\"来建立 RTMP Connection，然后在Connection上传输控制信息。RTMP 协议传输时会对数据格式化，而实际传输的时候为了更好地实现多路复用、分包和信息的公平性，发送端会把Message划分为带有 Message ID的Chunk，每个Chunk可能是一个单独的Message，\r\n也可能是Message的一部分，在接受端会根据Chunk中包含的data的长度，message id和message的长度把chunk还原成完整的Message，从而实现信息的收发。\r\n\r\nHLS:HTTP Live Streaming(HLS)\r\n\r\n是苹果公司(Apple Inc.)实现的基于HTTP的流媒体传输协议，\r\n\r\n可实现流媒体的直播和点播 ,主要应用在iOS系\r\n统，为iOS设备(如iPhone、iPad)提供音视频直播和点播方案。\r\nHLS 点播，基本上就是常见的分段HTTP点播，不同在于，它的分段非常小。\r\n相对于常见的流媒体直播协议，例如RTMP协议、RTSP 协议、MMS 协议等，HLS 直播最大的不同在于，直播客户端获取到的，并不是一个完\r\n整的数据流。\r\nHLS 协议在服务器端将直播数据流存储为连续的、很短时长的媒体文件(MPEG-TS格式)，而客户端则不断的下载并播放这些小文件，\r\n因为服务器端总是会将最新的直播数据生成新的小文件，这样客户端只要不停的按顺序播放从服务器获取到的文件，就实现了直播。\r\n由此可见，基本上可以认为，HLS 是以>>点播的技术方式来实现直播<<。由于数据通过 HTTP 协议传输，所以完全不用考虑防火墙或者代理的问\r\n题,而且分段文件的时长很短，客户端可以很快的选择和切换码率，以适应不同带宽条件下的播放。不过HLS的这种技术特点，决定了它的\r\n延迟一般总是会高于普通的流媒体直播协议。\r\n// iOS和 Android 都天然支持这种协议，配置简单，直接使用 video 标签即可\r\n\r\n***VLS ：是一种流服务器，专门用来解决流的各种问题，它也具有一些 VLC 的特征。 videolan 作为服务器可以输出http，rtp，rtsp的流。\r\n\r\n\r\n原则上，RTSP，RTMP，HTTP 都可以做直播和点播，但一般做直播用 RTSP和RTMP，做点播用 HTTP。我们选用的是RTMP协议。\r\n\r\n \r\n\r\n各种协议延时及其原因\r\n\r\nrtmp和httpflv：这两种协议大致数据一致，所以延时原因都是差不多的。按理说tcp流式传输直播因该都是延时极低的，为什么rtmp和httpflv还有延时呢？原因在h264上，rtmp和httpflv都是传输的flv tag，视频tag的数据平常就是h264数据，h264解码有个IBP，I是关键帧，是一帧完整的图像，必须要先有个I才能解码后面的BP，BP帧可以随便少，但是I帧不能少，所以I帧必须是在flv tag传输中第二个传输的（第一个是h264spspps），但是I帧在h264流里不是常有的，是隔一段才有个I帧，这个一段的间隔，俗称GOP，当编码时候GOP设置很短，当客户端连接上来，服务器会以最快速度找到流中最近I帧，从I帧开始发送直播数据，然而当GOP很长，I帧间隔很长，或者等待下一个I帧开始向新连接发送数据，或者在缓存里找最近的上一个I帧开始发送，这里就是rtmp和hls协议延时的关键了，在各大cdn平台，叫\"rtmp秒开技术\"，原理就是将推流数据二次解编码，设置很小的gop。总的来说，gop设置1s，在不考虑网络传输链路延时情况，数据延时最大就为1s，运气好刚好就是I帧就是0延时！', '1', '14', '0', '1', '0', '0', '0', '题外话：  HTTP渐进下载流媒体播放:  基于TCP。  yy、乐视、爱奇艺、优酷土豆、搜狐视频、花椒直播，主要还是通过rtmp&hls来实现的，  但他们也意识到rtmp的天生缺陷，所以不管是技术预研也好，还是测试版也好，都已...', '', '2020-04-21 11:41:52', '2020-04-21 11:41:53');
INSERT INTO `blog_articles` VALUES ('166', 'MySQL索引原理', 'MySQL索引原理', '1', '13', '0', '1', '0', '0', '0', 'MySQL索引原理', '', '2020-04-23 16:27:34', '2020-04-23 16:27:35');
INSERT INTO `blog_articles` VALUES ('167', 'Redis中zset数据结构', 'Redis中zset数据结构', '1', '11', '0', '2', '0', '0', '0', 'Redis中zset数据结构', '', '2020-04-23 16:28:38', '2020-04-29 10:01:26');

-- ----------------------------
-- Table structure for `blog_categories`
-- ----------------------------
DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE `blog_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `post_count` int(11) NOT NULL DEFAULT '0' COMMENT '文章数',
  `cascade` tinyint(4) NOT NULL DEFAULT '0' COMMENT '归类=> 0:顶级分类',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_categories_name_index` (`name`),
  KEY `blog_categories_cascade_index` (`cascade`),
  KEY `blog_categories_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog_categories
-- ----------------------------
INSERT INTO `blog_categories` VALUES ('1', 'html', 'Ullam voluptate aut excepturi nesciunt earum officia laudantium.', '0', '0', '1', '1997-09-05 10:05:30', '1997-09-05 10:05:30');
INSERT INTO `blog_categories` VALUES ('2', 'css', 'Ab et rerum necessitatibus dolores porro aliquam qui.', '0', '0', '1', '1978-10-30 02:48:28', '1978-10-30 02:48:28');
INSERT INTO `blog_categories` VALUES ('3', 'js', 'In deleniti occaecati autem temporibus eveniet.', '0', '0', '1', '2018-08-10 05:35:19', '2018-08-10 05:35:19');
INSERT INTO `blog_categories` VALUES ('4', 'php', 'Molestias dolor dolorem molestiae iure doloribus enim est.', '29', '0', '1', '1975-08-23 07:27:40', '2020-04-21 11:20:03');
INSERT INTO `blog_categories` VALUES ('5', 'java', 'Sequi fugiat officiis et at et.', '0', '0', '1', '2008-08-18 05:50:17', '2008-08-18 05:50:17');
INSERT INTO `blog_categories` VALUES ('6', 'python', 'Praesentium dolorem aperiam sit itaque.', '0', '0', '1', '2007-08-14 22:29:03', '2007-08-14 22:29:03');
INSERT INTO `blog_categories` VALUES ('7', '.net', 'Voluptas aperiam in ducimus sed voluptates adipisci architecto.', '0', '0', '1', '2016-11-09 05:37:46', '2016-11-09 05:37:46');
INSERT INTO `blog_categories` VALUES ('8', '.asp', 'Cupiditate dolor est fugiat labore.', '0', '0', '1', '2002-03-03 04:43:36', '2002-03-03 04:43:36');
INSERT INTO `blog_categories` VALUES ('9', 'myasql', 'Voluptates consequatur id aut molestias ut perspiciatis qui.', '0', '0', '1', '2018-02-28 06:05:59', '2018-02-28 06:05:59');
INSERT INTO `blog_categories` VALUES ('10', 'centos', 'Aut quis voluptas sit vero.', '0', '0', '1', '1981-05-09 12:46:29', '1981-05-09 12:46:29');
INSERT INTO `blog_categories` VALUES ('11', 'Redis', 'redis常见面试题', '6', '0', '1', '2020-03-31 10:38:45', '2020-04-23 16:28:38');
INSERT INTO `blog_categories` VALUES ('12', 'Laravel', '常见问题', '3', '0', '1', '2020-03-31 10:43:22', '2020-03-31 11:30:51');
INSERT INTO `blog_categories` VALUES ('13', 'MySQL', 'mysql', '3', '0', '1', '2020-03-31 10:51:34', '2020-04-23 16:27:34');
INSERT INTO `blog_categories` VALUES ('14', 'HTTP', 'HTTP', '6', '0', '1', '2020-04-01 10:43:17', '2020-04-21 11:41:52');
INSERT INTO `blog_categories` VALUES ('15', 'Linux', 'Linux', '3', '0', '1', '2020-04-02 11:30:08', '2020-04-13 17:02:03');
INSERT INTO `blog_categories` VALUES ('16', 'GIT', 'git', '1', '0', '1', '2020-04-08 14:18:00', '2020-04-08 14:21:10');

-- ----------------------------
-- Table structure for `blog_tags`
-- ----------------------------
DROP TABLE IF EXISTS `blog_tags`;
CREATE TABLE `blog_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name',
  PRIMARY KEY (`id`),
  KEY `blog_tags_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog_tags
-- ----------------------------
INSERT INTO `blog_tags` VALUES ('5', 'CGI');
INSERT INTO `blog_tags` VALUES ('7', 'HTTP');
INSERT INTO `blog_tags` VALUES ('6', 'Laravel');
INSERT INTO `blog_tags` VALUES ('3', '抽象类');
INSERT INTO `blog_tags` VALUES ('2', '接口');
INSERT INTO `blog_tags` VALUES ('8', '算法');
INSERT INTO `blog_tags` VALUES ('1', '美景');
INSERT INTO `blog_tags` VALUES ('4', '面试题');

-- ----------------------------
-- Table structure for `blog_tags_link_articles`
-- ----------------------------
DROP TABLE IF EXISTS `blog_tags_link_articles`;
CREATE TABLE `blog_tags_link_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL COMMENT '文章id',
  `tag_id` int(10) unsigned NOT NULL COMMENT '标签id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id, 对应article->user_id',
  PRIMARY KEY (`id`),
  KEY `blog_tags_link_articles_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog_tags_link_articles
-- ----------------------------
INSERT INTO `blog_tags_link_articles` VALUES ('4', '102', '2', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('5', '102', '3', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('6', '102', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('7', '101', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('8', '10', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('9', '10', '5', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('10', '39', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('13', '63', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('21', '66', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('24', '69', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('25', '70', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('26', '79', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('27', '84', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('31', '97', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('32', '103', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('33', '104', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('34', '105', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('35', '106', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('37', '107', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('38', '108', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('39', '109', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('40', '110', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('41', '111', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('42', '112', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('47', '113', '6', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('48', '114', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('49', '114', '7', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('52', '115', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('53', '115', '7', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('59', '120', '8', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('60', '120', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('63', '123', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('65', '125', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('66', '126', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('68', '127', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('69', '128', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('70', '147', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('71', '129', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('73', '150', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('74', '151', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('75', '152', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('76', '153', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('77', '154', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('78', '155', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('79', '156', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('81', '85', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('82', '157', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('83', '158', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('84', '124', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('85', '159', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('88', '161', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('89', '162', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('90', '160', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('91', '163', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('92', '164', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('93', '165', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('94', '166', '4', '1');
INSERT INTO `blog_tags_link_articles` VALUES ('95', '167', '4', '1');

-- ----------------------------
-- Table structure for `course_articles`
-- ----------------------------
DROP TABLE IF EXISTS `course_articles`;
CREATE TABLE `course_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题：充当目录',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复数',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '友好SEO',
  `policy` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0:免费，1收费，2限免，注:此字段于订单无关',
  `course_section_id` int(10) unsigned NOT NULL COMMENT '教程章节 id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户 id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_articles_title_index` (`title`),
  KEY `course_articles_course_section_id_index` (`course_section_id`),
  KEY `course_articles_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of course_articles
-- ----------------------------
INSERT INTO `course_articles` VALUES ('1', 'Janiya Jacobs V', 'Voluptatem sit aperiam sunt sunt. Dignissimos illo blanditiis velit tenetur voluptas dolor praesentium. Doloremque ut modi quisquam at placeat est.', '0', '0', null, '0', '5', '1', '1993-02-17 00:51:40', '1993-02-17 00:51:40');
INSERT INTO `course_articles` VALUES ('2', 'Gunner Metz', 'Debitis incidunt natus dolores aliquam qui modi. Nemo provident iure temporibus molestias molestiae unde. Eos adipisci doloribus velit quod voluptates nisi distinctio molestiae.', '0', '0', null, '0', '26', '1', '2012-07-17 05:35:29', '2012-07-17 05:35:29');
INSERT INTO `course_articles` VALUES ('3', 'Dr. Keven Bauch MD', 'In cum quos iste error recusandae velit eum. Harum tempore omnis aut omnis consectetur. Quo unde quod est. Modi aut est dolores ullam omnis non.', '0', '0', null, '0', '14', '1', '2013-09-14 00:14:38', '2013-09-14 00:14:38');
INSERT INTO `course_articles` VALUES ('4', 'Mr. Earl Hartmann I', 'Quisquam modi nam harum nihil dolor magnam qui. Cum quia itaque et in explicabo. Provident itaque quia ratione beatae incidunt aut ab.', '0', '0', null, '0', '29', '1', '1996-07-09 08:33:25', '1996-07-09 08:33:25');
INSERT INTO `course_articles` VALUES ('5', 'Mr. Cleo Konopelski PhD', 'Quos dolorum praesentium fugit distinctio quia doloremque. Perferendis impedit eos qui illo ratione doloremque alias. Reiciendis voluptatem pariatur dolorem nihil. Eum et quae maiores.', '0', '0', null, '0', '18', '1', '1995-02-13 15:31:15', '1995-02-13 15:31:15');
INSERT INTO `course_articles` VALUES ('6', 'Perry Wisozk', 'Et quis corrupti facilis tenetur. In quo et consequatur corporis autem aut. Consequuntur velit aut non. Est aperiam nihil similique fugiat veritatis.', '0', '0', null, '0', '2', '1', '2020-03-08 22:43:30', '2020-03-08 22:43:30');
INSERT INTO `course_articles` VALUES ('7', 'Dr. Herminia Labadie V', 'Et ut soluta quia earum. Labore distinctio non temporibus fugit. Occaecati est qui sit dolore modi ut et harum. Itaque id ut praesentium quam repudiandae enim similique.', '0', '0', null, '0', '28', '1', '1991-06-20 16:08:20', '1991-06-20 16:08:20');
INSERT INTO `course_articles` VALUES ('8', 'Berniece Davis', 'Saepe animi cumque deleniti animi enim. Explicabo et ipsa alias quidem suscipit. Sit doloribus consequatur et tenetur sint ipsam. Autem deleniti non quae veritatis amet cupiditate.', '0', '0', null, '0', '45', '1', '1997-02-11 20:04:08', '1997-02-11 20:04:08');
INSERT INTO `course_articles` VALUES ('9', 'Kelli Nitzsche', 'Quia voluptas quas et rem rerum tenetur iure. Qui sunt vel doloribus iusto. Assumenda quo ducimus aut nihil.', '0', '0', null, '0', '42', '1', '1977-04-07 12:01:38', '1977-04-07 12:01:38');
INSERT INTO `course_articles` VALUES ('10', 'Mozelle Langworth', 'Sit omnis sed cumque eum ex neque corrupti qui. Necessitatibus eveniet tempora in aperiam molestias. Omnis aut culpa impedit nulla facilis totam.', '0', '0', null, '0', '29', '1', '2004-08-23 04:48:09', '2004-08-23 04:48:09');
INSERT INTO `course_articles` VALUES ('11', 'Odessa Marks DDS', 'Ducimus repudiandae temporibus fugit fuga. Reiciendis quas quam velit aliquam.', '0', '0', null, '0', '30', '1', '2011-11-29 23:36:26', '2011-11-29 23:36:26');
INSERT INTO `course_articles` VALUES ('12', 'Dr. Chase Schulist', 'Autem est explicabo harum recusandae. Pariatur sed illo vel dicta. Numquam sit rerum nemo debitis officiis cum.', '0', '0', null, '0', '9', '1', '1986-08-27 03:22:27', '1986-08-27 03:22:27');
INSERT INTO `course_articles` VALUES ('13', 'Remington Kassulke', 'Quod rerum officia consequatur harum qui vel id. Ratione necessitatibus id sunt porro.', '0', '0', null, '0', '39', '1', '1970-11-25 23:00:30', '1970-11-25 23:00:30');
INSERT INTO `course_articles` VALUES ('14', 'Ashton Brown', 'Odit rerum ad et optio ut nemo modi. Asperiores et voluptate temporibus numquam. Quasi maxime molestias et deserunt et enim.', '0', '0', null, '0', '27', '1', '1983-11-14 22:06:25', '1983-11-14 22:06:25');
INSERT INTO `course_articles` VALUES ('15', 'Brady Gislason', 'Perferendis ut cum animi rem ducimus ducimus. Sit qui vitae dolore ipsa. Necessitatibus aperiam aut non. Rerum quo eaque quo mollitia. Hic delectus placeat consequatur ad.', '0', '0', null, '0', '19', '1', '1991-03-03 16:50:03', '1991-03-03 16:50:03');
INSERT INTO `course_articles` VALUES ('16', 'Deion Weber', 'Et soluta est quam corrupti. Impedit quae nostrum cum nemo. Aperiam in repellat qui voluptatem eum neque. Cupiditate voluptate nobis veritatis eos enim velit.', '0', '0', null, '0', '35', '1', '1976-07-11 13:08:38', '1976-07-11 13:08:38');
INSERT INTO `course_articles` VALUES ('17', 'Shanie Crooks', 'Qui aut provident mollitia magnam sit. Voluptatem eveniet hic et magni tempore veritatis quo. Aut quo unde cum dicta. Molestias dignissimos officiis dolore omnis.', '0', '2', null, '0', '49', '1', '1999-07-24 20:21:19', '2020-03-30 13:32:37');
INSERT INTO `course_articles` VALUES ('18', 'Dariana Kilback', 'Corporis et quam id sit qui voluptatem labore at. Labore non ut repellat distinctio atque quos aut sed. Repellat consectetur ducimus non laboriosam est. Voluptatum ea vero aut quidem.', '0', '0', null, '0', '46', '1', '1972-03-14 17:36:09', '1972-03-14 17:36:09');
INSERT INTO `course_articles` VALUES ('19', 'Dr. Miles Kirlin', 'Qui veritatis autem quidem ea voluptatem quam non non. Doloribus excepturi autem rerum sunt. Ea quibusdam aut quaerat distinctio autem sit.', '0', '0', null, '0', '50', '1', '1984-08-08 10:32:00', '1984-08-08 10:32:00');
INSERT INTO `course_articles` VALUES ('20', 'Mr. Bruce Ritchie', 'Rem et id maxime in quis. Nesciunt aut eum voluptatem est ipsa. Assumenda quia et et dolore iure. Nihil vero nam quia totam.', '0', '0', null, '0', '16', '1', '1982-07-13 21:38:28', '1982-07-13 21:38:28');
INSERT INTO `course_articles` VALUES ('21', 'Prof. Fannie Bauch Jr.', 'Alias ipsum sit dignissimos. Enim quaerat pariatur quia consequatur. Voluptas dolorem atque nam omnis. Sed minima distinctio autem quidem corrupti qui omnis. Ut dolore voluptates ratione.', '0', '0', null, '0', '37', '1', '1991-09-30 18:51:46', '1991-09-30 18:51:46');
INSERT INTO `course_articles` VALUES ('22', 'Prof. Gaetano D\'Amore', 'Nostrum iste et quod dolores velit eveniet necessitatibus. Quod doloribus incidunt eligendi. Pariatur eum qui neque. Id et eveniet voluptas. Maxime rerum omnis nam nobis repudiandae quam.', '0', '0', null, '0', '9', '1', '1973-05-20 06:37:28', '1973-05-20 06:37:28');
INSERT INTO `course_articles` VALUES ('23', 'Cassie Rosenbaum', 'Consequatur et et cupiditate. Quaerat sit iste vero dolore doloremque. Quia est sint ad occaecati repellat id quod.', '0', '0', null, '0', '6', '1', '1980-02-20 04:43:38', '1980-02-20 04:43:38');
INSERT INTO `course_articles` VALUES ('24', 'Mrs. Desiree Feest III', 'Iure temporibus assumenda quidem. Tenetur eaque numquam voluptatem vel non ut totam dolor. Et facilis deserunt excepturi aperiam sint harum.', '0', '0', null, '0', '20', '1', '1983-10-11 01:54:56', '1983-10-11 01:54:56');
INSERT INTO `course_articles` VALUES ('25', 'Gonzalo Abshire', 'Harum eius saepe autem vitae numquam quia excepturi. Sint ipsum eaque culpa cum ullam et inventore.', '0', '0', null, '0', '20', '1', '2015-01-25 03:46:41', '2015-01-25 03:46:41');
INSERT INTO `course_articles` VALUES ('26', 'Elna Bernhard', 'Quis qui eius ducimus saepe voluptas sunt. Explicabo quas sit unde. Sint blanditiis harum aperiam et. Aut a ad est ea corporis.', '0', '0', null, '0', '50', '1', '1996-03-27 09:58:49', '1996-03-27 09:58:49');
INSERT INTO `course_articles` VALUES ('27', 'Reva Ledner MD', 'Laudantium fuga perferendis consequatur dolorem quia eum natus. Blanditiis quas facilis et eos omnis.', '0', '0', null, '0', '16', '1', '2008-05-14 09:42:27', '2008-05-14 09:42:27');
INSERT INTO `course_articles` VALUES ('28', 'Edwardo Fadel', 'Veritatis cupiditate est delectus voluptas vero perferendis. Ea dicta nihil eum voluptatem est. Enim et sit et deleniti quidem sit vel sed.', '0', '0', null, '0', '36', '1', '1985-06-28 00:52:49', '1985-06-28 00:52:49');
INSERT INTO `course_articles` VALUES ('29', 'Vivianne Jones', 'Odio recusandae sed accusantium est. Molestiae est et ipsam velit est repellendus. Cumque quae provident aut neque sed aut tempore.', '0', '0', null, '0', '24', '1', '2011-08-02 22:22:33', '2011-08-02 22:22:33');
INSERT INTO `course_articles` VALUES ('30', 'Price Collins', 'Nihil odio neque aut dolorem quo. Libero facilis porro consequatur repellat eum repellendus provident. Aut est omnis minus.', '0', '0', null, '0', '44', '1', '2005-08-20 10:01:20', '2005-08-20 10:01:20');
INSERT INTO `course_articles` VALUES ('31', 'Dan Rodriguez', 'Ratione earum aut totam ratione aut earum. Aut quae quis et. A consequuntur sunt tenetur quas aut aut. Consectetur veritatis reiciendis est quam doloribus possimus error.', '0', '0', null, '0', '8', '1', '1971-08-30 20:17:03', '1971-08-30 20:17:03');
INSERT INTO `course_articles` VALUES ('32', 'Laurence Runte', 'Error sunt et eligendi autem et. Est ea sint et sequi. Harum iste rem velit doloremque cupiditate et. Excepturi provident ratione earum modi veritatis voluptatibus sint quidem.', '0', '0', null, '0', '4', '1', '1979-06-30 17:06:43', '1979-06-30 17:06:43');
INSERT INTO `course_articles` VALUES ('33', 'Simeon Reichert', 'Qui officia voluptas nam. Et molestiae culpa debitis fugiat. Repudiandae animi ab laudantium autem est.', '0', '0', null, '0', '43', '1', '2014-03-24 02:26:50', '2014-03-24 02:26:50');
INSERT INTO `course_articles` VALUES ('34', 'Cassie Leannon', 'Qui dolorum rerum aliquam autem consequatur quo. Ea dolores non quas laudantium. Ut repudiandae minus nobis ut libero autem laudantium. Quisquam perferendis et libero ducimus sunt et aliquid maiores.', '0', '0', null, '0', '22', '1', '1988-04-27 22:55:34', '1988-04-27 22:55:34');
INSERT INTO `course_articles` VALUES ('35', 'Maurine Purdy PhD', 'Quasi at sit et fugiat. Accusamus quia rerum atque quia maxime. Nemo sapiente iusto nemo nihil corrupti rem. Repellat illo veritatis quos aperiam eum. Sed vel ea quasi repellendus molestiae illum.', '0', '0', null, '0', '40', '1', '1989-11-17 21:01:30', '1989-11-17 21:01:30');
INSERT INTO `course_articles` VALUES ('36', 'Christy Schaefer', 'Qui nemo non vitae. Ea voluptate fuga consequatur error. Consequatur incidunt vel alias exercitationem.', '0', '0', null, '0', '11', '1', '1989-04-21 18:28:59', '1989-04-21 18:28:59');
INSERT INTO `course_articles` VALUES ('37', 'Lucienne Walsh', 'Qui est ut voluptatem ab quia voluptatem ducimus. Molestiae et quam sed. Est eum ab in iste expedita eos rerum.', '0', '0', null, '0', '32', '1', '2017-02-20 17:30:34', '2017-02-20 17:30:34');
INSERT INTO `course_articles` VALUES ('38', 'Betsy Kunze', 'Ut earum ullam ipsam ut voluptatibus. Quibusdam omnis consectetur architecto ratione quia doloremque et. Quidem rerum dolorem praesentium nostrum.', '0', '0', null, '0', '22', '1', '2007-11-26 14:07:25', '2007-11-26 14:07:25');
INSERT INTO `course_articles` VALUES ('39', 'Matilde Littel', 'Id quod voluptatem et voluptatem. Necessitatibus sunt ut aut non. Asperiores sunt porro error quo occaecati illo.', '0', '0', null, '0', '45', '1', '2003-07-19 22:20:20', '2003-07-19 22:20:20');
INSERT INTO `course_articles` VALUES ('40', 'Houston Homenick', 'Id cupiditate et repudiandae itaque eaque quaerat nobis modi. Vitae odio magni unde saepe voluptatibus et laborum. Sunt atque omnis ipsum magni est atque. Laboriosam sed unde sunt quia.', '0', '0', null, '0', '25', '1', '2016-05-06 06:03:10', '2016-05-06 06:03:10');
INSERT INTO `course_articles` VALUES ('41', 'Dr. Zion Simonis', 'Veniam commodi qui facere deserunt eligendi suscipit blanditiis magni. Et repudiandae ab rerum tempora. Et dolor vel in temporibus vel.', '0', '0', null, '0', '24', '1', '1997-07-30 00:07:15', '1997-07-30 00:07:15');
INSERT INTO `course_articles` VALUES ('42', 'Dr. Mateo Feeney', 'A consequatur eaque quia omnis numquam et voluptatum et. Est repellat tenetur et voluptatem reprehenderit et. Velit beatae fugit dolor.', '0', '0', null, '0', '24', '1', '2010-07-02 12:25:38', '2010-07-02 12:25:38');
INSERT INTO `course_articles` VALUES ('43', 'Josiane Kohler', 'Ut quas et culpa facere impedit et. Ut velit ad sapiente quia eaque. Assumenda deleniti porro minima quam corrupti harum voluptatum.', '0', '0', null, '0', '30', '1', '2001-09-01 14:10:42', '2001-09-01 14:10:42');
INSERT INTO `course_articles` VALUES ('44', 'Miss Felicia Schmidt', 'Aut nemo qui voluptatem perspiciatis voluptas exercitationem. Est non nulla earum aut illo sint. Amet praesentium vel ipsa deleniti vitae ipsam molestiae.', '0', '0', null, '0', '9', '1', '1985-02-26 16:00:29', '1985-02-26 16:00:29');
INSERT INTO `course_articles` VALUES ('45', 'Noemy Blanda', 'Non quis ut atque ipsum velit fugit vel. Officiis eaque quibusdam qui sit. Quae dolore ipsum ea ut aut voluptas quis.', '0', '0', null, '0', '5', '1', '1972-10-24 17:58:03', '1972-10-24 17:58:03');
INSERT INTO `course_articles` VALUES ('46', 'Rashad Murphy', 'Rerum explicabo officia ipsum minima rerum esse. Harum officiis quasi fuga ut veritatis voluptate perferendis. Debitis est quia odio quis non. Corrupti voluptas vel voluptates totam fugit sint qui.', '0', '0', null, '0', '40', '1', '2013-05-05 16:29:45', '2013-05-05 16:29:45');
INSERT INTO `course_articles` VALUES ('47', 'Doris Cassin', 'Itaque corporis distinctio cupiditate atque ut voluptatem. Expedita a culpa dolor accusamus hic. Id eius ut ad eius iusto harum voluptas.', '0', '0', null, '0', '1', '1', '2011-09-22 02:28:50', '2011-09-22 02:28:50');
INSERT INTO `course_articles` VALUES ('48', 'Eddie Bashirian', 'Sed nihil dolores qui aliquid. Laborum officiis debitis qui eum ut beatae. Quibusdam commodi dolore sunt animi repellat. Totam nobis accusamus ex possimus sequi.', '0', '0', null, '0', '15', '1', '1992-09-29 07:52:33', '1992-09-29 07:52:33');
INSERT INTO `course_articles` VALUES ('49', 'Theodora Jast', 'Et eos provident accusantium ex. Illo nulla autem cumque saepe officia quam. Est numquam velit dolorum adipisci modi dolorem.', '0', '0', null, '0', '45', '1', '1983-10-22 09:24:30', '1983-10-22 09:24:30');
INSERT INTO `course_articles` VALUES ('50', 'Anastasia Padberg', 'Veritatis error quia animi nisi est modi. Iusto qui modi doloribus in. Ut debitis maiores voluptas aut neque.', '0', '0', null, '0', '34', '1', '2002-05-15 21:12:15', '2002-05-15 21:12:15');
INSERT INTO `course_articles` VALUES ('51', 'Edmond Boyer PhD', 'Fugiat explicabo et maiores voluptatem voluptatem minima perferendis enim. Exercitationem aspernatur corrupti qui et.', '0', '0', null, '0', '16', '1', '1973-05-13 13:24:35', '1973-05-13 13:24:35');
INSERT INTO `course_articles` VALUES ('52', 'Rosina Durgan', 'Non suscipit iusto et laboriosam voluptatum perferendis. Vitae sint qui excepturi eveniet. Qui error officiis omnis non labore qui et.', '0', '0', null, '0', '18', '1', '1994-08-02 20:29:43', '1994-08-02 20:29:43');
INSERT INTO `course_articles` VALUES ('53', 'Linwood Daniel', 'Numquam explicabo quia eum. Occaecati similique sunt eos repudiandae inventore.', '0', '0', null, '0', '13', '1', '2018-01-16 02:24:23', '2018-01-16 02:24:23');
INSERT INTO `course_articles` VALUES ('54', 'Raegan Batz', 'Eveniet molestiae rerum debitis iusto. Repellat est ratione voluptas temporibus voluptas voluptatem labore et. Cumque nobis dolorum saepe atque facilis ducimus vero.', '0', '0', null, '0', '23', '1', '2017-01-27 22:34:07', '2017-01-27 22:34:07');
INSERT INTO `course_articles` VALUES ('55', 'Jenifer Hudson', 'Ipsam voluptas a eum. Ipsum maxime occaecati possimus quo voluptatem. Atque neque in reiciendis exercitationem eos non. Adipisci et itaque quam. Dicta non eius eveniet adipisci.', '0', '0', null, '0', '17', '1', '1972-08-19 22:03:33', '1972-08-19 22:03:33');
INSERT INTO `course_articles` VALUES ('56', 'Kurt Leannon', 'Odit minus nam enim velit quos id. Vel itaque ipsum rem et. Ut qui fugit eum sit est.', '0', '0', null, '0', '19', '1', '1991-04-20 05:50:28', '1991-04-20 05:50:28');
INSERT INTO `course_articles` VALUES ('57', 'Maximillian McGlynn', 'Excepturi quis est sit reprehenderit totam quod quis. Inventore recusandae iste praesentium distinctio adipisci voluptatem ut ex. Corrupti et quos est et facere esse.', '0', '0', null, '0', '50', '1', '1982-04-26 04:39:13', '1982-04-26 04:39:13');
INSERT INTO `course_articles` VALUES ('58', 'Rebeca Thompson', 'Eaque eos dignissimos repudiandae porro libero ea qui non. Distinctio modi ut dolores molestias asperiores et. Est aut eos libero est reprehenderit delectus consequuntur eos.', '0', '0', null, '0', '10', '1', '1987-06-01 09:26:29', '1987-06-01 09:26:29');
INSERT INTO `course_articles` VALUES ('59', 'Ms. Vanessa Auer PhD', 'Atque voluptatem mollitia consequatur laudantium. Delectus unde sit aut enim. Aut vitae tempora occaecati nulla molestiae accusamus.', '0', '0', null, '0', '45', '1', '2001-11-24 15:54:18', '2001-11-24 15:54:18');
INSERT INTO `course_articles` VALUES ('60', 'Bret Rempel', 'Et totam natus distinctio rerum atque ab quia et. Dicta doloribus sapiente aliquam fuga totam cum. Et nobis tempora culpa maxime nostrum et. Aut nobis sequi in animi voluptate modi ut.', '0', '0', null, '0', '48', '1', '1987-10-26 12:28:16', '1987-10-26 12:28:16');
INSERT INTO `course_articles` VALUES ('61', 'Luther Nicolas', 'Accusantium saepe dolorem voluptates est. Tempore reiciendis et numquam dignissimos reprehenderit illo aut. Dolores dolores consectetur laboriosam excepturi.', '0', '0', null, '0', '30', '1', '1980-10-05 02:08:59', '1980-10-05 02:08:59');
INSERT INTO `course_articles` VALUES ('62', 'Dr. Vito Stroman DDS', 'Harum accusamus explicabo aut incidunt rerum id. A totam et aliquam exercitationem sunt molestiae et. Nemo aut est in dignissimos ea aut enim. Facilis dolor accusamus porro nulla voluptatem cumque.', '0', '0', null, '0', '33', '1', '2009-12-07 12:19:59', '2009-12-07 12:19:59');
INSERT INTO `course_articles` VALUES ('63', 'Herminia Rempel', 'Voluptatem consequatur placeat beatae eligendi quo. Repellendus suscipit ipsum natus magnam aliquid et cum. Similique qui dicta saepe et ratione.', '0', '0', null, '0', '7', '1', '2011-09-19 15:14:27', '2011-09-19 15:14:27');
INSERT INTO `course_articles` VALUES ('64', 'Selmer Cartwright', 'Numquam aut nemo ipsa necessitatibus sint qui consectetur. Voluptas eius optio debitis qui. At non ea saepe facere ea vero modi.', '0', '0', null, '0', '20', '1', '1994-09-21 10:01:13', '1994-09-21 10:01:13');
INSERT INTO `course_articles` VALUES ('65', 'Claude Conroy', 'Et quis suscipit tempore architecto. Reprehenderit aliquam et non soluta non aut. Voluptatem nostrum voluptatem consequatur eum ab reprehenderit.', '0', '0', null, '0', '12', '1', '2018-05-19 00:16:20', '2018-05-19 00:16:20');
INSERT INTO `course_articles` VALUES ('66', 'Prof. Doug Haag', 'Qui optio nostrum minima officia eveniet. Eos provident incidunt est accusantium natus distinctio ea. Fugiat eveniet eos laboriosam et. Odio sapiente nam cumque rerum et velit.', '0', '0', null, '0', '20', '1', '1970-04-15 02:05:49', '1970-04-15 02:05:49');
INSERT INTO `course_articles` VALUES ('67', 'Lester Luettgen', 'Minima sint sit aliquid rerum quasi. Dolor excepturi consequuntur non necessitatibus. Possimus sunt iusto architecto.', '0', '0', null, '0', '44', '1', '1992-05-31 05:33:06', '1992-05-31 05:33:06');
INSERT INTO `course_articles` VALUES ('68', 'Dion Paucek III', 'Vitae delectus porro vel aut dolorem sed iusto. Inventore optio harum architecto accusamus commodi tempora. Deserunt vero nostrum et et consequatur.', '0', '0', null, '0', '27', '1', '2012-02-10 12:12:04', '2012-02-10 12:12:04');
INSERT INTO `course_articles` VALUES ('69', 'Ms. Lauryn Upton', 'Omnis qui qui consequatur est qui. Est eveniet corrupti eum ipsam praesentium eos dolorem ut. Dolore et vitae et ea ullam et dicta. Debitis architecto maiores qui earum illo autem.', '0', '0', null, '0', '23', '1', '2007-12-18 15:16:19', '2007-12-18 15:16:19');
INSERT INTO `course_articles` VALUES ('70', 'Dr. Chris Toy', 'Consequatur sunt sunt illo sit recusandae nobis. Illum est consequuntur asperiores qui. Aliquam quo quae velit doloremque ad non sint. Ut laboriosam omnis ut.', '0', '0', null, '0', '13', '1', '1985-11-18 05:46:09', '1985-11-18 05:46:09');
INSERT INTO `course_articles` VALUES ('71', 'Kariane Shanahan', 'Quisquam corrupti alias ut. Facilis deleniti ratione nemo et accusantium reprehenderit. Aliquam similique qui excepturi qui et explicabo ipsam.', '0', '0', null, '0', '41', '1', '1989-03-27 21:27:49', '1989-03-27 21:27:49');
INSERT INTO `course_articles` VALUES ('72', 'Dr. Stewart Mayer', 'Non cumque explicabo odio adipisci enim. Rem molestiae ut ut dolore et quaerat est amet. Praesentium tempora totam eum delectus.', '0', '0', null, '0', '6', '1', '1974-12-27 05:38:53', '1974-12-27 05:38:53');
INSERT INTO `course_articles` VALUES ('73', 'Mrs. Aurelia Ondricka Sr.', 'Magnam ut et incidunt officiis sunt veritatis maiores. Optio sit repellendus veniam ea. Aut incidunt eos sit at quia. Modi quam est minus praesentium occaecati explicabo.', '0', '0', null, '0', '30', '1', '2017-11-28 00:05:05', '2017-11-28 00:05:05');
INSERT INTO `course_articles` VALUES ('74', 'Mrs. Anabel Green', 'Quam fugiat eum animi animi asperiores molestiae repellat. Commodi repudiandae laborum magnam voluptate quas. Quo repudiandae aut et voluptatem sed. Illo cumque voluptatem expedita soluta.', '0', '0', null, '0', '25', '1', '1978-09-23 16:08:34', '1978-09-23 16:08:34');
INSERT INTO `course_articles` VALUES ('75', 'Dr. Bessie Bahringer', 'Saepe rerum pariatur eaque soluta. Quod ducimus dolorum vel fugit iusto corrupti aut. Quia culpa odit voluptatum quo eum laboriosam voluptatem.', '0', '0', null, '0', '20', '1', '1972-06-14 15:36:06', '1972-06-14 15:36:06');
INSERT INTO `course_articles` VALUES ('76', 'Bennie O\'Keefe', 'Repellendus sed veritatis accusantium saepe omnis recusandae ipsum. Incidunt perspiciatis repellendus eaque dolor. Perferendis unde magni voluptatem fuga ea id animi qui.', '0', '0', null, '0', '38', '1', '2018-05-17 07:51:49', '2018-05-17 07:51:49');
INSERT INTO `course_articles` VALUES ('77', 'Kylee Lind MD', 'Quis vel occaecati saepe perferendis. Natus veniam reprehenderit omnis ipsam quo et. Tempore ipsum corrupti ducimus praesentium et molestias quis. Eius ipsum aut facilis eos quidem fuga.', '0', '0', null, '0', '48', '1', '2009-07-04 04:41:43', '2009-07-04 04:41:43');
INSERT INTO `course_articles` VALUES ('78', 'Michelle Wolf', 'Ipsam veritatis nihil est rerum similique. Perspiciatis error fuga consequatur distinctio perspiciatis iusto in enim. Ea culpa blanditiis dolorem id quis. Ut rerum est quia laboriosam voluptas.', '0', '0', null, '0', '44', '1', '2005-12-23 18:31:56', '2005-12-23 18:31:56');
INSERT INTO `course_articles` VALUES ('79', 'Kristy Gerhold', 'Optio id pariatur neque eum qui sapiente nesciunt dolorem. Ex maxime est molestiae veritatis ad reiciendis dolorem. Itaque et reiciendis nihil. Est voluptates et eius eos alias.', '0', '0', null, '0', '32', '1', '2000-10-13 00:31:12', '2000-10-13 00:31:12');
INSERT INTO `course_articles` VALUES ('80', 'Abagail Kozey MD', 'Neque error autem vel nostrum dolor dolorum. Occaecati cumque nostrum et ipsam.', '0', '0', null, '0', '15', '1', '2007-07-04 19:15:57', '2007-07-04 19:15:57');
INSERT INTO `course_articles` VALUES ('81', 'Dr. Juvenal Hoeger', 'Est et repellat sed qui. Voluptatem occaecati modi aut et dolore. Quae distinctio placeat cum sed officia sed.', '0', '0', null, '0', '9', '1', '1999-02-06 16:30:23', '1999-02-06 16:30:23');
INSERT INTO `course_articles` VALUES ('82', 'Dr. Vivienne Wilkinson', 'Vel et sit qui dicta quia magni. Asperiores adipisci quasi consequatur repellat voluptatibus placeat in. Repellendus ratione odio nihil pariatur pariatur quam eveniet error.', '0', '0', null, '0', '42', '1', '1981-07-05 18:40:23', '1981-07-05 18:40:23');
INSERT INTO `course_articles` VALUES ('83', 'Ansley Dickinson Sr.', 'Quia minima dolorem mollitia maxime asperiores ipsum vero. Earum dolore aut quia nulla optio nulla. Optio ratione iusto doloribus maxime ad expedita quia. Qui unde architecto vel aliquam sint.', '0', '0', null, '0', '20', '1', '2019-01-03 21:52:00', '2019-01-03 21:52:00');
INSERT INTO `course_articles` VALUES ('84', 'Jaycee Tromp', 'Eius consequatur odit dignissimos distinctio necessitatibus voluptatibus quia. Adipisci mollitia ut in. Eum facere totam voluptas corrupti optio dolor qui. Quam eligendi hic recusandae dolor.', '0', '0', null, '0', '45', '1', '1984-02-27 06:43:48', '1984-02-27 06:43:48');
INSERT INTO `course_articles` VALUES ('85', 'Amara Stehr', 'Labore error libero modi est aut magnam cupiditate nesciunt. Quibusdam ut illum repellendus cupiditate inventore. Enim voluptatum quis porro.', '0', '0', null, '0', '21', '1', '2015-03-17 12:40:42', '2015-03-17 12:40:42');
INSERT INTO `course_articles` VALUES ('86', 'Mr. Keyon Collins', 'Sint reiciendis reiciendis vel omnis et. Qui ad vel et adipisci voluptas molestias. Quibusdam amet vero illum. Distinctio autem eveniet quibusdam fugiat itaque perspiciatis.', '0', '0', null, '0', '1', '1', '1996-06-29 20:31:32', '1996-06-29 20:31:32');
INSERT INTO `course_articles` VALUES ('87', 'Elva Homenick PhD', 'Accusantium autem sequi ea velit delectus. Et corporis deleniti quia dolores distinctio. Sit enim sed optio laudantium.', '0', '0', null, '0', '28', '1', '2003-02-27 08:21:02', '2003-02-27 08:21:02');
INSERT INTO `course_articles` VALUES ('88', 'Davonte Eichmann', 'Earum magnam harum quidem. Cum aspernatur similique sed debitis numquam dolor saepe. Cumque at quidem dolorem vel.', '0', '0', null, '0', '49', '1', '2011-09-15 15:47:35', '2011-09-15 15:47:35');
INSERT INTO `course_articles` VALUES ('89', 'Harvey Breitenberg', 'Labore quod architecto et et et. Neque ipsum a dolore officia harum laborum vel. Blanditiis quidem iste in. Tempora voluptas eos neque voluptatem unde eaque natus consectetur.', '0', '0', null, '0', '8', '1', '1992-09-09 19:44:10', '1992-09-09 19:44:10');
INSERT INTO `course_articles` VALUES ('90', 'Ed Oberbrunner', 'Et cumque sint maxime veniam sapiente. Delectus harum molestiae velit deleniti laboriosam. Sit ad id consectetur facilis possimus eius a veniam.', '0', '0', null, '0', '49', '1', '1976-04-19 04:38:13', '1976-04-19 04:38:13');
INSERT INTO `course_articles` VALUES ('91', 'Kaitlyn Veum', 'Consectetur harum beatae dolor. Libero voluptas dolorem eius qui numquam. Ex aut eveniet sed hic officiis.', '0', '0', null, '0', '23', '1', '1975-06-17 16:06:03', '1975-06-17 16:06:03');
INSERT INTO `course_articles` VALUES ('92', 'Mr. German Armstrong', 'Dolores ratione assumenda eum rem quo iusto unde. Tempore ipsam laborum eius adipisci. Ut reprehenderit et et rerum est nemo dolores iusto. Ut excepturi quo necessitatibus.', '0', '0', null, '0', '36', '1', '1974-04-14 13:56:48', '1974-04-14 13:56:48');
INSERT INTO `course_articles` VALUES ('93', 'Newell Orn', 'Esse voluptas fugiat atque et. Accusamus et quo itaque tempora facilis harum rem.', '0', '0', null, '0', '40', '1', '1980-05-07 10:01:12', '1980-05-07 10:01:12');
INSERT INTO `course_articles` VALUES ('94', 'Grayce Bahringer', 'Id cupiditate architecto minima tempora reiciendis nemo soluta. Ut quidem minus voluptas id. Velit suscipit dolor non aut veritatis illo fugit.', '0', '0', null, '0', '22', '1', '2011-04-12 18:39:10', '2011-04-12 18:39:10');
INSERT INTO `course_articles` VALUES ('95', 'Haskell Walsh MD', 'Alias eum omnis velit ex vel vel adipisci. Repellat veniam iste id at quia. Qui quam eum enim quam autem.', '0', '0', null, '0', '49', '1', '1987-01-31 00:32:10', '1987-01-31 00:32:10');
INSERT INTO `course_articles` VALUES ('96', 'Mr. Kaden Senger DVM', 'Eum beatae aliquid consequuntur laborum eum odit qui. Molestias quo animi quidem in quam. Voluptas eligendi enim quis non et. Voluptates deserunt eveniet quos distinctio.', '0', '0', null, '0', '22', '1', '2005-08-17 09:09:02', '2005-08-17 09:09:02');
INSERT INTO `course_articles` VALUES ('97', 'Sterling West MD', 'Corporis illum quae ut minima nihil sed. Voluptatum nostrum ullam qui iure eum. Non sit occaecati neque.', '0', '0', null, '0', '38', '1', '1986-09-04 23:51:27', '1986-09-04 23:51:27');
INSERT INTO `course_articles` VALUES ('98', 'Jessika Runte', 'Ut voluptas facere doloremque voluptas. Ipsum qui qui est. Molestiae cum et dicta similique. Qui possimus nihil perspiciatis quo aliquam.', '0', '0', null, '0', '14', '1', '1978-12-19 08:30:07', '1978-12-19 08:30:07');
INSERT INTO `course_articles` VALUES ('99', 'Lindsay Hartmann', 'Iusto eveniet eveniet nostrum. Cupiditate qui recusandae et ea id autem officiis. Repellendus distinctio velit ab a quae sunt dicta.', '0', '0', null, '0', '44', '1', '1996-07-27 16:09:38', '1996-07-27 16:09:38');
INSERT INTO `course_articles` VALUES ('100', 'Webster Harvey DDS', 'Sit eius autem quidem tempora repellendus provident. Dolor reiciendis consequatur blanditiis sed harum molestiae. Et voluptatibus vel recusandae culpa.', '0', '0', null, '0', '39', '1', '1983-01-20 13:25:13', '1983-01-20 13:25:13');

-- ----------------------------
-- Table structure for `course_book_orders`
-- ----------------------------
DROP TABLE IF EXISTS `course_book_orders`;
CREATE TABLE `course_book_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flag` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0:待支付，1：已支付',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户 id',
  `course_book_id` int(10) unsigned NOT NULL COMMENT '教程书籍 id',
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付 ID',
  `wx_out_trade_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信支付 out_trade_no',
  `wx_code_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信支付 code_url',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_book_orders_flag_index` (`flag`),
  KEY `course_book_orders_user_id_index` (`user_id`),
  KEY `course_book_orders_course_book_id_index` (`course_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of course_book_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `course_books`
-- ----------------------------
DROP TABLE IF EXISTS `course_books`;
CREATE TABLE `course_books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '教程名称',
  `excerpt` text COLLATE utf8mb4_unicode_ci COMMENT '教程简介',
  `prices` decimal(8,2) NOT NULL DEFAULT '19.99' COMMENT '价格',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户 id',
  `image_id` int(10) unsigned DEFAULT NULL COMMENT '封面图 id',
  `banner_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '广告图 Url',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_books_title_index` (`title`),
  KEY `course_books_user_id_index` (`user_id`),
  KEY `course_books_image_id_index` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of course_books
-- ----------------------------
INSERT INTO `course_books` VALUES ('1', '教程Mrs. Alvina Schulist', 'Occaecati quas dolor nesciunt modi debitis.', '19.99', '1', null, null, '1980-09-08 19:28:31', '1980-09-08 19:28:31');
INSERT INTO `course_books` VALUES ('2', '教程Ms. Kaelyn Schiller I', 'Fuga magnam nesciunt dicta consequatur in aliquam impedit.', '19.99', '1', null, null, '1977-09-19 13:17:51', '1977-09-19 13:17:51');
INSERT INTO `course_books` VALUES ('3', '教程Mr. Freeman Boehm', 'Similique ipsam adipisci iste cumque quia sit.', '19.99', '1', null, null, '2005-07-01 17:15:16', '2005-07-01 17:15:16');
INSERT INTO `course_books` VALUES ('4', '教程Mr. Darwin Kshlerin Jr.', 'Fugiat et sed nulla assumenda expedita autem.', '19.99', '1', null, null, '1978-06-08 20:32:06', '1978-06-08 20:32:06');
INSERT INTO `course_books` VALUES ('5', '教程Prof. Christina Baumbach', 'Nostrum odit rem ut et et esse aperiam.', '19.99', '1', null, null, '1999-03-23 04:05:12', '1999-03-23 04:05:12');

-- ----------------------------
-- Table structure for `course_sections`
-- ----------------------------
DROP TABLE IF EXISTS `course_sections`;
CREATE TABLE `course_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '章节名称',
  `course_book_id` int(10) unsigned NOT NULL COMMENT '教程书籍 id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_sections_title_index` (`title`),
  KEY `course_sections_course_book_id_index` (`course_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of course_sections
-- ----------------------------
INSERT INTO `course_sections` VALUES ('1', 'Rosetta Stiedemann', '1', '2014-01-24 12:09:50', '2014-01-24 12:09:50');
INSERT INTO `course_sections` VALUES ('2', 'Sabrina Hamill V', '1', '2019-08-12 18:27:26', '2019-08-12 18:27:26');
INSERT INTO `course_sections` VALUES ('3', 'Lily Kiehn', '1', '2007-08-12 09:34:07', '2007-08-12 09:34:07');
INSERT INTO `course_sections` VALUES ('4', 'Leonardo Satterfield', '1', '2011-08-24 01:39:22', '2011-08-24 01:39:22');
INSERT INTO `course_sections` VALUES ('5', 'Paula Kuhn', '1', '1996-05-13 11:57:36', '1996-05-13 11:57:36');
INSERT INTO `course_sections` VALUES ('6', 'Vickie Erdman', '1', '1978-02-09 22:02:22', '1978-02-09 22:02:22');
INSERT INTO `course_sections` VALUES ('7', 'Kristian McGlynn', '1', '2000-10-13 23:17:06', '2000-10-13 23:17:06');
INSERT INTO `course_sections` VALUES ('8', 'Linnie Carroll', '1', '2006-09-06 00:06:28', '2006-09-06 00:06:28');
INSERT INTO `course_sections` VALUES ('9', 'Destin Franecki', '1', '1986-11-25 03:47:02', '1986-11-25 03:47:02');
INSERT INTO `course_sections` VALUES ('10', 'Julio Hand', '1', '2017-03-30 06:50:18', '2017-03-30 06:50:18');
INSERT INTO `course_sections` VALUES ('11', 'Theo Schulist', '1', '1990-02-11 04:28:02', '1990-02-11 04:28:02');
INSERT INTO `course_sections` VALUES ('12', 'Berneice Hoeger II', '1', '1996-07-06 00:02:42', '1996-07-06 00:02:42');
INSERT INTO `course_sections` VALUES ('13', 'Mr. Bret Eichmann III', '1', '1990-02-12 11:58:51', '1990-02-12 11:58:51');
INSERT INTO `course_sections` VALUES ('14', 'Emil Fisher PhD', '1', '1976-02-09 00:00:14', '1976-02-09 00:00:14');
INSERT INTO `course_sections` VALUES ('15', 'Mrs. Marilyne Beahan III', '1', '2009-04-25 18:04:20', '2009-04-25 18:04:20');
INSERT INTO `course_sections` VALUES ('16', 'Jillian Mills DVM', '1', '2007-10-05 20:59:17', '2007-10-05 20:59:17');
INSERT INTO `course_sections` VALUES ('17', 'Lela D\'Amore', '1', '1997-03-08 20:14:13', '1997-03-08 20:14:13');
INSERT INTO `course_sections` VALUES ('18', 'Oral Frami DVM', '1', '1970-06-02 17:25:51', '1970-06-02 17:25:51');
INSERT INTO `course_sections` VALUES ('19', 'Kaia Ruecker', '1', '2005-12-01 21:41:06', '2005-12-01 21:41:06');
INSERT INTO `course_sections` VALUES ('20', 'Geo Kshlerin', '1', '2000-04-26 19:25:01', '2000-04-26 19:25:01');
INSERT INTO `course_sections` VALUES ('21', 'Syble Ondricka', '1', '1977-08-14 16:27:01', '1977-08-14 16:27:01');
INSERT INTO `course_sections` VALUES ('22', 'Velva Harber', '1', '2010-05-15 11:25:56', '2010-05-15 11:25:56');
INSERT INTO `course_sections` VALUES ('23', 'Jazmyne Mohr DVM', '1', '2016-06-03 18:58:11', '2016-06-03 18:58:11');
INSERT INTO `course_sections` VALUES ('24', 'Gia Mueller', '1', '1981-01-29 21:23:35', '1981-01-29 21:23:35');
INSERT INTO `course_sections` VALUES ('25', 'Dr. Werner Stark Sr.', '1', '1974-11-10 14:07:15', '1974-11-10 14:07:15');
INSERT INTO `course_sections` VALUES ('26', 'Isac O\'Reilly', '1', '2008-04-13 22:14:20', '2008-04-13 22:14:20');
INSERT INTO `course_sections` VALUES ('27', 'Morton Kuhic', '1', '1991-06-27 12:08:44', '1991-06-27 12:08:44');
INSERT INTO `course_sections` VALUES ('28', 'Chance Gerlach', '1', '1984-01-17 23:56:13', '1984-01-17 23:56:13');
INSERT INTO `course_sections` VALUES ('29', 'Ms. Bonnie Borer', '1', '1983-07-14 11:27:45', '1983-07-14 11:27:45');
INSERT INTO `course_sections` VALUES ('30', 'Donato Halvorson', '1', '1992-11-11 00:27:33', '1992-11-11 00:27:33');
INSERT INTO `course_sections` VALUES ('31', 'Prof. Ephraim Pfannerstill', '1', '1992-02-12 13:28:41', '1992-02-12 13:28:41');
INSERT INTO `course_sections` VALUES ('32', 'Dr. Tiffany Anderson Jr.', '1', '1984-09-13 05:05:40', '1984-09-13 05:05:40');
INSERT INTO `course_sections` VALUES ('33', 'Hassan Fahey', '1', '2012-01-06 01:54:08', '2012-01-06 01:54:08');
INSERT INTO `course_sections` VALUES ('34', 'Benny Hudson I', '1', '2016-07-03 18:52:18', '2016-07-03 18:52:18');
INSERT INTO `course_sections` VALUES ('35', 'Israel Larson', '1', '1993-02-18 18:42:13', '1993-02-18 18:42:13');
INSERT INTO `course_sections` VALUES ('36', 'Christopher Kirlin', '1', '2003-11-05 00:51:16', '2003-11-05 00:51:16');
INSERT INTO `course_sections` VALUES ('37', 'Melvin Rolfson', '1', '1976-11-09 08:19:23', '1976-11-09 08:19:23');
INSERT INTO `course_sections` VALUES ('38', 'Rory Monahan', '1', '1978-07-06 16:45:57', '1978-07-06 16:45:57');
INSERT INTO `course_sections` VALUES ('39', 'Cecile Legros', '1', '1981-11-23 05:27:42', '1981-11-23 05:27:42');
INSERT INTO `course_sections` VALUES ('40', 'Brent Carroll', '1', '1972-07-05 07:13:48', '1972-07-05 07:13:48');
INSERT INTO `course_sections` VALUES ('41', 'Alanis Reichert', '1', '2006-11-16 22:31:02', '2006-11-16 22:31:02');
INSERT INTO `course_sections` VALUES ('42', 'Ms. Arlene Frami DVM', '1', '1988-12-29 16:12:09', '1988-12-29 16:12:09');
INSERT INTO `course_sections` VALUES ('43', 'Nathaniel Bogisich', '1', '1994-03-21 14:04:53', '1994-03-21 14:04:53');
INSERT INTO `course_sections` VALUES ('44', 'May Barrows', '1', '1970-11-25 16:37:57', '1970-11-25 16:37:57');
INSERT INTO `course_sections` VALUES ('45', 'Amber Bailey', '1', '2001-03-08 16:33:01', '2001-03-08 16:33:01');
INSERT INTO `course_sections` VALUES ('46', 'Dennis Reichert', '1', '1983-03-25 16:26:14', '1983-03-25 16:26:14');
INSERT INTO `course_sections` VALUES ('47', 'Laurie Krajcik', '1', '2018-07-13 13:32:05', '2018-07-13 13:32:05');
INSERT INTO `course_sections` VALUES ('48', 'Chelsey Shields', '1', '2000-11-05 15:12:20', '2000-11-05 15:12:20');
INSERT INTO `course_sections` VALUES ('49', 'Frederique Kris', '1', '2014-09-09 18:15:12', '2014-09-09 18:15:12');
INSERT INTO `course_sections` VALUES ('50', 'Mina Batz I', '1', '2002-04-11 03:34:21', '2002-04-11 03:34:21');

-- ----------------------------
-- Table structure for `failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `images`
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片路径',
  `image_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '那个模块的图片',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户 id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_image_type_index` (`image_type`),
  KEY `images_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', '/uploads/images/avatars/202003/30/1_1585540002_JtQyfNG4Iw.jpg', 'avatar', '1', '2020-03-30 11:46:42', '2020-03-30 11:46:42');
INSERT INTO `images` VALUES ('2', '/uploads/images/banners/202003/30/1_1585549508_QptBeaio0P.jpg', 'banner', '1', '2020-03-30 14:25:08', '2020-03-30 14:25:08');
INSERT INTO `images` VALUES ('3', '/uploads/images/banners/202003/30/1_1585549604_Ja8gLTSo2a.jpg', 'banner', '1', '2020-03-30 14:26:44', '2020-03-30 14:26:44');
INSERT INTO `images` VALUES ('4', '/uploads/images/banners/202003/30/1_1585549668_zY7zFhie1U.jpg', 'banner', '1', '2020-03-30 14:27:49', '2020-03-30 14:27:49');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_03_18_171101_create_user_infos_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_03_19_230758_create_images_table', '1');
INSERT INTO `migrations` VALUES ('5', '2019_03_22_095104_create_blog_categories_table', '1');
INSERT INTO `migrations` VALUES ('6', '2019_03_22_112409_create_blog_articles_table', '1');
INSERT INTO `migrations` VALUES ('7', '2019_03_26_115409_create_notifications_table', '1');
INSERT INTO `migrations` VALUES ('8', '2019_03_26_115448_add_notification_count_to_users_table', '1');
INSERT INTO `migrations` VALUES ('9', '2019_03_26_132622_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('10', '2019_03_26_140628_create_permission_tables', '1');
INSERT INTO `migrations` VALUES ('11', '2019_03_26_151154_seed_roles_and_permissions_data', '1');
INSERT INTO `migrations` VALUES ('12', '2019_03_27_140628_create_blog_tags_table', '1');
INSERT INTO `migrations` VALUES ('13', '2019_03_27_140629_create_blog_tags_link_articles_table', '1');
INSERT INTO `migrations` VALUES ('14', '2019_03_29_223947_create_course_books_table', '1');
INSERT INTO `migrations` VALUES ('15', '2019_03_29_223948_create_course_book_orders_table', '1');
INSERT INTO `migrations` VALUES ('16', '2019_03_29_224808_create_course_sections_table', '1');
INSERT INTO `migrations` VALUES ('17', '2019_03_29_225247_create_course_articles_table', '1');
INSERT INTO `migrations` VALUES ('18', '2019_04_06_171052_create_replies_table', '1');
INSERT INTO `migrations` VALUES ('19', '2019_04_09_134203_add_banner_url_to_course_books', '1');
INSERT INTO `migrations` VALUES ('20', '2019_04_09_234343_create_banners_table', '1');
INSERT INTO `migrations` VALUES ('21', '2100_01_01_175526_add_references', '1');

-- ----------------------------
-- Table structure for `model_has_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `model_has_roles`
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES ('1', 'App\\Models\\User', '1');

-- ----------------------------
-- Table structure for `notifications`
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'manage_contents', 'web', '2020-03-27 16:12:14', '2020-03-27 16:12:14');
INSERT INTO `permissions` VALUES ('2', 'manage_users', 'web', '2020-03-27 16:12:14', '2020-03-27 16:12:14');
INSERT INTO `permissions` VALUES ('3', 'edit_settings', 'web', '2020-03-27 16:12:14', '2020-03-27 16:12:14');

-- ----------------------------
-- Table structure for `replies`
-- ----------------------------
DROP TABLE IF EXISTS `replies`;
CREATE TABLE `replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `verify` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '审核',
  `article_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章 ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户 ID',
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '例：App\\Models\\Article',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `replies_verify_index` (`verify`),
  KEY `replies_article_id_index` (`article_id`),
  KEY `replies_user_id_index` (`user_id`),
  KEY `replies_model_index` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of replies
-- ----------------------------
INSERT INTO `replies` VALUES ('2', '你猜', '1', '101', '1', 'App\\Models\\BlogArticle', '2020-03-30 14:22:36', '2020-03-30 14:22:36');

-- ----------------------------
-- Table structure for `role_has_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES ('1', '1');
INSERT INTO `role_has_permissions` VALUES ('2', '1');
INSERT INTO `role_has_permissions` VALUES ('3', '1');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Founder', 'web', '2020-03-27 16:12:14', '2020-03-27 16:12:14');

-- ----------------------------
-- Table structure for `user_infos`
-- ----------------------------
DROP TABLE IF EXISTS `user_infos`;
CREATE TABLE `user_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gender` tinyint(4) DEFAULT '0' COMMENT '性别: 0-女|1-男',
  `github_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'GitHub Name',
  `real_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市',
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司或组织名称',
  `jobtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职位头衔',
  `personal_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '个人网站',
  `wechat_qrcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信账号二维码',
  `payment_qrcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付二维码',
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '个人简介',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '署名',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像: 暂不启用',
  `image_id` int(10) unsigned DEFAULT NULL COMMENT '头像对应的图片表 id ',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_infos_image_id_index` (`image_id`),
  KEY `user_infos_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_infos
-- ----------------------------
INSERT INTO `user_infos` VALUES ('1', '0', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `user_infos` VALUES ('2', '0', null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null);
INSERT INTO `user_infos` VALUES ('3', '0', null, null, null, null, null, null, null, null, null, null, null, null, '3', null, null);
INSERT INTO `user_infos` VALUES ('4', '0', null, null, null, null, null, null, null, null, null, null, null, null, '4', null, null);
INSERT INTO `user_infos` VALUES ('5', '0', null, null, null, null, null, null, null, null, null, null, null, null, '5', null, null);
INSERT INTO `user_infos` VALUES ('6', '0', null, null, null, null, null, null, null, null, null, null, null, null, '6', null, null);
INSERT INTO `user_infos` VALUES ('7', '0', null, null, null, null, null, null, null, null, null, null, null, null, '7', null, null);
INSERT INTO `user_infos` VALUES ('8', '0', null, null, null, null, null, null, null, null, null, null, null, null, '8', null, null);
INSERT INTO `user_infos` VALUES ('9', '0', null, null, null, null, null, null, null, null, null, null, null, null, '9', null, null);
INSERT INTO `user_infos` VALUES ('10', '0', null, null, null, null, null, null, null, null, null, null, null, null, '10', null, null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notification_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '大黄蜂', 'guccilee@163.com', '$2y$10$vW9Nr8psMRd2da0UxFxPcu5i7HNruUBzCB2bV0z3eCkUGpq/sZOsu', '50xvff54WxjzSThO9KGUAkTJz9iE5YvfpWchiMdUoZjvpgJcJq93npsJ5V8f', '1998-12-13 18:42:39', '2020-03-30 13:17:48', '0');
INSERT INTO `users` VALUES ('2', 'Dr. Geovanni Goodwin', 'sandrine.vonrueden@example.com', '$2y$10$4V7AJ3Vw5S9tNzy0DNoukuXYRxRwImcBL0h1rIiBa.nCnIvKIMDVC', null, '2017-06-06 22:02:28', '2017-06-06 22:02:28', '0');
INSERT INTO `users` VALUES ('3', 'Harry Bashirian', 'lane85@example.org', '$2y$10$/Hvx61ewBqYCa7.Y5l6An.rEB4C9C9FZUJOI7WmMy.hyjSl0Ido8S', null, '1999-02-17 22:27:34', '1999-02-17 22:27:34', '0');
INSERT INTO `users` VALUES ('4', 'Jayce Bailey', 'toy.nellie@example.net', '$2y$10$6IoEBBaIymclvlnMILctSuBhxiP5V2l1vj50F5snu96SwJRQviAhC', null, '2019-02-14 12:40:03', '2019-02-14 12:40:03', '0');
INSERT INTO `users` VALUES ('5', 'Granville Kerluke', 'scarlett38@example.com', '$2y$10$D4dHDdzDv2WPiwrbGiZVaeb0liVpxnPH4OeSz27EQl71cqEreNjcu', null, '2002-05-24 11:08:36', '2002-05-24 11:08:36', '0');
INSERT INTO `users` VALUES ('6', 'Prof. Emerson Bergstrom V', 'raymond.tillman@example.net', '$2y$10$G//F6dc.XRHq1o2s9dfsoOjCfmNLklLBMC0FCunfDjugWThlT7gDu', null, '1986-05-07 05:45:30', '1986-05-07 05:45:30', '0');
INSERT INTO `users` VALUES ('7', 'Jany Lang', 'lilyan.corkery@example.com', '$2y$10$OooCRFSVHqknNSSI2kieOepLUEeR7CRbCe7TjZbIok1I4cHVLrTSa', null, '1988-10-13 19:35:51', '1988-10-13 19:35:51', '0');
INSERT INTO `users` VALUES ('8', 'Orland Murazik', 'ybogan@example.net', '$2y$10$JifT0n5GhL4cwAb4lCwj7uEoERhZIf9fBhgN/1nLSv1pHx1Lz/KHq', null, '1983-01-04 03:00:34', '1983-01-04 03:00:34', '0');
INSERT INTO `users` VALUES ('9', 'Tyrique Collins', 'sim.bashirian@example.com', '$2y$10$XpVSdbKCKdmQP/Hnl.W9DOTMm16isMqi5PjnUIa8oTBsRxq08Gvui', null, '1995-09-04 04:30:59', '1995-09-04 04:30:59', '0');
INSERT INTO `users` VALUES ('10', 'Mireille Wuckert', 'dawn61@example.org', '$2y$10$tJulVH5BA/BM2QSDx3m/x.Pf19nGM0pp.PcDnRGDZGLT3ES.xK8xC', null, '1996-07-30 14:13:03', '1996-07-30 14:13:03', '0');
