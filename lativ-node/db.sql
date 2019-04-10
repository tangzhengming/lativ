SET NAMES UTF8;
DROP DATABASE IF EXISTS lativ;
CREATE DATABASE lativ CHARSET=UTF8;
USE lativ;
CREATE TABLE indexs(
  ii	TINYINT PRIMARY KEY AUTO_INCREMENT,
  img_url   VARCHAR(60),
  router    VARCHAR(60)
);
CREATE TABLE list(
  did  TINYINT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(8),
  classify  VARCHAR(8),
  big      VARCHAR(64),
  img      VARCHAR(5000),
  imgshow     VARCHAR(500)
)
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details1.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details2.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details3.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details4.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details5.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details6.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details7.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details8.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details9.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details10.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details11.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details12.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details13.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details14.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details15.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details16.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details17.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details18.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details19.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details20.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details21.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details22.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details23.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details24.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details25.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details26.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details27.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details28.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details29.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details30.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details31.jpg',NULL);
INSERT INTO indexs VALUES(NULL,'http://127.0.0.1:3000/img/index/details32.jpg',NULL);

INSERT INTO list VALUES(NULL,'女装','上身类','http://127.0.0.1:3000/img/woman-top/big.jpg','http://127.0.0.1:3000/img/woman-top/1.jpg,http://127.0.0.1:3000/img/woman-top/2.jpg,http://127.0.0.1:3000/img/woman-top/3.jpg,http://127.0.0.1:3000/img/woman-top/4.jpg,http://127.0.0.1:3000/img/woman-top/5.jpg,http://127.0.0.1:3000/img/woman-top/6.jpg,http://127.0.0.1:3000/img/woman-top/7.jpg,http://127.0.0.1:3000/img/woman-top/8.jpg,http://127.0.0.1:3000/img/woman-top/9.jpg,http://127.0.0.1:3000/img/woman-top/10.jpg','印花短T,印花长T,短袖/背心,雪纺/轻柔,Pima棉,POLO衫,七分/长袖,长版上衣,厚棉系列,FLEECE');
INSERT INTO list VALUES(NULL,'女装','衬衫类','http://127.0.0.1:3000/img/woman-chen/big.jpg','http://127.0.0.1:3000/img/woman-chen/1.jpg,http://127.0.0.1:3000/img/woman-chen/2.jpg','休闲衬衫,法绒衬衫');
INSERT INTO list VALUES(NULL,'女装','针织衫','http://127.0.0.1:3000/img/woman-zhen/big.jpg','http://127.0.0.1:3000/img/woman-zhen/1.jpg,http://127.0.0.1:3000/img/woman-zhen/2.jpg','针织/毛衣,美丽诺');
INSERT INTO list VALUES(NULL,'女装','外套类','http://127.0.0.1:3000/img/woman-wai/big.jpg','http://127.0.0.1:3000/img/woman-wai/1.jpg,http://127.0.0.1:3000/img/woman-wai/2.jpg,http://127.0.0.1:3000/img/woman-wai/3.jpg,http://127.0.0.1:3000/img/woman-wai/4.jpg,http://127.0.0.1:3000/img/woman-wai/5.jpg,http://127.0.0.1:3000/img/woman-wai/6.jpg','休闲外套,功能外套,FLEECE外套,轻便羽绒,保暖羽绒,西装/大衣');
INSERT INTO list VALUES(NULL,'女装','裤&裙装','http://127.0.0.1:3000/img/woman-ku/big.jpg','http://127.0.0.1:3000/img/woman-ku/1.jpg,http://127.0.0.1:3000/img/woman-ku/2.jpg,http://127.0.0.1:3000/img/woman-ku/3.jpg,http://127.0.0.1:3000/img/woman-ku/4.jpg,http://127.0.0.1:3000/img/woman-ku/5.jpg,http://127.0.0.1:3000/img/woman-ku/6.jpg','短/七分裤,牛仔系列,宽裤,长裤,裙裤,洋装');
INSERT INTO list VALUES(NULL,'女装','家具&内衣','http://127.0.0.1:3000/img/woman-jia/big.jpg','http://127.0.0.1:3000/img/woman-jia/1.jpg,http://127.0.0.1:3000/img/woman-jia/2.jpg,http://127.0.0.1:3000/img/woman-jia/3.jpg,http://127.0.0.1:3000/img/woman-jia/4.jpg,http://127.0.0.1:3000/img/woman-jia/5.jpg,http://127.0.0.1:3000/img/woman-jia/6.jpg,http://127.0.0.1:3000/img/woman-jia/7.jpg','细肩带背心,清凉系列,内搭裤,家居服,保暖衣,内裤,袜子');
INSERT INTO list VALUES(NULL,'女装','配件','http://127.0.0.1:3000/img/woman-pei/big.jpg','http://127.0.0.1:3000/img/woman-pei/1.jpg,http://127.0.0.1:3000/img/woman-pei/2.jpg,http://127.0.0.1:3000/img/woman-pei/3.jpg,http://127.0.0.1:3000/img/woman-pei/4.jpg,http://127.0.0.1:3000/img/woman-pei/5.jpg','围巾,帽子/手套,皮带,鞋子,袖套');


INSERT INTO list VALUES(NULL,'男装','上身类','http://127.0.0.1:3000/img/man-top/big.jpg','http://127.0.0.1:3000/img/man-top/1.jpg,http://127.0.0.1:3000/img/man-top/2.jpg,http://127.0.0.1:3000/img/man-top/3.jpg,http://127.0.0.1:3000/img/man-top/4.jpg,http://127.0.0.1:3000/img/man-top/5.jpg,http://127.0.0.1:3000/img/man-top/6.jpg,http://127.0.0.1:3000/img/man-top/7.jpg','印花短T,短袖/背心,Pima棉,POLO衫,七分/长袖,厚棉系列,FLEECE');
INSERT INTO list VALUES(NULL,'男装','衬衫类','http://127.0.0.1:3000/img/man-chen/big.jpg','http://127.0.0.1:3000/img/man-chen/1.jpg,http://127.0.0.1:3000/img/man-chen/2.jpg,http://127.0.0.1:3000/img/man-chen/3.jpg','休闲衬衫,商务衬衫,法绒衬衫');
INSERT INTO list VALUES(NULL,'男装','针织衫','http://127.0.0.1:3000/img/man-zhen/big.jpg','http://127.0.0.1:3000/img/man-zhen/1.jpg,http://127.0.0.1:3000/img/man-zhen/2.jpg','针织/毛衣,美丽诺');
INSERT INTO list VALUES(NULL,'男装','外套类','http://127.0.0.1:3000/img/man-wai/big.jpg','http://127.0.0.1:3000/img/man-wai/1.jpg,http://127.0.0.1:3000/img/man-wai/2.jpg,http://127.0.0.1:3000/img/man-wai/3.jpg,http://127.0.0.1:3000/img/man-wai/4.jpg,http://127.0.0.1:3000/img/man-wai/5.jpg,http://127.0.0.1:3000/img/man-wai/6.jpg','休闲外套,功能外套,FLEECE外套,轻便羽绒,保暖羽绒,西装/大衣');
INSERT INTO list VALUES(NULL,'男装','裤装','http://127.0.0.1:3000/img/man-ku/big.jpg','http://127.0.0.1:3000/img/man-ku/1.jpg,http://127.0.0.1:3000/img/man-ku/2.jpg,http://127.0.0.1:3000/img/man-ku/3.jpg','短/七分裤,牛仔系列,长裤');
INSERT INTO list VALUES(NULL,'男装','家具&内衣','http://127.0.0.1:3000/img/man-jia/big.jpg','http://127.0.0.1:3000/img/man-jia/1.jpg,http://127.0.0.1:3000/img/man-jia/2.jpg,http://127.0.0.1:3000/img/man-jia/3.jpg,http://127.0.0.1:3000/img/man-jia/4.jpg,http://127.0.0.1:3000/img/man-jia/5.jpg,http://127.0.0.1:3000/img/man-jia/6.jpg','清凉系列,内衣/背心,家居服,保暖衣,内裤,袜子');
INSERT INTO list VALUES(NULL,'男装','配件','http://127.0.0.1:3000/img/man-pei/big.jpg','http://127.0.0.1:3000/img/man-pei/1.jpg,http://127.0.0.1:3000/img/man-pei/2.jpg,http://127.0.0.1:3000/img/man-pei/3.jpg','围巾,皮带,鞋子');
INSERT INTO list VALUES(NULL,'童装','上身类','http://127.0.0.1:3000/img/kid-top/big.jpg','http://127.0.0.1:3000/img/kid-top/1.jpg,http://127.0.0.1:3000/img/kid-top/2.jpg,http://127.0.0.1:3000/img/kid-top/3.jpg,http://127.0.0.1:3000/img/kid-top/4.jpg,http://127.0.0.1:3000/img/baby-top/5.jpg,http://127.0.0.1:3000/img/kid-top/6.jpg,http://127.0.0.1:3000/img/kid-top/7.jpg,http://127.0.0.1:3000/img/kid-top/8.jpg','印花短T,印花长T,短袖/背心,长袖,POLO衫,长版上衣,厚棉系列,FLEECE');
INSERT INTO list VALUES(NULL,'童装','衬衫类','http://127.0.0.1:3000/img/kid-chen/big.jpg','http://127.0.0.1:3000/img/kid-chen/1.jpg','休闲衬衫');
INSERT INTO list VALUES(NULL,'童装','针织衫','http://127.0.0.1:3000/img/kid-zhen/big.jpg','http://127.0.0.1:3000/img/kid-zhen/1.jpg','针织/毛衣');
INSERT INTO list VALUES(NULL,'童装','外套类','http://127.0.0.1:3000/img/kid-wai/big.jpg','http://127.0.0.1:3000/img/kid-wai/1.jpg,http://127.0.0.1:3000/img/kid-wai/2.jpg,http://127.0.0.1:3000/img/kid-wai/3.jpg,http://127.0.0.1:3000/img/kid-wai/4.jpg,http://127.0.0.1:3000/img/kid-wai/5.jpg','休闲外套,功能外套,FLEECE外套,轻便羽绒,保暖羽绒');
INSERT INTO list VALUES(NULL,'童装','裤&裙装','http://127.0.0.1:3000/img/kid-ku/big.jpg','http://127.0.0.1:3000/img/kid-ku/1.jpg,http://127.0.0.1:3000/img/kid-ku/2.jpg,http://127.0.0.1:3000/img/kid-ku/3.jpg,http://127.0.0.1:3000/img/kid-ku/4.jpg,http://127.0.0.1:3000/img/kid-ku/5.jpg','短/七分裤,牛仔系列,长裤,裙裤,洋装');
INSERT INTO list VALUES(NULL,'童装','家具&内衣','http://127.0.0.1:3000/img/kid-jia/big.jpg','http://127.0.0.1:3000/img/kid-jia/1.jpg,http://127.0.0.1:3000/img/kid-jia/2.jpg,http://127.0.0.1:3000/img/kid-jia/3.jpg,http://127.0.0.1:3000/img/kid-jia/4.jpg,http://127.0.0.1:3000/img/kid-jia/5.jpg,http://127.0.0.1:3000/img/kid-jia/6.jpg,http://127.0.0.1:3000/img/kid-jia/7.jpg','清凉系列,家居服,内衣,内搭裤,保暖衣,内裤,袜子');
INSERT INTO list VALUES(NULL,'童装','配件','http://127.0.0.1:3000/img/kid-pei/big.jpg','http://127.0.0.1:3000/img/kid-pei/1.jpg,http://127.0.0.1:3000/img/kid-pei/2.jpg,http://127.0.0.1:3000/img/kid-pei/3.jpg,http://127.0.0.1:3000/img/kid-pei/4.jpg','围巾,帽子/手套,皮带,鞋子');
INSERT INTO list VALUES(NULL,'婴幼儿','上身类','http://127.0.0.1:3000/img/baby-top/big.jpg','http://127.0.0.1:3000/img/baby-top/1.jpg,http://127.0.0.1:3000/img/baby-top/2.jpg,http://127.0.0.1:3000/img/baby-top/3.jpg,http://127.0.0.1:3000/img/baby-top/4.jpg,http://127.0.0.1:3000/img/baby-top/5.jpg,http://127.0.0.1:3000/img/baby-top/6.jpg,http://127.0.0.1:3000/img/baby-top/7.jpg,http://127.0.0.1:3000/img/baby-top/8.jpg','印花短T,印花长T,短袖/背心,连身衣,长袖,网眼系列,厚棉系列,FLEECE');
INSERT INTO list VALUES(NULL,'婴幼儿','衬衫类','http://127.0.0.1:3000/img/baby-chen/big.jpg','http://127.0.0.1:3000/img/baby-chen/1.jpg','休闲衬衫');
INSERT INTO list VALUES(NULL,'婴幼儿','外套类','http://127.0.0.1:3000/img/baby-wai/big.jpg','http://127.0.0.1:3000/img/baby-wai/1.jpg,http://127.0.0.1:3000/img/baby-wai/2.jpg','休闲外套,FLEECE外套');
INSERT INTO list VALUES(NULL,'婴幼儿','裤&裙装','http://127.0.0.1:3000/img/baby-ku/big.jpg','http://127.0.0.1:3000/img/baby-ku/1.jpg,http://127.0.0.1:3000/img/baby-ku/2.jpg,http://127.0.0.1:3000/img/baby-ku/3.jpg,http://127.0.0.1:3000/img/baby-ku/4.jpg,http://127.0.0.1:3000/img/baby-ku/5.jpg','短/七分裤,牛仔系列,长裤,洋裙,洋装');
INSERT INTO list VALUES(NULL,'婴幼儿','家具&内衣','http://127.0.0.1:3000/img/baby-jia/big.jpg','http://127.0.0.1:3000/img/baby-jia/1.jpg,http://127.0.0.1:3000/img/baby-jia/2.jpg,http://127.0.0.1:3000/img/baby-jia/3.jpg,http://127.0.0.1:3000/img/baby-jia/4.jpg,http://127.0.0.1:3000/img/baby-jia/5.jpg','家居服,内搭裤,防踢背心,保暖衣,袜子');
INSERT INTO list VALUES(NULL,'婴幼儿','配件','http://127.0.0.1:3000/img/baby-pei/big.jpg','http://127.0.0.1:3000/img/baby-pei/1.jpg,http://127.0.0.1:3000/img/baby-pei/2.jpg,http://127.0.0.1:3000/img/baby-pei/3.jpg','鞋类,其他配件,礼品组');
INSERT INTO list VALUES(NULL,'运动','运动女装','http://127.0.0.1:3000/img/sport-woman/big.jpg','http://127.0.0.1:3000/img/sport-woman/1.jpg,http://127.0.0.1:3000/img/sport-woman/2.jpg,http://127.0.0.1:3000/img/sport-woman/3.jpg,http://127.0.0.1:3000/img/sport-woman/4.jpg,http://127.0.0.1:3000/img/sport-woman/5.jpg','上身类-女,运动BRA,外套类-女,裤装类-女,配件类-女');
INSERT INTO list VALUES(NULL,'运动','运动男装','http://127.0.0.1:3000/img/sport-man/big.jpg','http://127.0.0.1:3000/img/sport-man/1.jpg,http://127.0.0.1:3000/img/sport-man/2.jpg,http://127.0.0.1:3000/img/sport-man/3.jpg,http://127.0.0.1:3000/img/sport-man/4.jpg','上身类-男,外套类-男,裤装类-男,配件类-男');
INSERT INTO list VALUES(NULL,'运动','运动童装','http://127.0.0.1:3000/img/sport-kid/big.jpg','http://127.0.0.1:3000/img/sport-kid/1.jpg,http://127.0.0.1:3000/img/sport-kid/2.jpg,http://127.0.0.1:3000/img/sport-kid/3.jpg,http://127.0.0.1:3000/img/sport-kid/4.jpg','上身类-童,外套类-童,裤装类-童,配件类-童');