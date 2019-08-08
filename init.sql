CREATE TABLE `career` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '职业名称',
  `img_url` varchar(255) DEFAULT NULL COMMENT '职业图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='职业';

CREATE TABLE `mastery` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '专精名称',
  `career_id` int(11) NOT NULL COMMENT '职业id',
  `img_url` varchar(255) DEFAULT NULL COMMENT '专精图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='职业专精表';

CREATE TABLE `equipment` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` int(5) NOT NULL COMMENT '装备类别 枚举   1.飞星/弹铗就问/咒隐D2...',
  `mastery_id` int(5) NOT NULL COMMENT '专精id',
  `grade` int(10) NOT NULL COMMENT '装备品级',
  `boost_times` int(2) NOT NULL COMMENT '可强化次数',
  `position` int(5) NOT NULL COMMENT '装备部位  枚举  1头部2胸部3手腕...',
  `name` varchar(200) NOT NULL COMMENT '装备名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

