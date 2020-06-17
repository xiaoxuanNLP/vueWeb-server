/*
 * @Description: 插入模拟的数据库信息语句
 */
insert into category
values(null, "手机");

insert into category
values(null, "电视机");
insert into category
values(null, "空调");
insert into category
values(null, "洗衣机");

insert into category
values(null, "保护套");
insert into category
values(null, "保护膜");
insert into category
values(null, "充电器");
insert into category
values(null, "充电宝");

insert into sellers values(1,'qwert','qwert','13211110000');
insert into sellers values(2,'zxcvb','zxcvb','13169696969');
insert into buyers values (1,'asdfg','asdfg','13888889999');
insert into admins values(1,'poiuy','poiuy','15299996666');

insert into product
values
  (null, 'Huawei/华为Mate30 5G', 1, '麒麟 990 5G', '超感光徕卡三摄影/ 前置相机 2400万像素 / 超长待机 / 最高可选8GB+256GB大存储 / 双卡双待 / 八核 ', 'public/imgs/phone/Huawei-Mate30.png', 2000.00, 1599.00, 10, 0,1),
  (null, 'Apple/苹果 iPhone 11', 1, 'Liquid视网膜高清显示屏', '1792 x 828像素 / 后置拍摄1200万像素超广角 / A13仿生芯片 / 双卡双待 / 多功能NFC', 'public/imgs/phone/Iphone-11.png', 2599.00, 2599.00, 10, 0,1),
  (null, '红米k30pro', 1, '骁龙865', '索尼6400万/ 游戏学生5g手机 / 四闪光灯 / 3200万自拍 / 10 倍混合光学变焦，50倍数字变焦 / 5260mAh ⼤电量 / 标配 30W疾速快充 / 德国莱茵低蓝光认证 / 多功能NFC / 红外万能遥控 / 1216超线性扬声器', 'public/imgs/phone/Redmi-k30pro.png', 2799.00, 2599.00, 20, 0,1),
  (null, '小米10青春版', 1, '5G手机', '5000mAh超长续航 / 50倍潜望式变焦 / 4GB+64GB', 'public/imgs/phone/Mi-10.png', 799.00, 699.00, 20, 0,1),
  (null, 'Samsung/三星 Galaxy S20 SM-G9810', 1, '骁龙865', '120Hz新品智能5G双模拍照手机/ 高通骁龙439八核处理器 / 4GB+64GB / 1200万AI后置相机', 'public/imgs/phone/Samsung-S20.png', 599.00, 699.00, 20, 0,1),
  (null, 'Samsung/三星 Galaxy S20 Ultra', 1, '120Hz官方全面屏智能', '智能8K拍照 / 5G双模手机 / 1.08亿像素 ', 'public/imgs/phone/Samsung-S20Ultra.png', 1399.00, 1199.00, 20, 0,1),
  (null, '荣耀20手机', 1, '全面屏超广角AI四摄', '麒麟980芯片 | 智能拍照手机', 'public/imgs/phone/Honor20.png', 999.00, 999.00, 20, 0,1),
  (null, 'Samsung/三星 S10', 1, '麒麟810芯片', 'OLED屏幕指纹 | 4000mAh超长续航 | AI人脸解锁 | 整机防泼溅', 'public/imgs/phone/Samsung-S10.png', 599.00, 539.00, 20, 0,1),
  (null, '荣耀Play4T Pro', 1, '麒麟810芯片', 'OLED屏幕指纹 | 4000mAh超长续航 | AI人脸解锁 | 整机防泼溅', 'public/imgs/phone/HonorPlay4T.png', 599.00, 539.00, 20, 0,1);

insert into product
values
  (null, '荣耀液晶电视', 2, '超清液晶屏', '荣耀智慧屏55吋| 64位四核处理器 | 1GB+4GB大内存 | 人工智能系统', 'public/imgs/appliance/Honor55.png', 799.00, 799.00, 10, 0,2),
  (null, 'Haier/海尔电视 55吋', 2, '4K高清，智能平板', '全面屏设计  | 4K + HDR | 杜比DTS | PatchWall | 海量内容 | 2GB + 8GB大存储 | 64位四核处理器', 'public/imgs/appliance/HaierTv.png', 2099.00, 1899.00, 10, 0,2),
  (null, '华为智慧屏 65吋', 2, 'Al摄像头，4k全面屏', '人工智能语音系统 | 海量影视内容 | 4K 超高清屏 | 杜比音效 | 64位四核处理器 | 2GB + 8GB大存储', 'public/imgs/appliance/HuaweiTV-V65.png', 3999.00, 2799.00, 10, 0,2),
  (null, 'TCL 65Q8 65英寸', 2, 'FHD全高清屏，人工智能语音', '人工智能语音系统 | FHD全高清屏 | 64位四核处理器 | 海量片源 | 1GB+8GB大内存 | 钢琴烤漆', 'public/imgs/appliance/TCL-65Q8.png', 1499.00, 1299.00, 10, 0,2),
  (null, '小米电视4C 43英寸', 2, '4K HDR，人工智能系统', '人工智能 | 大内存 | 杜比音效 | 超窄边 | 4K HDR | 海量片源 | 纤薄机身| 钢琴烤漆', 'public/imgs/appliance/MiTv-4C-43.png', 1999.00, 1799.00, 10, 0,2),
  (null, 'panasonic.松下', 2, '4K HDR，人工智能系统', '人工智能 | 大内存 | 杜比音效 | 超窄边 | 4K HDR | 海量片源 | 纤薄机身| 钢琴烤漆', 'public/imgs/appliance/Panasonic-65.png', 2999.00, 2799.00, 10, 0,2),
  (null, 'TCL 50T6 50英寸', 2, '壁画外观，全面屏，远场语音', '纯平背板 | 通体13.9mm | 远场语音 | 4K+HDR | 杜比+DTS | 画框模式 | 内置小爱同学 | PatchWall | SoundBar+低音炮 | 四核处理器+大存储', 'public/imgs/appliance/TCLTv-50T6.png', 6999.00, 6999.00, 10, 0,2);

insert into product
values
  (null, 'Haier/海尔', 3, '变频节能省电，自清洁', '一级能效 | 1.5匹 | 全直流变频 | 高效制冷/热 | 静音设计 | 自清洁 | 全屋互联', 'public/imgs/appliance/Air-Haier.png', 2699.00, 2599.00, 20, 10,1),
  (null, 'Gree/格力 KFR-35GW', 3, '出众静音，快速制冷热', '大1.5匹 | 三级能效 | 静音 | 快速制冷热 | 广角送风 | 除湿功能 | 高密度过滤网 | 典雅外观', 'public/imgs/appliance/Gree-35GW.png', 1799.00, 1699.00, 20, 8,1);

insert into product
values
  (null, '海尔洗衣机 10kg', 4, '智能洗烘，省心省力', '国标双A+级洗烘能力 / 22种洗烘模式 / 智能投放洗涤剂 / 支持OTA在线智能升级 / 智能空气洗 / 除菌率达99.9%+', 'public/imgs/appliance/Washer-Haier.png', 2999.00, 2999.00, 20, 7,1),
  (null, '小天鹅水立方洗衣机 10kg', 4, '智能洗衣', '国标双A+级洗烘能力 支持OTA在线智能升级 / 智能空气洗', 'public/imgs/appliance/Washer-XTE.png', 2999.00, 2999.00, 20, 7,1);

insert into product
values
  (null, 'iphone手机壳', 5, '镜头摄像孔全包', '优选PC材料，强韧张力，经久耐用 / 精选开孔，全面贴合机身 / 手感轻薄细腻，舒适无负担', 'public/imgs/accessory/Shell-Iphone.png', 39.00, 39.00, 20, 10,1),
  (null, '华为p30手机壳', 5, '一个与众不同的保护壳', '彰显独特个性 / 轻薄无负担 / 优选PC材料 / 贴合机身 / 潮流五色', 'public/imgs/accessory/Shell-p30.png', 49.00, 39.00, 20, 10,1);

insert into product
values
  (null, '华为mate30pro手机膜', 6, '高清透亮，耐磨性强', '耐磨性强，防护更出众 / 疏油疏水，有效抗水抗脏污 / 高清透亮，保留了原生屏幕的亮丽颜色和清晰度 / 操作灵敏，智能吸附 / 进口高端PET材质，裸机般手感', 'public/imgs/accessory/Screen-Mate30.png', 19.00, 19.00, 20, 9,2),
  (null, '小米10 标准高透贴膜', 6, '高清透亮，耐磨性强', '耐磨性强，防护更出众 / 疏油疏水，有效抗水抗脏污 / 高清透亮，保留了原生屏幕的亮丽颜色和清晰度 / 操作灵敏，智能吸附 / 进口高端PET材质，裸机般手感', 'public/imgs/accessory/Screen-Mi10.png', 19.00, 19.00, 20, 9,2);

insert into product
values
  (null, '小米USB充电器30W快充版（1A1C）', 7, '多一种接口，多一种选择', '双口输出 / 30W 输出 / 可折叠插脚 / 小巧便携', 'public/imgs/accessory/charger-30w.png', 59.00, 59.00, 20, 8,2),
  (null, '小米USB充电器快充版（18W）', 7, '安卓、苹果设备均可使用', '支持QC3.0设备充电 / 支持iOS设备充电/ 美观耐用', 'public/imgs/accessory/charger-18w.png', 29.00, 29.00, 20, 8,2),
  (null, '小米USB充电器60W快充版（6口）', 7, '6口输出，USB-C输出接口', '6口输出 / USB-C输出接口 / 支持QC3.0快充协议 / 总输出功率60W', 'public/imgs/accessory/charger-60w.png', 129.00, 129.00, 20, 0,2),
  (null, '小米USB充电器36W快充版（2口）', 7, '6多重安全保护，小巧便携', '双USB输出接口 / 支持QC3.0快充协议 / 多重安全保护 / 小巧便携', 'public/imgs/accessory/charger-36w.png', 59.00, 59.00, 20, 0,2),
  (null, '小米车载充电器快充版', 7, '让爱车成为移动充电站', 'QC3.0 双口输出 / 智能温度控制 / 5重安全保护 / 兼容iOS&Android设备', 'public/imgs/accessory/charger-car.png', 69.00, 69.00, 20, 0,2),
  (null, '小米车载充电器快充版(37W)', 7, '双口快充，车载充电更安全', '单口27W 快充 / 双口输出 / 多重安全保护', 'public/imgs/accessory/charger-car-37w.png', 49.00, 49.00, 20, 0,2),
  (null, '小米二合一移动电源（充电器）', 7, '一个设备多种用途', '5000mAh充沛电量 / 多协议快充 / USB 口输出', 'public/imgs/accessory/charger-tio.png', 99.00, 99.00, 20, 0,2);

insert into product
values
  (null, '小米无线充电宝青春版10000mAh', 8, '能量满满，无线有线都能充', '10000mAh大容量 / 支持边充边放 / 有线无线都能充 / 双向快充', 'public/imgs/accessory/charger-10000mAh.png', 129.00, 129.00, 20, 8,1);

insert into product
values
  (null, '小米CC9 Pro/尊享版 撞色飘带保护壳', 5, '全面贴合，无感更舒适', '优选环保PC材质，强韧张力，全面贴合，无感更舒适', 'public/imgs/accessory/protectingShell-Mi-CC9Pro.png', 69.00, 69.00, 20, 0,1),
  (null, 'Redmi K20系列 幻境之心保护壳', 5, '柔软坚韧,全面贴合', '优质环保材质，柔软坚韧 / 全面贴合，有效抵抗灰尘 / 鲜亮三种颜色可选，为爱机随时换装', 'public/imgs/accessory/protectingShell-RedMi-K20.png', 39.00, 39.00, 20, 0,1),
  (null, '小米9 SE 街头风保护壳黑色', 5, '个性时尚,细节出众', '个性时尚 / 细节出众 / 纤薄轻巧 / 多彩时尚', 'public/imgs/accessory/protectingShell-Mi-9SE.png', 49.00, 49.00, 20, 0,1),
  (null, '小米9 街头风保护壳 红色', 5, '个性时尚,细节出众', '时尚多彩 / 细节出众 / 纤薄轻巧 / 是腕带也是支架', 'public/imgs/accessory/protectingShell-Mi-9-red.png', 49.00, 49.00, 20, 0,1),
  (null, '小米MIX 3 极简保护壳蓝色', 5, '时尚简约设计，手感细腻顺滑', '时尚简约设计，手感细腻顺滑 / 优质环保PC原材料，强韧张力，经久耐用 / 超薄 0.8MM厚度', 'public/imgs/accessory/protectingShell-Mix-3.png', 49.00, 12.90, 20, 0,1);

insert into product_picture
values
  (null, 1, "public/imgs/phone/picture/Huawai-Mate30-1.png", null),
  (null, 1, "public/imgs/phone/picture/Huawai-Mate30-2.png", null),
  (null, 1, "public/imgs/phone/picture/Huawai-Mate30-3.png", null);

insert into product_picture
values
  (null, 2, "public/imgs/phone/picture/Iphone-11-1.png", null),
  (null, 2, "public/imgs/phone/picture/Iphone-11-2.png", null),
  (null, 2, "public/imgs/phone/picture/Iphone-11-3.png", null);

insert into product_picture
values
  (null, 3, "public/imgs/phone/picture/Redmi-k30pro-1.png", null),
  (null, 3, "public/imgs/phone/picture/Redmi-k30pro-2.png", null),
  (null, 3, "public/imgs/phone/picture/Redmi-k30pro-3.png", null);

insert into product_picture
values
  (null, 4, "public/imgs/phone/picture/Mi-10-1.png", null),
  (null, 4, "public/imgs/phone/picture/Mi-10-2.png", null),
  (null, 4, "public/imgs/phone/picture/Mi-10-3.png", null);

insert into product_picture
values
  (null, 5, "public/imgs/phone/picture/Samsung-S20-1.png", null),
  (null, 5, "public/imgs/phone/picture/Samsung-S20-2.png", null),
  (null, 5, "public/imgs/phone/picture/Samsung-S20-3.png", null),
  (null, 5, "public/imgs/phone/picture/Samsung-S20-4.png", null);

insert into product_picture
values
  (null, 6, "public/imgs/phone/picture/Samsung-S20Ultra-1.png", null),
  (null, 6, "public/imgs/phone/picture/Samsung-S20Ultra-1.png", null);

insert into product_picture
values
  (null, 7, "public/imgs/phone/picture/Honor20-1.png", null),
  (null, 7, "public/imgs/phone/picture/Honor20-2.png", null),
  (null, 7, "public/imgs/phone/picture/Honor20-3.png", null);

insert into product_picture
values
  (null, 8, "public/imgs/phone/picture/Samsung-S10-1.png", null),
  (null, 8, "public/imgs/phone/picture/Samsung-S10-2.png", null),
  (null, 8, "public/imgs/phone/picture/Samsung-S10-3.png", null);

insert into product_picture
values
  (null, 9, "public/imgs/phone/picture/HonorPlay4T-1.png", null),
  (null, 9, "public/imgs/phone/picture/HonorPlay4T-2.png", null),
  (null, 9, "public/imgs/phone/picture/HonorPlay4T-3.png", null);

insert into product_picture
values
  (null, 10, "public/imgs/phone/picture/Honor55-1.png", null),
  (null, 10, "public/imgs/phone/picture/Honor55-2.png", null),
  (null, 10, "public/imgs/phone/picture/Honor55-3.png", null);

insert into product_picture
values
  (null, 11, "public/imgs/phone/picture/HaierTv-1.png", null),
  (null, 11, "public/imgs/phone/picture/HaierTv-2.png", null),
  (null, 11, "public/imgs/phone/picture/HaierTv-3.png", null);

insert into product_picture
values
  (null, 12, "public/imgs/phone/picture/HuaweiTV-V65-1.png", null),
  (null, 12, "public/imgs/phone/picture/HuaweiTV-V65-2.png", null);

insert into product_picture
values
  (null, 13, "public/imgs/phone/picture/TCL-65Q8-1.png", null),
  (null, 13, "public/imgs/phone/picture/TCL-65Q8-2.png", null),
  (null, 13, "public/imgs/phone/picture/TCL-65Q8-3.png", null),
  (null, 13, "public/imgs/phone/picture/TCL-65Q8-4.png", null);

insert into product_picture
values
  (null, 14, "public/imgs/phone/picture/MiTv-4C-43-1.png", null),
  (null, 14, "public/imgs/phone/picture/MiTv-4C-43-2.png", null),
  (null, 14, "public/imgs/phone/picture/MiTv-4C-43-3.png", null),
  (null, 14, "public/imgs/phone/picture/MiTv-4C-43-4.png", null);

insert into product_picture
values
  (null, 15, "public/imgs/phone/picture/Panasonic-65-1.png", null),
  (null, 15, "public/imgs/phone/picture/Panasonic-65-2.png", null),
  (null, 15, "public/imgs/phone/picture/Panasonic-65-3.png", null);

insert into product_picture
values
  (null, 16, "public/imgs/phone/picture/TCLTv-50T6-1.png", null),
  (null, 16, "public/imgs/phone/picture/TCLTv-50T6-2.png", null),
  (null, 16, "public/imgs/phone/picture/TCLTv-50T6-3.png", null);

insert into product_picture
values
  (null, 17, "public/imgs/phone/picture/Air-Haier-1.png", null),
  (null, 17, "public/imgs/phone/picture/Air-Haier-2.png", null),
  (null, 17, "public/imgs/phone/picture/Air-Haier-3.png", null),
  (null, 17, "public/imgs/phone/picture/Air-Haier-4.png", null);

insert into product_picture
values
  (null, 18, "public/imgs/phone/picture/Gree-35GW-1.png", null),
  (null, 18, "public/imgs/phone/picture/Gree-35GW-2.png", null);

insert into product_picture
values
  (null, 19, "public/imgs/phone/picture/Washer-Haier-1.png", null),
  (null, 19, "public/imgs/phone/picture/Washer-Haier-2.png", null),
  (null, 19, "public/imgs/phone/picture/Washer-Haier-3.png", null),
  (null, 19, "public/imgs/phone/picture/Washer-Haier-4.png", null);

insert into product_picture
values
  (null, 20, "public/imgs/phone/picture/Washer-XTE-1.png", null),
  (null, 20, "public/imgs/phone/picture/Washer-XTE-2.png", null),
  (null, 20, "public/imgs/phone/picture/Washer-XTE-3.png", null),
  (null, 20, "public/imgs/phone/picture/Washer-XTE-4.png", null);

insert into product_picture
values
  (null, 21, "public/imgs/phone/picture/Shell-Iphone-1.png", null),
  (null, 21, "public/imgs/phone/picture/Shell-Iphone-2.png", null),
  (null, 21, "public/imgs/phone/picture/Shell-Iphone-3.png", null),
  (null, 21, "public/imgs/phone/picture/Shell-Iphone-4.png", null);

insert into product_picture
values
  (null, 22, "public/imgs/phone/picture/Shell-p30-1.png", null),
  (null, 22, "public/imgs/phone/picture/Shell-p30-2.png", null),
  (null, 22, "public/imgs/phone/picture/Shell-p30-3.png", null),
  (null, 22, "public/imgs/phone/picture/Shell-p30-4.png", null);

insert into product_picture
values
  (null, 23, "public/imgs/phone/picture/Screen-Mate30-1.png", null),
  (null, 23, "public/imgs/phone/picture/Screen-Mate30-2.png", null),
  (null, 23, "public/imgs/phone/picture/Screen-Mate30-3.png", null),
  (null, 23, "public/imgs/phone/picture/Screen-Mate30-4.png", null);
insert into product_picture
values
  (null, 24, "public/imgs/phone/picture/Screen-Mi10-1.png", null),
  (null, 24, "public/imgs/phone/picture/Screen-Mi10-2.png", null),
  (null, 24, "public/imgs/phone/picture/Screen-Mi10-3.png", null),
  (null, 24, "public/imgs/phone/picture/Screen-Mi10-4.png", null);


insert into product_picture
values
  (null, 25, "public/imgs/phone/picture/charger-30w-1.jpg", null),
  (null, 25, "public/imgs/phone/picture/charger-30w-2.jpg", null),
  (null, 25, "public/imgs/phone/picture/charger-30w-3.jpg", null),
  (null, 25, "public/imgs/phone/picture/charger-30w-4.jpg", null);

insert into product_picture
values
  (null, 26, "public/imgs/phone/picture/charger-18w-1.jpg", null),
  (null, 26, "public/imgs/phone/picture/charger-18w-2.jpg", null),
  (null, 26, "public/imgs/phone/picture/charger-18w-3.jpg", null);

insert into product_picture
values
  (null, 27, "public/imgs/phone/picture/charger-60w-1.jpg", null),
  (null, 27, "public/imgs/phone/picture/charger-60w-2.jpg", null),
  (null, 27, "public/imgs/phone/picture/charger-60w-3.jpg", null),
  (null, 27, "public/imgs/phone/picture/charger-60w-4.jpg", null);

insert into product_picture
values
  (null, 28, "public/imgs/phone/picture/charger-36w-1.jpg", null),
  (null, 28, "public/imgs/phone/picture/charger-36w-2.jpg", null),
  (null, 28, "public/imgs/phone/picture/charger-36w-3.jpg", null),
  (null, 28, "public/imgs/phone/picture/charger-36w-4.jpg", null),
  (null, 28, "public/imgs/phone/picture/charger-36w-5.jpg", null);

insert into product_picture
values
  (null, 29, "public/imgs/phone/picture/charger-car-1.jpg", null),
  (null, 29, "public/imgs/phone/picture/charger-car-2.jpg", null),
  (null, 29, "public/imgs/phone/picture/charger-car-3.jpg", null),
  (null, 29, "public/imgs/phone/picture/charger-car-4.jpg", null),
  (null, 29, "public/imgs/phone/picture/charger-car-5.jpg", null),
  (null, 29, "public/imgs/phone/picture/charger-car-6.jpg", null);

insert into product_picture
values
  (null, 30, "public/imgs/phone/picture/charger-car-37w-1.jpg", null),
  (null, 30, "public/imgs/phone/picture/charger-car-37w-2.jpg", null),
  (null, 30, "public/imgs/phone/picture/charger-car-37w-3.jpg", null),
  (null, 30, "public/imgs/phone/picture/charger-car-37w-4.jpg", null),
  (null, 30, "public/imgs/phone/picture/charger-car-37w-5.jpg", null);

insert into product_picture
values
  (null, 31, "public/imgs/phone/picture/charger-tio-1.jpg", null),
  (null, 31, "public/imgs/phone/picture/charger-tio-2.jpg", null),
  (null, 31, "public/imgs/phone/picture/charger-tio-3.jpg", null),
  (null, 31, "public/imgs/phone/picture/charger-tio-4.jpg", null),
  (null, 31, "public/imgs/phone/picture/charger-tio-5.jpg", null);

insert into product_picture
values
  (null, 32, "public/imgs/phone/picture/charger-10000mAh-1.jpg", null),
  (null, 32, "public/imgs/phone/picture/charger-10000mAh-2.jpg", null),
  (null, 32, "public/imgs/phone/picture/charger-10000mAh-3.jpg", null),
  (null, 32, "public/imgs/phone/picture/charger-10000mAh-4.jpg", null),
  (null, 32, "public/imgs/phone/picture/charger-10000mAh-5.jpg", null);

insert into product_picture
values
  (null, 33, "public/imgs/phone/picture/protectingShell-Mi-CC9Pro-1.jpg", null);

insert into product_picture
values
  (null, 34, "public/imgs/phone/picture/protectingShell-RedMi-K20-1.jpg", null);

insert into product_picture
values
  (null, 35, "public/imgs/phone/picture/protectingShell-Mi-9SE-1.jpg", null);

insert into product_picture
values
  (null, 36, "public/imgs/phone/picture/protectingShell-Mi-9-red-1.jpg", null);

insert into product_picture
values
  (null, 37, "public/imgs/phone/picture/protectingShell-Mix-3-1.jpg", null);

insert discount values (null,9);
