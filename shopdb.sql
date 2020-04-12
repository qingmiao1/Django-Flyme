-- ��Ա��Ϣ����̨����Ա��ϢҲ�ڴ˱�׼��ͨ��״̬���֣�
CREATE TABLE `users`(
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `name` varchar(16) DEFAULT NULL,
  `password` char(32) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `address` varchar(255) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ��Ʒ����
CREATE TABLE `type`(
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `pid` int(11) unsigned DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ��Ʒ��Ϣ��
CREATE TABLE `goods`(
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(11) unsigned NOT NULL,
  `goods` varchar(32) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `content` text,
  `price` double(6,2) unsigned NOT NULL,
  `picname` varchar(255) DEFAULT NULL,
  `store` int(11) unsigned NOT NULL DEFAULT '0',
  `num` int(11) unsigned NOT NULL DEFAULT '0',
  `clicknum` int(11) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeid` (`typeid`)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ������Ϣ��
CREATE TABLE `orders`(
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT NULL,
  `linkman` varchar(32) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` char(6) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `total` double(8,2) unsigned DEFAULT NULL,
  `state` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ������Ϣ�����
CREATE TABLE `detail`(
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` int(11) unsigned DEFAULT NULL,
  `goodsid` int(11) unsigned DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `num` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ��user�ϱ������һ����̨����Ա�˻�����
insert into users value(null,'admin','����Ա',md5('admin'),1,'�����г�������ɽ��007��','100086','13566686868','122794105@qq.com',0,now());