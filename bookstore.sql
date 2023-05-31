-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '收件人',
  `address` varchar(50) NOT NULL COMMENT '地址',
  `phone` varchar(40) NOT NULL COMMENT '手机号',
  PRIMARY KEY (`aid`),
  KEY `FK_address_fu` (`uid`) USING BTREE,
  CONSTRAINT `FK_address_fu` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,3,'猫猫','快乐星球1号','13435970888'),(4,3,'阳光男孩','阿卡姆精神病院','13435970333'),(5,1,'猫猫','猫猫家','2315465254'),(6,2,'快乐吃手手','快乐家族','12358748445');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bookID` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `bookNumber` int(100) NOT NULL COMMENT '编号',
  `bookName` varchar(40) NOT NULL COMMENT '书名',
  `author` varchar(40) NOT NULL COMMENT '作者',
  `press` varchar(40) NOT NULL COMMENT '出版社',
  `cover` varchar(1000) DEFAULT NULL COMMENT '封面图片的url',
  `price` double(7,2) unsigned NOT NULL COMMENT '价格',
  `type` varchar(12) NOT NULL COMMENT '图书类别',
  `content` varchar(1000) DEFAULT NULL COMMENT '详情',
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`bookID`),
  UNIQUE KEY `bookNumber` (`bookNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,978702017,'神圣婚姻','徐坤','人民文学出版社','http://localhost:8080/api/upload/神圣婚姻.jpg',46.60,'小说','这是一部直面新时代现场的长篇小说。徐坤以宏阔的视野、锐利的笔触，直接进入新时代历经剧变、纷繁复杂的现场',10),(2,978752021,'王朝之痒','坏土豆','中国大百科全书出版社','http://localhost:8080/api/upload/王朝之痒.jpg',39.00,'历史','历史大v坏土豆首部作品！每个王朝都有自己的疥癣之疾，一旦挠破，血流成河。一本书读懂王朝内幕，洞悉历史的底层逻辑！翻开这本书，读懂困扰你多年的历史难题！限量3000套明信片，随机发货',4),(3,978711559,'手机变单反','卷毛佟','人民邮电出版社','http://localhost:8080/api/upload/手机变单反.jpg',49.00,'艺术','卷毛佟手机摄影书籍入门教程，拍照技巧后期修图短视频创作，卷毛佟手机摄影技巧倾情奉献，带你解锁手机摄影隐藏功能；从前期到后期，用手机记录美好生活！附赠教学视频',5),(4,978755909,'万万没想到','杰罗姆?卡米尔','新疆青少年出版社','http://localhost:8080/api/upload/万万没想到.jpg',108.00,'趣味读物','不看到最后，不知道结局！法国幽默推理绘本，沉浸式烧脑体验，培养孩子的思辨力和推理能力！',4),(5,978757360,'狂飙','徐纪周?朱俊懿?白文君','青岛出版社','http://localhost:8080/api/upload/狂飙.jpg',34.00,'小说','官方授权无删减版，书中更赠神秘剧照！真实还原扫黑除恶第一线，以横跨20年的群像叙事方式全景式地展现时代变迁下的黑白较量与复杂人性。',4),(6,978754116,'通俗小说','仁科','四川文艺出版社','http://localhost:8080/api/upload/通俗小说.jpg',36.80,'小说','仁科新书，当当专享演出票根书签，“城中村存在主义文学”蟑螂一般的生命力，蝴蝶一样的诗意',5),(7,978755965,'无人知晓','田中雪莱','北京联合出版有限公司','http://localhost:8080/api/upload/无人知晓.jpg',33.00,'小说','豆瓣电影评分9.1，是枝裕和ZUI高分代表作。根据真实事件改编，故事就像一根刺，深深扎进你我内心。',5),(8,572602696,'没药花园案件：罪恶追踪','没药花园?著,博集天卷?出品','湖南文艺出版社','http://localhost:8080/api/upload/没药花园案件：罪恶追踪.jpg',24.00,'小说','百万粉丝追更的悬疑品牌【没药花园】真实案件系列书第二部！搜集公开的庭审资料和媒体报道，重新讲述10个轰动的真实案件。追踪真实罪恶，重启案件现场。',4),(9,702012013,'那不勒斯四部曲','[意]埃莱娜·费兰特','人民文学出版社','http://localhost:8080/api/upload/那不勒斯四部曲.jpg',150.00,'小说','童书妈妈三川玲推荐！当当独家函套版！我的天才女友+新名字的故事+离开的,留下的+失踪的孩子。“我的整个生命，只是一场为了提升社会地位的低俗斗争”—— 埃莱娜 费兰',5),(10,870201669,'如雪如山','张天翼','人民文学出版社','http://localhost:8080/api/upload/如雪如山.jpg',45.80,'小说','《如雪如山》是青年实力作家张天翼女性现实题材小说集。作者以敏感善察的心思和细腻锋利的笔触，通过七位女性主人公的人生断面，拼凑出一部女性视角下的“人世间”的故事',5),(11,853218256,'关于告别的一切','路内','上海文艺出版社','http://localhost:8080/api/upload/关于告别的一切.jpg',58.50,'小说','1985——2019，一对父子破碎的爱情之旅，一场被时代催迫的人生悲喜剧，又一部典型的“路式”小说',5),(12,870201722,'亲爱的蜂蜜','笛安','人民文学出版社','http://localhost:8080/api/upload/亲爱的蜂蜜.jpg',46.60,'小说','孩子就是世界的温情谜语，这些谜语中也藏有答案 爱，就是不怕，笛安给这个坚硬世界的一点温柔 没有轰轰烈烈的爱恋，有的是过尽千帆的珍重 即使有各自的过往，只要遇见，便是新的序章。',5),(13,875531172,'天干物燥，小心鬼狐：中国鬼狐妖物百谭','蒲松龄、袁枚原著，黄凤娇编译','巴蜀书社','http://localhost:8080/api/upload/天干物燥，小心鬼狐：中国鬼狐妖物百谭.jpg',29.90,'小说','【赠百妖谱+印签】天干物燥小心鬼狐 蒲松龄袁牧著100篇中国鬼狐奇谭 聊斋志异子不语阅微草堂笔记搜神记山海经古典文学志怪小说',4),(14,875596475,'请照顾好我妈妈','[韩]申京淑著 ;?薛舟,?徐丽红译','北京联合出版有限公司','http://localhost:8080/api/upload/请照顾好我妈妈.jpg',34.50,'小说','她为家人奉献了一生，却没有人了解她是谁。缔造300万册畅销奇迹的韩国文学神话，获第五届英仕曼亚洲文学奖。和《你好，李焕英》一样，以子女的视角重新认识母亲。',5),(15,875492770,'果果的婚事','未夕?著；星文文化?出品','长江出版社','http://localhost:8080/api/upload/果果的婚事.jpg',24.90,'小说','心向往之的幸福生活，感同身受的婚姻真相，这是果果的婚事，也是发生在我们每一人身上的日常悲欢。',4),(16,875169167,'民调局异闻录','耳东水寿','华龄出版社','http://localhost:8080/api/upload/民调局异闻录.jpg',109.90,'小说','腾讯热播动画《民调局异闻录》原著小说！悬疑大神耳东水寿作品！一个专门调查各种离奇、神秘事件的组织以及他们所面对的世界！南派三叔、辰东、莲蓬、庚新 激赏推荐！',5),(17,871213842,'手机摄影技法大全','先锋影像','电子工业出版社','http://localhost:8080/api/upload/手机摄影技法大全.jpg',9.90,'艺术','帮你解决所有拍摄难题，相信自己！一部手机，你可以拍出令大家赞叹的大片。人像、街拍、风光、建筑、花卉、美食常用题材一网打尽，让你掌握摄影构图、用光的理论引来无数人的点赞。',5),(18,872011896,'实战表演','刘天池，果麦文化?出品','天津人民出版社','http://localhost:8080/api/upload/实战表演.jpg',29.90,'艺术','提问题、给方法、讲案例，切实解决表演困惑。比《演员自我修养》更适合当下演员的困境。让演员通过专业有效的训练，在艺术道路上成为更好的自己；让大众通过习得表演的能力，在人生之路上成就更好的自己。果麦出品',3),(19,871030639,'歌唱入门图解','周咏梅','人民音乐出版社','http://localhost:8080/api/upload/歌唱入门图解.jpg',26.00,'艺术','人人能懂的歌唱课',5),(20,875115760,'如果人生是一张精选辑——网易云音乐乐评','网易云音乐','人民日报出版社','http://localhost:8080/api/upload/如果人生是一张精选辑——网易云音乐乐评.jpg',39.80,'艺术','有趣的灵魂在这里相遇',5),(21,875339703,'编剧的艺术','[匈]拉约什·埃格里，译者?陈磊，果麦文化?出品','浙江文艺出版社','http://localhost:8080/api/upload/编剧的艺术.jpg',29.50,'艺术','好剧本有三大条件：一个清晰的前提，具备三维度的角色，升级和有预示的冲突。职业编剧的宝藏工具书，2023经典重译。果麦出品',4),(22,871080478,'图说中国绘画史','〔美〕高居翰（James?Cahill）','生活.读书.新知三联书店','http://localhost:8080/api/upload/图说中国绘画史.jpg',80.20,'艺术','100幅精选画作，呈现一部中国绘画的历史，高居翰教授的早年成名之作。',5),(23,875217489,'西部往事：莱昂内谈电影','塞尔吉奥·莱昂内','中信出版社','http://localhost:8080/api/upload/西部往事：莱昂内谈电影.jpg',58.50,'艺术','意大利国宝级导演莱昂内与十五年挚友对谈录',5),(24,872201297,'现代画家、雕塑家和建筑师传','〔意〕乔凡尼·彼得罗·贝洛里著?吴忌译','四川人民出版社','http://localhost:8080/api/upload/现代画家、雕塑家和建筑师传.jpg',120.90,'艺术','16、17世纪著名艺术家的传记',5),(25,295130071,'一个人的意大利[精装大本]','须臾?著绘','中国轻工业出版社','http://localhost:8080/api/upload/一个人的意大利.jpg',49.00,'艺术','新锐青年插画师须臾个人作品集。在明亮的笔触与温暖的故事里，带你穿梭中世纪的古老城市， 领略意大利饱满的生活方式。',5),(26,295130212,'去剑桥学插画[精装大本]','温艾凝?著绘','中国轻工业出版社','http://localhost:8080/api/upload/去剑桥学插画.jpg',49.00,'艺术','青年绘本艺术家温艾凝随笔速写插画集。在童话般纯粹美好的色彩里，感受浓郁的英伦时光。',5),(27,875520388,'别再问我什么是嘻哈②','[日]?长谷川町藏?大和田俊之?著 ，耳田?译','上海社会科学院出版社','http://localhost:8080/api/upload/别再问我什么是嘻哈②.jpg',46.70,'艺术','万众期待的嘻哈入门续集终于登场',5),(28,875520306,'别再问我什么是嘻哈①','[日]?长谷川町藏，大和田俊之?著 ，耳田?译','上海社会科学院出版社','http://localhost:8080/api/upload/别再问我什么是嘻哈①.jpg',46.70,'艺术','一部划时代的嘻哈入门书',5),(29,875501802,'和唐朝诗人握个手','急脚大师?著?捧读文化?出品','南方出版社','http://localhost:8080/api/upload/和唐朝诗人握个手.jpg',29.00,'历史','赠唐朝科举知识折页。爆款图书《和古代学霸握个手》作者新作。幽默的文字搭配50多幅漫画，剧场感十足。像看一场唐朝诗人生活脱口秀。',4),(30,875086784,'历史的温度','张玮','中信出版社','http://localhost:8080/api/upload/历史的温度.jpg',51.00,'历史','历史书上的某个名字、某段话，它的背后到底隐藏了什么？',5),(31,875722435,'权力的面孔 一幅中央帝国的权力图像','张宏杰?著，磨铁文化?出品','浙江教育出版社','http://localhost:8080/api/upload/权力的面孔 一幅中央帝国的权力图像.jpg',56.10,'历史','知名历史学者张宏杰继《曾国藩传》后通俗讲史力作。一幅中央帝国的权力图像，以心理分析式的讲史，剖析复杂人性，解读中国传统社会潜规则、权力运作法则和背后的行为逻辑',5),(32,875598531,'千面宋人：传世书信里的士大夫','仇春霞','广西师范大学出版社','http://localhost:8080/api/upload/千面宋人：传世书信里的士大夫.jpg',64.80,'历史','一个卸了妆的宋朝将会是怎样？一本书窥探宋人笔迹里的密码。这不是史书里被后人记载的历史，而是他们亲笔写下的历史。走进60余位名士、120余封高清珍贵传世书信背后那些关于帝王将相、忠臣贼子、贩夫走卒的故事',4),(33,875217100,'历史的温度4','张玮','中信出版社','http://localhost:8080/api/upload/历史的温度4.jpg',51.00,'历史','那些执念与信念、理想与梦想',5),(34,875455726,'殷商六百年','柯胜雨','天地出版社','http://localhost:8080/api/upload/殷商六百年.jpg',63.30,'历史','殷周革命与青铜王朝的兴衰（跨越夏商周三代的文明演化史。生动再现贞人群体、妇好、伊尹等殷商历史人物。）全景讲述华夏文明起源时期的历史细节，带你回到那个神秘的殷商时代。',4),(35,875217506,'世界这么大，带你去看看','林楚方','中信出版社','http://localhost:8080/api/upload/世界这么大，带你去看看.jpg',34.00,'历史','带你看懂不容错过的45个世界知名地标',0),(36,875411659,'神奇的北魏','张小泱?著，酷威文化?出品','四川文艺出版社','http://localhost:8080/api/upload/神奇的北魏.jpg',24.00,'历史','《百家讲坛》主讲人纪连海作序推荐！秦汉文明之余韵，隋唐盛世之先声，中国历史上DI一个大混血时代。要读懂中国，必读南北朝；要读懂南北朝，必读北魏。酷威文化',5),(37,875225165,'应解人间不自由','谭伯牛','九州出版社','http://localhost:8080/api/upload/应解人间不自由.jpg',36.00,'历史','知名历史学者谭伯牛的“民国爱情观察手记” 动荡乱世是民国，风花雪月也是民国 林徽因&徐志摩&金岳霖、沈从文&张兆和 胡适&曹诚英&陆小曼、郁达夫&王映霞 萧红&萧军&端木蕻良、顾维钧&黄蕙兰',5),(38,875598500,'故事里的中国1：吴越春秋','公孙策?广雅出品','广西师范大学出版社','http://localhost:8080/api/upload/故事里的中国1：吴越春秋.jpg',43.50,'历史','以经典史书为底本，讲述楚吴越三国恩仇。着眼历史人物的成败因果和心理活动，讲出大历史的大视野和寓言的教育性、小说的人情味，在历史故事中找寻国人的文化基因。广雅出品',5),(39,875598506,'故事里的中国2：楚汉传奇','公孙策?广雅出品','广西师范大学出版社','http://localhost:8080/api/upload/故事里的中国2：楚汉传奇.jpg',51.00,'历史','以经典史书为底本，讲述项羽刘邦的千古对决。着眼历史人物的成败因果和心理活动，讲出大历史大视野和寓言的教育性、小说的人情味，在历史故事中找寻国人文化基因。广雅出品',5),(40,875016193,'乌丢丢的奇遇','金波?著，眉睫?赏析','天天出版社有限责任公司','http://localhost:8080/api/upload/乌丢丢的奇遇.jpg',15.00,'趣味读物','国际安徒生奖候选人金波代表作，彩插美绘版，特邀儿童文学研究专家眉睫撰写赏析文字，常青教授撰写导读，引导孩子正确阅读）有一定阅读能力的孩子都能读懂的经典儿童文学',5),(41,875559144,'为孩子解答西游记里的不解之谜（全二册）','六神磊磊；读客文化?出品','河南文艺出版社','http://localhost:8080/api/upload/为孩子解答西游记里的不解之谜（全二册）.jpg',64.00,'趣味读物','著名自媒体作家六神磊磊专为孩子打造的《西游记》 深入解读《西游记》中每一个不解之谜背后的天文地理、文史典故，让孩子秒变传统文化小达人！随书附赠西游解秘刮刮卡一套！读客熊猫君出品',5),(42,875016194,'“下次开船”港','严文井','天天出版社有限责任公司','http://localhost:8080/api/upload/“下次开船”港.jpg',11.30,'趣味读物','语言生动幽默，故事构思巧妙，极具想象力，且富于哲理，被誉为新中国童话园地里一朵“绽开的鲜花”',5),(43,875516230,'四季森林：全4册','大卫·奥热罗','山东友谊出版社','http://localhost:8080/api/upload/四季森林：全4册.jpg',90.00,'趣味读物','风靡法国的治愈系绘本，画风媲美经典动画电影。以森林为舞台，季节为幕布，个性鲜明的动物居民为主角，上演了一场场跌宕起伏、真挚感人的精彩大戏。走进小森林，感受大世界，在风霜雨雪中向善生长，在四季流转间诗意',5),(44,875726099,'神探迈克狐·神秘组织篇（套装6册）','多多罗/著绘；小博集出品','湖南文艺出版社','http://localhost:8080/api/upload/神探迈克狐·神秘组织篇（套装6册）.jpg',89.40,'趣味读物','1600万家长和孩子都喜欢的中国优质原创少儿互动科学侦探故事，图书畅销100万册，音频播放量超10亿次。燃烧大脑，用科学知识破解侦探难题。孙正凡王轶美等科普作家推荐',5),(45,875763202,'这就是数学','米莱童书','北京理工大学出版社','http://localhost:8080/api/upload/这就是数学.jpg',100.00,'趣味读物','中考必备漫画科普书，有趣有料点燃孩子数学热情；一线名师审读指导；聚焦数学核心素养培养，基础与应用全覆盖；小学数学重点难点填坑指南，用漫画还原抽象思维过程，建立抽象思维能力。',4),(46,875562671,'蔡皋经典中国绘本·珍藏礼盒','蔡皋；小博集出品；','湖南少年儿童出版社','http://localhost:8080/api/upload/蔡皋经典中国绘本·珍藏礼盒.jpg',164.00,'趣味读物','“国宝级”绘本画家、中国首位“金苹果奖”得主蔡皋代表作，让孩子在饱含情感的图画故事中学会勇敢与超越，感受爱与善良的力量，入选小学生分级阅读书目，曹文轩、金波、大J等27位专家联袂推荐',5),(47,875589158,'我爱阅读桥梁书·分级阅读版（第二辑）','金波、张秋生、冰波等','少年儿童出版社','http://localhost:8080/api/upload/我爱阅读桥梁书·分级阅读版（第二辑）.jpg',100.00,'趣味读物','6-7岁孩子适读，通过科学的分级设置，实现让孩子从亲子阅读过渡到独立阅读功能，解决孩子不会独立阅读问题的桥梁书（海豚传媒出品）',4),(48,875763183,'超级工程驾到','米莱童书','北京理工大学出版社','http://localhost:8080/api/upload/超级工程驾到.jpg',100.00,'趣味读物','8大超级工程试卷上出镜率高；对超级工程的建造方式、技术难点、社会意义都做了细致的讲解；动感场景+超强代入感体验，工程学思维贯穿始终。',5),(49,202302010,'温妮女巫驾到','劳拉·欧文','中信出版社','http://localhost:8080/api/upload/温妮女巫驾到.jpg',136.50,'趣味读物','英国超人气作者、绘者联手打造，全球900万家庭都在看，穿越时空主题，更刺激的冒险，帮孩子解决不自信、容易放弃等成长难题',5),(50,870201735,'芝麻开门','祁智','人民文学出版社','http://localhost:8080/api/upload/芝麻开门.jpg',31.10,'趣味读物','《芝麻开门》属于“中国儿童文学经典书系”，作者祁智是著名儿童文学作家，本书是他的第一部长篇校园小说，畅销二十余年，曾获中宣部“五个一工程”奖、全国优秀少儿图书奖、全国优秀畅销书奖等',4);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `bookID` smallint(5) unsigned NOT NULL COMMENT '书本序号',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`cid`) USING BTREE,
  KEY `FK_cart_fu` (`uid`) USING BTREE,
  KEY `FK_cart_fg` (`bookID`) USING BTREE,
  CONSTRAINT `FK_cart_fb` FOREIGN KEY (`bookID`) REFERENCES `book` (`bookID`),
  CONSTRAINT `FK_cart_fu` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,3,30,2),(5,3,31,1),(6,4,33,1),(7,4,34,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` char(15) NOT NULL COMMENT '订单id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `aid` int(11) NOT NULL COMMENT '地址',
  `total` double(8,2) NOT NULL COMMENT '总价格',
  `paymentWay` varchar(25) NOT NULL COMMENT '付款方式',
  `deliverWay` varchar(25) NOT NULL COMMENT '配送方式',
  `orderTime` datetime NOT NULL COMMENT '下单时间',
  `orderState` varchar(10) NOT NULL DEFAULT '待审核' COMMENT '状态',
  PRIMARY KEY (`orderID`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `address` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('202303258609',3,1,171.60,'微信','普通快递','2023-03-25 23:34:21','配送中'),('20230519773',2,6,401.80,'微信','普通快递','2023-05-19 10:06:37','待确认'),('202305199218',1,5,246.70,'微信','特快专递','2023-05-19 09:57:42','待确认'),('202305209669',3,1,250.80,'微信','普通快递','2023-05-20 14:01:03','待确认');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommend` (
  `bookID` smallint(5) unsigned NOT NULL COMMENT '书本序号',
  `bookName` varchar(40) NOT NULL COMMENT '书名',
  `author` varchar(40) NOT NULL COMMENT '作者',
  `cover` varchar(1000) DEFAULT NULL COMMENT '封面图片的url',
  `price` double(7,2) unsigned NOT NULL COMMENT '价格',
  KEY `FK_recommend_rb` (`bookID`) USING BTREE,
  CONSTRAINT `FK_recommend_rb` FOREIGN KEY (`bookID`) REFERENCES `book` (`bookID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES (5,'狂飙','徐纪周?朱俊懿?白文君','http://localhost:8080/api/upload/狂飙.jpg',34.00),(8,'没药花园案件：罪恶追踪','没药花园?著,博集天卷?出品','http://localhost:8080/api/upload/没药花园案件：罪恶追踪.jpg',24.00),(9,'那不勒斯四部曲','[意]埃莱娜·费兰特','http://localhost:8080/api/upload/那不勒斯四部曲.jpg',150.00),(14,'请照顾好我妈妈','[韩]申京淑著 ;?薛舟,?徐丽红译','http://localhost:8080/api/upload/请照顾好我妈妈.jpg',34.50);
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relate`
--

DROP TABLE IF EXISTS `relate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relate` (
  `uid` int(11) NOT NULL COMMENT '用户id',
  `bookID` smallint(5) unsigned NOT NULL COMMENT '书本序号',
  `interest` int(4) NOT NULL COMMENT '兴趣值，1代表加入购物车,2代表购买',
  KEY `FK_relate_ru` (`uid`) USING BTREE,
  KEY `FK_relate_rb` (`bookID`) USING BTREE,
  CONSTRAINT `FK_relate_rb` FOREIGN KEY (`bookID`) REFERENCES `book` (`bookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_relate_ru` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relate`
--

LOCK TABLES `relate` WRITE;
/*!40000 ALTER TABLE `relate` DISABLE KEYS */;
INSERT INTO `relate` VALUES (1,5,1),(1,13,2),(1,14,1),(1,18,1),(1,8,2),(1,2,1),(1,45,2),(1,6,1),(1,34,2),(1,21,2),(2,5,2),(2,4,2),(2,2,2),(2,47,2),(2,50,2),(2,14,1),(2,31,1),(2,43,1),(2,15,2),(2,32,2),(3,1,2),(3,2,2),(3,32,1),(3,21,1),(3,4,2),(3,42,1),(3,14,2),(3,5,2),(3,7,1),(3,9,1),(3,3,2),(3,6,2),(3,13,1),(3,8,1),(3,18,2),(3,30,1),(3,33,1),(1,1,1),(1,3,1),(1,4,1),(1,24,1),(1,31,1),(1,42,1),(1,47,1),(1,46,1),(1,33,1),(1,30,1),(3,29,2),(3,31,1),(4,33,1),(4,34,1);
/*!40000 ALTER TABLE `relate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suborders`
--

DROP TABLE IF EXISTS `suborders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suborders` (
  `suborderID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '子订单id',
  `bookID` smallint(5) unsigned NOT NULL COMMENT '书本序号',
  `quantity` smallint(6) NOT NULL COMMENT '数量',
  `orderID` char(15) NOT NULL COMMENT '订单id',
  PRIMARY KEY (`suborderID`) USING BTREE,
  KEY `FK_suborders_so` (`orderID`) USING BTREE,
  KEY `FK_suborders_sb` (`bookID`) USING BTREE,
  CONSTRAINT `FK_suborders_sb` FOREIGN KEY (`bookID`) REFERENCES `book` (`bookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_suborders_so` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suborders`
--

LOCK TABLES `suborders` WRITE;
/*!40000 ALTER TABLE `suborders` DISABLE KEYS */;
INSERT INTO `suborders` VALUES (1,6,2,'202303258609'),(2,3,2,'202303258609'),(3,13,1,'202305199218'),(4,8,1,'202305199218'),(5,45,1,'202305199218'),(6,34,1,'202305199218'),(7,21,1,'202305199218'),(8,5,1,'20230519773'),(9,4,1,'20230519773'),(10,2,1,'20230519773'),(11,47,1,'20230519773'),(12,50,1,'20230519773'),(13,15,1,'20230519773'),(14,32,1,'20230519773'),(16,18,2,'202305209669'),(17,29,1,'202305209669');
/*!40000 ALTER TABLE `suborders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `account` varchar(225) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '账号',
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码',
  `identity` int(4) NOT NULL COMMENT '身份，1是管理员，2是用户',
  `uname` varchar(40) NOT NULL COMMENT '用户名',
  `himg` varchar(1000) DEFAULT NULL COMMENT '头像图片的url',
  PRIMARY KEY (`uid`,`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','123',1,'管理员','http://localhost:8080/api/upload/FreeGreatPicture.com-1562-cute-little-cat.jpg'),(2,'123456','123456',2,'快乐吃手手','http://localhost:8080/api/upload/FreeGreatPicture.com-1562-cute-little-cat.jpg'),(3,'741852963','741852963',2,'猫猫','http://localhost:8080/api/upload/FreeGreatPicture.com-1562-cute-little-cat.jpg'),(4,'963852741','963852741',2,'小黄人','http://localhost:8080/api/upload/FreeGreatPicture.com-55598-little-yellow-man.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 10:09:58
