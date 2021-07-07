// 結構
// signPoemID  bigID  word  joB  moneY  marrY  familY  searcH  traveL  sicK  lessoN  linK
// UID 中文ID 籤詩 營生 求財 婚姻 家事 尋人 遠行 治病 功名 詩籤源由(網址)

var signPoem = [
[001, '壹', '菩提本無樹，明鏡亦非台。  本來無一物，何處惹塵埃?',  '所求順遂', '大蝕', '和樂融融', '不遂', '訊在即', '宜行', '三月內', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/02/blog-post.html'],
[002, '貳', '有情來下種，因地果還生。  無情既無種，無性亦無生。',  '如意', '有大財', '可合', '和睦', '難求', '前途未明', '即可痊癒', '終有成', 'http://jizo-words.blogspot.tw/2015/02/blog-post_641.html'],
[003, '參', '念想由來幻，性自無終始。  若得此中意，長波當自止。',  '所求順遂', '甚得利', '漸行漸遠', '門庭稀', '得鳳鱗', '路遙', '危後終吉', '大成就', 'http://jizo-words.blogspot.tw/2015/02/blog-post_44.html'],
[004, '肆', '心地無非自性戒，心地無癡自性慧，心地無亂自性定。  不增不減自金剛，身去身來本三昧。',  '不遂', '甚得利', '和樂融融', '不遂', '貴人將至', '平安大吉', '危後終吉', '得如願 ', 'http://jizo-words.blogspot.tw/2015/02/blog-post_90.html'],
[005, '伍', '經誦三千部，曹溪一句亡。  未明出世旨，寧歇累生狂。  羊鹿牛權設。初中後善揚。  誰知火宅內，元是法中王。',  '所求順遂', '大蝕', '可合', '不遂', '可得', '防破財', '三月內', '破', 'http://jizo-words.blogspot.tw/2015/02/blog-post_95.html'],
[006, '陸', '大圓鏡智性清淨，平等性智心無病。  妙觀察智見非功，成所作智同圓鏡。  五八六七果因轉，但用名言無實性。  若于轉處不留情，繁興永處那伽定。',  '不遂', ' 平平', '可合', '和睦', '訊在即', '甚防小人', '危 ', '破', 'http://jizo-words.blogspot.tw/2015/02/blog-post_3.html'],
[007, '柒', '因守無常心，佛說有常性。  不知方便者，猶春池拾礫。  我今不施功，佛性而見前。  非師相授與，我亦無所得。',  '或漸得利', '有大財', '尋尋覓覓', '大吉平安', '可得', '前途未明', '即可痊癒', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/02/blog-post_48.html'],
[008, '捌', '不見一法存無見，大似浮雲遮日面。  不知一法守空知，還如太虛生閃電。  此之知見瞥然興，錯認何曾解方便。',  '所求順遂', '有大財', '可合', '門庭永昌', '訊在即', '平安大吉', '三月內', '漸入佳境 ', 'http://jizo-words.blogspot.tw/2015/02/blog-post_910.html'],
[009, '玖', '分別一切法，不起分別想。  劫火燒海底，風鼓山相擊。  真常寂滅樂，涅槃相如是。',  '另尋他路', '甚得利', '和樂融融', '大吉平安', '訊在即', '防破財', '三月內', '終有成', 'http://jizo-words.blogspot.tw/2015/02/blog-post_23.html'],
[010, '拾', '君不見， 絕學無為閒道人，不除妄想不求真。 無明實性即佛性，幻化空身即法身。',  '另尋他路', '平平', '可合', '大吉平安', '訊在即', '防破財', '危後終吉', '破', 'http://jizo-words.blogspot.tw/2015/02/blog-post_906.html'],
[011, '拾壹', '心地含諸種，遇澤悉皆萌。  三昧華無相，何壞復何成!',  '不遂', '甚得利', '可合', '門庭永昌', '難求', '平安大吉', '即可痊癒', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/02/blog-post_56.html'],
[012, '拾貳', '摧殘枯木倚寒林，幾度逢春不變心。  樵客遇之猶不顧，郢人那得苦追尋。  一池荷葉衣無盡，數樹鬆花食有餘。  剛被世人知住處，又移茅舍入深居。',  '如意', '或有小穫', '可合', '門庭永昌', '龍蛇難辨', '平安大吉', '危', '終有成', 'http://jizo-words.blogspot.tw/2015/02/blog-post_67.html'],
[013, '拾參', '日用事無別，唯吾自偶諧。  頭頭非取舍，處處沒張乖。  朱紫誰為號，北山絕點埃。  神通並妙用，運水及般[搬]柴。',  '另尋他路', '有大財', '春風至', '不遂', '可得', '前途未明', '三月內 ', '終有成', 'http://jizo-words.blogspot.tw/2015/02/blog-post_91.html'],
[014, '拾肆', '獨弦琴子為君彈，鬆柏長青不怯寒。  金礦相和性自別，任向君前試取看。',  '如意', '甚得利', '漸行漸遠', '門庭永昌', '難求', '防破財', '即可痊癒', '得如願', 'http://jizo-words.blogspot.tw/2015/02/blog-post_877.html'],
[015, '拾伍', '不是溈山不是牛，一身兩號實難酬。  離卻兩頭應須道，如何道得出常流。',  '另尋他路', '有大財', '和樂融融', '不遂', '貴人將至', '前途未明', '危後終吉', '破', 'http://jizo-words.blogspot.tw/2015/02/blog-post_82.html'],
[016, '拾陸', '我母多年迷自心，如今華開菩提林， 當來三會若相值，歸命大悲觀世音。',  '所求順遂', '平平', '漸行漸遠', '門庭永昌', '貴人將至', '甚防小人', '或可癒', ' 大成大就', 'http://jizo-words.blogspot.tw/2015/02/blog-post_59.html'],
[017, '拾柒', '空門不肯出，投窗也大癡。 百年鑽故紙，何日出頭時?',  '不遂', '平平', '春風至', '有危', '難求', '前途未明', '或可癒 ', '終有成', 'http://jizo-words.blogspot.tw/2015/02/blog-post_50.html'],
[018, '拾捌', '攢眉多，稱心少， 叵耐東村黑黃老。 供利不曾將得來，放驢吃我堂前草。',  '所求順遂', '甚得利', '可合', '和睦', '貴人將至', '防破財', '危後終吉', '得如願 ', 'http://jizo-words.blogspot.tw/2015/03/blog-post.html'],
[019, '拾玖', '鍊得身形似鶴形，千株鬆下兩函經。  我來問道無餘說，雲在青天水在瓶。',  '不遂', '大蝕', '漸行漸遠', '和睦', '難求', '前途未明', '危 ', '得如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_1.html'],
[020, '貳拾', '四大性自復，如子得其母。  火熱風動搖，水濕地堅固。  眼色耳音聲，鼻香舌鹹醋。  然依一一法，依根葉分布。',  '或漸得利', '大蝕', '尋尋覓覓', '和睦', '難求', '甚防小人', '三月內', '終有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_2.html'],
[021, '貳拾壹', '從來共住不知名，任運相將只麼行。  自古上賢猶不識，造次凡流豈可明?',  '或漸得利', '大蝕', '尋尋覓覓', '大吉平安 ', '貴人將至', '防破財', '即可痊癒', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_3.html'],
[022, '貳拾貳', '選得幽居愜野情，終年無送亦無迎。  有時直上孤峰頂，月下披雲笑一聲。',  '或漸得利', '大蝕', '尋尋覓覓', '大吉平安 ', '貴人將至', '防破財', '即可痊癒', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_3.html'],
[023, '貳拾參', '學者恆沙無一悟，過在尋他舌頭路。  欲得忘形泯蹤蹟，努力殷勤空裡步。',  '或漸得利', '大蝕', '春風至', '不遂', '訊在即', '平安大吉', '三月內', '得如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_39.html'],
[024, '貳拾肆', '千尺絲綸直下垂，一波才動萬波隨。  夜靜水寒魚不食，滿船空載月明歸。',  '所求順遂', '甚得利', '尋尋覓覓', '大吉平安', '貴人將至 ', '前途未明', '或可癒 ', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_28.html'],
[025, '貳拾伍', '決志歸鄉去，乘船渡五湖。  舉篙星月隱，停棹日輪孤。  解纜離邪岸，張帆出正途。  到來家蕩盡，免作屋中愚。',  '或漸得利', '平平', '和樂融融', '不遂', '訊在即', '前途未明', '即可痊癒', '得如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_98.html'],
[026, '貳拾陸', '舊竹生新筍，新花長舊枝。 竹密豈妨流水過，山高那阻野雲飛。',  '另尋他路', '大蝕', '漸行漸遠', '和睦', '難求', '防破財', '危後終吉', '終有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_61.html'],
[027, '貳拾柒', '南山路仄東山低，新到莫辭三轉泥。  嗟汝在途經日久，明明不曉卻成迷。',  '所求順遂', '甚得利', '可合', '有危', '訊在即', '防破財', '或可癒', '得如願 ', 'http://jizo-words.blogspot.tw/2015/03/blog-post_4.html'],
[028, '貳拾捌', '我有神珠一顆，久被塵勞關鎖。  今朝塵盡光生，照破山河萬朵。',  '如意', '平平', '和樂融融', '和睦', '龍蛇難辨', '平安大吉', '危後終吉', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_30.html'],
[029, '貳拾玖', '寄語江西老古錐，從教日炙與風吹。  兒孫不是無料理，要見冰消瓦解時。',  '另尋他路', '或有小穫', '和樂融融', '有危', '訊在即', '前途未明', '危後終吉', '破', 'http://jizo-words.blogspot.tw/2015/03/blog-post_86.html'],
[030, '參拾', '萬象之中獨露身，唯人自肯乃方親。  昔時謬向途中覓，今日看來火裡冰。',  '另尋他路', '或有小穫', '漸行漸遠', '和睦', '訊在即', '前途未明', '危後終吉', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_62.html'],
[031, '參拾壹', '若道法皆如幻有，造諸過惡應無咎。  雲何所作業不忘，而藉佛慈興接誘。',  '另尋他路', '大蝕', '春風至', '有危', '訊在即', '前途未明', '危', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_33.html'],
[032, '參拾貳', '世人休說路行難，鳥道羊腸咫尺間。  珍重苧溪溪畔水，汝歸滄海我歸山。',  '或漸得利', '甚得利', '春風至', '大吉平安', '難求', '防破財', '或可癒', '終有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_26.html'],
[033, '參拾參', '棄卻瓢囊摵碎琴，如今不戀水中金。  自從一見黃龍後，始覺從前錯用心。',  '所求順遂', '甚得利', '尋尋覓覓', '有危', '龍蛇難辨', '宜行', '或可癒', '得如願 ', 'http://jizo-words.blogspot.tw/2015/03/blog-post_37.html'],
[034, '參拾肆', '擁毳對芳叢，由來趣不同。  發從今日白，花是去年紅。  豔冶隨朝露，馨香逐晚風。  何須待零落，然後始知空。',  '所求順遂', '平平', '尋尋覓覓', '不遂', '龍蛇難辨', '宜行', '或可癒', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_5.html'],
[035, '參拾伍', '一擊忘所知，更不假修持。  動容揚古路，不墮悄然機。  處處無蹤蹟，聲色外威儀。  諸方達道者，鹹言上上機。',  '另尋他路', '平平', '可合', '有危', '貴人將至', '前途未明', '危後終吉', '得如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_7.html'],
[036, '參拾陸', '道在乘時須濟物，遠方來慕自騰騰。  他年有叟情相似，日日香煙夜夜燈。',  '不遂', '甚得利', '可合', '門庭永昌', '貴人將至', '宜行', '三月內', '破', 'http://jizo-words.blogspot.tw/2015/03/blog-post_21.html'],
[037, '參拾柒', '白銀世界金色身，情與非情共一真。  明暗盡時俱不照，日輪午後示全身。',  '不遂', '大蝕', '漸行漸遠', '和睦', '訊在即', '前途未明', '即可痊癒', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_8.html'],
[038, '參拾捌', '孤舟夜靜泛波瀾，兩岸蘆花對月圓。  金鱗自入深潭去，空使漁翁執釣竿。',  '不遂', '有大財', '漸行漸遠', '有危', '可得', '宜行 ', '危後終吉', '得如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_90.html'],
[039, '參拾玖', '長江行不盡，帝裡到何時?  既得涼風便，休將櫓棹施。',  '所求順遂', '平平', '漸行漸遠', '有危', '可得', '甚防小人', '危後終吉', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_94.html'],
[040, '肆拾', '八角磨盤空裡走，金毛師子變作狗。  擬欲將身北鬥藏，應須合掌南辰後。',  '或漸得利', '或有小穫', '漸行漸遠', '和睦', '訊在即', '平安大吉', '危', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_18.html'],
[041, '肆拾壹', '傑出叢林是趙州，老婆勘破有來由。  而今四海清如鏡，行人莫與路為仇。',  '不遂', '有大財', '尋尋覓覓', '門庭永昌', '龍蛇難辨', '宜行', '危後終吉', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_67.html'],
[042, '肆拾貳', '生緣斷處伸驢腳，驢腳伸時佛手開。  為報五湖參學者，三關一一透將來。',  '所求順遂', '甚得利', '可合', '有危', '難求', '宜行', '危 ', '終有成 ', 'http://jizo-words.blogspot.tw/2015/03/blog-post_6.html'],
[043, '肆拾參', '得不得，傳不傳，歸根得旨復何言?  憶得首山曾漏洩，新歸騎驢阿家牽。',  '所求順遂', '平平', '可合', '大吉平安', '龍蛇難辨', '宜行', '三月內', '破', 'http://jizo-words.blogspot.tw/2015/03/blog-post_0.html'],
[044, '肆拾肆', '心隨萬境轉，轉處實能幽。隨流認得性，無喜亦無憂。',  '不遂', '或有小穫', '和樂融融', '大吉平安', '難求', '前途未明', '或可癒', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_83.html'],
[045, '肆拾伍', '二十餘年用意猜，幾番曾把此心灰。而今潦倒逢知已，李白元來是秀才。',  '所求順遂', '或有小穫', '春風至', '和睦', '訊在即', '宜行 ', '或可癒', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_79.html'],
[046, '肆拾陸', '群陰剝盡一陽生，草木園林盡發萌。 唯有衲僧無底缽，依前盛飯又盛羹。',  '不遂', '大蝕', '春風至', '不遂', '訊在即', '宜行', '即可痊癒', '終有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_88.html'],
[047, '肆拾柒', '東邊覷了復西觀，拄杖重重話歲寒。 帶雨一枝花落盡，不煩公子倚欄幹。',  '如意', '平平', '可合', '不遂', '難求', '宜行', '即可痊癒', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_63.html'],
[048, '肆拾捌', '我路碧空外，白雲無處閒。 世有無根樹，黃葉風送還。',  '所求順遂', '甚得利', '尋尋覓覓', '有危', '訊在即', '前途未明', '即可痊癒', '終有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_70.html'],
[049, '肆拾玖', '蒙師點出秦時鏡，照見父母未生時。 如今覺了何所得，夜放烏雞帶雪飛。',  '或漸得利', '甚得利', '和樂融融', '和睦', '龍蛇難辨', '平安大吉', '即可痊癒', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_11.html'],
[050, '伍拾', '正中偏，一輪皎潔正當天。宛轉虛玄事不彰，明暗只在影中圓。',  '另尋他路', '甚得利', '尋尋覓覓', '門庭永昌', '難求', '防破財', '危  ', '漸入佳境 ', 'http://jizo-words.blogspot.tw/2015/03/blog-post_44.html'],
[051, '伍拾壹', '偏中正，休觀朗月秦時鏡。隱隱猶如日下燈，明暗混融誰辨影。',  '另尋他路', '大蝕', '尋尋覓覓', '有危', '可得', '防破財', '危', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_89.html'],
[052, '伍拾貳', '正中來，脈路玄玄絕迂回。靜照無私隨處現，如行鳥道人廛開。',  '不遂', '平平', '可合', '門庭永昌', '龍蛇難辨', '防破財', '危後終吉', '破', 'http://jizo-words.blogspot.tw/2015/03/blog-post_87.html'],
[053, '伍拾參', '偏中至，法法無依即智智。橫身物外兩不傷，妙用玄玄善週備。',  '另尋他路', '大蝕', '和樂融融', ' 門庭永昌', '可得', '宜行 ', '即可痊癒 ', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_66.html'],
[054, '伍拾肆', '兼中到，葉路當風無中道。莫守寒岩異草青，坐卻白雲宗不妙。',  '或漸得利', '大蝕', '春風至', '大吉平安', '訊在即', '甚防小人', '危  ', '得如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_9.html'],
[055, '伍拾伍', '正中偏，星河橫轉月明前。彩氣夜交天未曉，隱隱俱彰暗裡圓。',  '或漸得利', '甚得利', '可合', '有危', '難求', '防破財', '或可癒', '終有成 ', 'http://jizo-words.blogspot.tw/2015/03/blog-post_60.html'],
[056, '伍拾陸', '偏中正，夜半天明羞自影。朦朦霧色辨何分，混然不落秦時鏡。',  '另尋他路', '平平', '和樂融融', '不遂', '貴人將至', '宜行', '危 ', '破', 'http://jizo-words.blogspot.tw/2015/03/blog-post_96.html'],
[057, '伍拾柒', '正中來，火裡金雞坐鳳台。玄路倚空通脈上，披雲鳥道出塵埃。',  '或漸得利', '甚得利', '春風至', '門庭永昌', '難求', '前途未明', '或可癒', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_73.html'],
[058, '伍拾捌', '兼中至，雪刃籠身不回避。天然猛將兩不傷，暗裡全施善週備。',  '或漸得利', '甚得利', '春風至', '有危', '可得', '平安大吉', '危後終吉', '漸入佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_50.html'],
[059, '伍拾玖', '兼中到，解走之人不觸道。一般拈掇與君殊，不落是非方始妙。',  '不遂', '或有小穫', '春風至', '有危', '龍蛇難辨', '平安大吉', '三月內', '破', 'http://jizo-words.blogspot.tw/2015/03/blog-post_78.html'],
[060, '陸拾', '不因言句不因人，不因物色不因聲。  夜半吹燈方就枕，忽然這裡已天明。',  '如意', '有大財', '可合', '不遂', '貴人將至', '平安大吉', '即可痊癒', '破', 'http://jizo-words.blogspot.tw/2015/03/blog-post_29.html'],
[061, '陸拾壹', '雨洗淡紅桃萼嫩，風搖淺碧柳絲輕。  白雲影裡怪石露，綠水光中古木清。噫，你是何人?',  '如意', '大蝕', '可合', '大吉平安', '訊在即', '甚防小人', '危 ', '大成大就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_24.html'],
[062, '陸拾貳', '相煩專使入煙霞，灰冷無湯不點茶。  寄語甬東賢太守，難教枯木再生花。',  '行正道 ', '甚得利', '伊人天邊', '大吉平安', '勿強求', '防破財', '危後終吉', '有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_42.html'],
[063, '陸拾參', '望空雨寶休誇富，無地容錐未是貧。 踏著秤鎚硬似鐵，八兩元來是半斤。',  '所求順遂', '平平', '和樂融洽', '有恙', '勿強求 ', '防破財', '甚危 ', '有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_12.html'],
[064, '陸拾肆', '一位才彰五位分，君臣葉處紫雲屯。  夜明簾卷無私照，金殿重重顯至尊。',  '或漸得利', '平平', '尤可成', '大吉平安', '貴人難求', '防破財', '即可痊', '有成 ', 'http://jizo-words.blogspot.tw/2015/03/blog-post_81.html'],
[065, '陸拾伍', '五彩畫牛頭，黃金為點額。  春晴二月初，農人皆取則。  寒食賀新正，鐵錢三五百。',  '或漸得利', '小蝕', '伊人天邊', '大吉平安', '貴人難求', '風光明媚 ', '七日外', '大成就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_49.html'],
[066, '陸拾陸', '一兔橫身當古道，蒼鷹才見便生擒。  後來獵犬無靈性，空向枯樁舊處尋。',  '或漸得利', '或有小穫', '伊人天邊', '大吉平安', '勿強求', '宜行', '危後終吉', '大成就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_32.html'],
[067, '陸拾柒', '三分光陰二早過，靈台一點不揩磨。  貪生逐日區區去，喚不回頭怎奈何?',  '如意', '甚得利', '伊人天邊', '有恙', '得鳳鱗', '路遙 ', '甚危', '難如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_92.html'],
[068, '陸拾捌', '高不在絕頂，富不在福嚴。  樂不在天堂，苦不在地獄。  相識滿天下，知心能幾人?',  '所求順遂', '或有小穫', '和樂融融', '和樂', '勿強求', '防破財', '即可痊癒', '漸佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_57.html'],
[069, '陸拾玖', '雲居不會禪，洗腳上床眠。  冬瓜直儱侗，瓠子曲彎彎。',  '行正道', '甚得利', '春風至', '和樂', '得鳳鱗', '防破財', '甚危 ', '漸佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_36.html'],
[070, '柒拾', '一二三四五六七，萬仞峰頭獨足立。  驪龍頷下奪明珠，一言勘破維摩詰。',  '行正道', '平平', '漸行漸遠', '太平 ', '得鳳鱗', '宜行 ', '即可痊癒', '難如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_10.html'],
[071, '柒拾壹', '雁過長空，影沉寒水。  雁無遺蹤之意，水無留影之心。',  '另尋他路', '有大財', '尤可成', '門庭稀 ', '貴人難求', '甚防小人', '甚危 ', '得如願 ', 'http://jizo-words.blogspot.tw/2015/03/blog-post_19.html'],
[072, '柒拾貳', '來時無物去時空，南北東西事一同。 六處住持無所補.....珍重!!!珍重!!!',  '或漸得利', '有大財', '尤可成', '門庭稀', '得鳳鱗', '甚防小人', '即可痊癒 ', '大成就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_25.html'],
[073, '柒拾參', '男大須婚，女長須嫁。  討甚閒工夫，更說無生話。',  '行正道 ', '平平', '春風至', '有恙', '訊在即 ', '甚防小人', '終可癒', '漸佳境  ', 'http://jizo-words.blogspot.tw/2015/03/blog-post_23.html'],
[074, '柒拾肆', '默作公堂虛隱幾，心源不動湛如水。  一聲霹靂頂門開，喚起從前自家底。  舉頭蒼蒼喜復喜，剎剎塵塵無不是。  中下之人不得聞，妙用神通而已矣。',  '另尋他路', '甚得利', '春風至', '大吉平安', '勿強求', '甚防小人', '危後終吉', '難如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_41.html'],
[075, '柒拾伍', '腰佩黃金已退藏，個中消息也尋常。  世人欲識高齋老，只是柯村趙四郎。',  '另尋他路', '平平', '尤可成', '有恙', '得鳳鱗', '風光明媚', '危後終吉', '大成就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_17.html'],
[076, '柒拾陸', '只是舊是行履處，等閒舉著便誵訛。  夜來一陣狂風起，吹落桃花知幾多。',  '行正道', '甚得利', '漸行漸遠', '有恙', '速歸', '宜行', '七日外', '大成就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_15.html'],
[077, '柒拾柒', '大丈夫漢， 須是向黑暗獄中敲枷打鎖，餓鬼隊裡放火奪漿， 推倒慈氏樓，拆卻空王殿， 靈苗瑞草和根拔，滿地從教荊棘生。',  '或漸得利', '小蝕', '尤可成', '太平', '貴人難求', '防破財', '甚危 ', '漸佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_13.html'],
[078, '柒拾捌', '不落不昧，僧俗本無忌諱。  丈夫氣宇如王，爭受囊藏被蓋。一條楖栗任縱橫，野狐跳入金毛隊。',  '行正道', '或有小穫', '漸行漸遠', '有恙', '訊在即', '防破財', '即可痊癒', '大成就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_56.html'],
[079, '柒拾玖', '不是風兮不是幡，白雲依舊覆青山。  年來老大渾無力，偷得忙中些子閒。',  '如意', '甚得利', '春風至', '有恙', '貴人難求', '甚防小人', '即可痊癒 ', '大成就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_51.html'],
[080, '捌拾', '說時七顛八倒，默時落三落四。  為報五湖禪客，心王自在休參。',  '如意', '甚得利', '漸行漸遠', '有恙', '訊在即', '路遙', '甚危', '難如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_99.html'],
[081, '捌拾壹', '石工來斫鼻端塵，無手人來斧始親。  白牯狸奴心即佛，龍睛虎眼主中賓。  自攜瓶去沽村酒，卻著衫來作主人。  萬裡相看常對面，死心寮裡有清新。',  '行正道', '或有小穫', '伊人天邊', '門庭稀', '貴人難求', '甚防小人', '甚危', '漸佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_64.html'],
[082, '捌拾貳', '海風吹落楞伽山，四海禪徒著眼看。  一把柳絲收不得，和煙搭在玉欄幹。',  '所求順遂', '或有小穫', '伊人天邊', '有恙', '得鳳鱗', '路遙', '甚危 ', '難如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_76.html'],
[083, '捌拾參', '水中得火世還稀，看著令人特地疑。  自古不存師弟子，如今卻許老胡知。',  '另尋他路', '有大財', '漸行漸遠', '門庭稀', '得鳳鱗', '防破財', '即可痊癒', '難如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_75.html'],
[084, '捌拾肆', '橫看成嶺側成峰，遠近高低各不同。  不識廬山真面目，只緣身在此山中。',  '所求順遂', '小蝕', '尤可成', '有恙', '勿強求', '防破財', '甚危', '大成就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_58.html'],
[085, '捌拾伍', '靈雲一見不再見，紅白枝枝不著華。  叵耐釣魚船上客，卻來平地撈魚蝦。',  '如意', '小蝕', '春風至', '和樂', '貴人難求', '甚防小人', '七日外', '漸佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_40.html'],
[086, '捌拾陸', '高節長身老不枯，平生風骨自清癯。  愛君修竹為尊者，卻笑寒松作大夫。',  '行正道', '或有小穫', '伊人天邊', '大吉平安', '得鳳鱗', '風光明媚', '危後終吉', '有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_31.html'],
[087, '捌拾柒', '萬機休罷付癡憨，蹤蹟時容野鹿參。  不脫麻衣拳作枕，幾生夢在綠蘿庵。',  '所求順遂', '小蝕', '和樂融融', '門庭稀', '勿強求', '風光明媚', '七日外 ', '大成就', 'http://jizo-words.blogspot.tw/2015/03/blog-post_45.html'],
[088, '捌拾捌', '枯藤破衲公何事，白酒青鹽我是誰?  慚愧東軒殘月上，一杯甘露滑如飴。',  '如意', ' 有大財', '漸行漸遠', '有恙', '速歸', '宜行', '即可痊癒', '難如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_95.html'],
[089, '捌拾玖', '盡道水能洗垢，焉知水亦是塵。 直饒水垢頓除，到此亦須洗卻。',  '或漸得利', '或有小穫', '和樂融融', '門庭稀', '得鳳鱗', '風光明媚', '危後終吉', '難如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_97.html'],
[090, '玖拾', '寶杖敲空觸處春，個中消息特彌綸。  昨宵風動寒岩冷，驚起泥牛耕白雲。',  '行正道', '平平', '漸行漸遠', '大吉平安', '得鳳鱗 ', '風光明媚', '危後終吉', '有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_80.html'],
[091, '玖拾壹', '鼓寂鐘沉拓缽回，岩頭一拶語如雷。  果然只得三年活，莫是遭他授記來。',  '所求順遂', '或有小穫', '春風至', '門庭稀', '得鳳鱗 ', '風光明媚 ', '即可痊癒 ', '有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_69.html'],
[092, '玖拾貳', '幻質朝章八十一，漚生漚滅無人識。  撞破虛空歸去來，鐵牛入海無消息。',  '行正道', '有大財', '尤可成', '和樂 ', '勿強求', '宜行  ', '終可癒', '難如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_82.html'],
[093, '玖拾參', '眾賣花兮獨賣松，青青顏色不如紅。  算來終不與時合，歸去來兮翠靄中。',  '另尋他路', '甚得利', '伊人天邊', '太平', '勿強求', '風光明媚', '甚危 ', '得如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_55.html'],
[094, '玖拾肆', '質庫何曾解典牛?只緣價重實難酬。  想君本領無多子，畢竟難禁這一頭。',  '所求順遂', '平平', '春風至', '太平', '勿強求', '甚防小人 ', '危後終吉', '漸佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_91.html'],
[095, '玖拾伍', '萬年倉裡曾飢饉，大海中住盡長渴。  當初尋時尋不見，如今避時避不得。',  '所求順遂', '有大財', '伊人天邊', '和樂', '勿強求', '路遙', '七日外', '有成 ', 'http://jizo-words.blogspot.tw/2015/03/blog-post_68.html'],
[096, '玖拾陸', '色見聲求也不妨，百華影裡繡鴛鴦。  自從識得金針後，一任風吹滿袖香。',  '或漸得利', '小蝕', '和樂融融', '有恙', '勿強求 ', '路遙', '七日外', '難如願', 'http://jizo-words.blogspot.tw/2015/03/blog-post_93.html'],
[097, '玖拾柒', '忌口自然諸病減，多情未免有時勞。  貧居動便成違順，落得清閒一味高。',  '另尋他路', '甚得利', '伊人天邊', '太平', '勿強求', '防破財', '七日外', '有成', 'http://jizo-words.blogspot.tw/2015/03/blog-post_53.html'],
[098, '玖拾捌', '山前一片閒田地，叉手叮嚀問祖翁。  幾度賣來還自買，為憐鬆竹引清風。',  '如意', '甚得利', '漸行漸遠', '和樂', '貴人難求', '宜行', '終可癒', '漸佳境', 'http://jizo-words.blogspot.tw/2015/03/blog-post_34.html'],
[099, '玖拾玖', '覺地相逢一何早，鶻臭布衫今脫了。  要識雲居一句玄，珍重後園驢吃草。',  '行正道', '小蝕', '春風至', '有恙', '勿強求', '宜行', '危後終吉', '大成就', 'http://jizo-words.blogspot.tw/2015/04/blog-post.html'],
[100, '壹佰', '遍界不曾藏，通身無影像。  相逢莫訝太愚癡，曠劫至今無伎倆。',  '如意', '平平', '尤可成 ', '門庭稀', '貴人難求', '風光明媚', '七日外', '難如願', 'http://jizo-words.blogspot.tw/2015/04/blog-post_2.html'],
[101, '壹佰零壹', '庭前嫩竹先生筍，澗下古松長老枝。  六街鐘鼓韻冬冬，即處鋪金世界中。',  '所求順遂', '小蝕', '尤可成', ' 太平', '得鳳鱗', '風光明媚', '終可癒', '有成', 'http://jizo-words.blogspot.tw/2015/04/101.html'],
[102, '壹佰零貳', '大根大器大力量，荷擔大事不尋常。  一毛頭上通消息，遍界明明不覆藏。',  '另尋他路', '平平', '伊人天邊 ', '有恙', '速歸', '路遙', '七日外', '得如願 ', 'http://jizo-words.blogspot.tw/2015/04/102.html'],
[103, '壹佰零參', '百鳥不來春又喧，憑欄溢目水連天。  無心還似今宵月，照見三千與大千。',  '行正道', '或有小穫', '尤可成', '太平', '得鳳鱗', '風光明媚', '即可痊癒', '有成', 'http://jizo-words.blogspot.tw/2015/04/103.html'],
[104, '壹佰零肆', '七年往返遊昭覺，三載翱翔上碧岩。  今日煩充第一座，百華叢裡現優曇。',  '另尋他路', '甚得利', '春風至', ' 門庭稀', '貴人難求', '防破財', '危後終吉', '大成就 ', 'http://jizo-words.blogspot.tw/2015/04/104.html'],
[105, '壹佰零伍', '二八佳人刺繡遲，紫荊花下囀黃鸝。  可憐無限傷春意，盡在停針不語時。',  '所求順遂', '有大財', '伊人天邊', '有恙', '訊在即 ', '宜行 ', '七日外', '難如願', 'http://jizo-words.blogspot.tw/2015/04/105.html'],
[106, '壹佰零陸', '惠崇煙雨蘆雁，坐我瀟湘洞庭。  欲喚扁舟歸去，傍人謂是丹青。',  '另尋他路', '有大財', '伊人天邊', '太平', '得鳳鱗', '宜行', '甚危', '難如願', 'http://jizo-words.blogspot.tw/2015/04/106.html'],
[107, '壹佰零柒', '出林依舊入蓬蒿，天網恢恢不可逃。  誰信業緣無避處?歸來不怕語聲高。',  '另尋他路', '有大財', '尤可成', '太平', '勿強求', '風光明媚', '即可痊癒', '大成就', 'http://jizo-words.blogspot.tw/2015/04/107.html'],
[108, '壹佰零捌', '聞聲見色只如常，熟察精粗理自障。  脫似虛空藏碧落，曾無少剩一毫芒。',  '或漸得利', '平平', '尤可成', '有恙', '速歸', '風光明媚', '即可痊癒', '難如願', 'http://jizo-words.blogspot.tw/2015/04/108.html'],
[109, '壹佰零玖', '覺公說道無此語，正是惡言當面罵。  禪人若具通方眼，好向此中辨真假。',  '如意', '甚得利', '春風至', '有恙', '貴人難求', '宜行', '終可癒 ', '得如願 ', 'http://jizo-words.blogspot.tw/2015/04/109.html'],
[110, '壹佰壹拾', '終日看天不舉頭，桃花爛熳始抬眸。  饒君更有遮天網，透得牢關即便休。',  '行正道', '小蝕', '漸行漸遠', '有恙', '速歸', '防破財', '危後終吉', '有成', 'http://jizo-words.blogspot.tw/2015/04/110.html'],
[111, '壹佰壹拾壹', '是非毀譽付之空，豎闊橫長渾恰好。  君不見寒山老，終日嬉嬉，長年把掃。',  '或漸得利', '平平', '春風至', '大吉平安', '勿強求', '路遙', '危後終吉', '大成就', 'http://jizo-words.blogspot.tw/2015/04/111.html'],
[112, '壹佰壹拾貳', '實際從來不受塵，個中無舊亦無新。  青山況是吾家物，不用尋家別問津。',  '或漸得利', '平平', '和樂融融', '太平', '訊在即', '風光明媚', '甚危', '大成就', 'http://jizo-words.blogspot.tw/2015/04/112.html'],
[113, '壹佰壹拾參', '愛閒不打鼓山鼓，投老來看雁蕩山。  傑閣危樓渾不見，溪邊茆屋兩三間。',  '行正道', '小蝕', '伊人天邊', '有恙', '速歸', '宜行', '甚危 ', '漸佳境', 'http://jizo-words.blogspot.tw/2015/04/113.html'],
[114, '壹佰壹拾肆', '落華有意隨流水，流水無情戀落華。  長恨春歸無覓處，不知轉入此中來。',  '另尋他路', '有大財', '春風至', '太平', '速歸', '路遙', '甚危', '漸佳境', 'http://jizo-words.blogspot.tw/2015/04/114.html'],
[115, '壹佰壹拾伍', '華非豔而結空界，風不搖而片葉零。  野蔬淡飯延時日，任運隨緣道自靈。',  '所求順遂', '或有小穫', '春風至', '太平', '訊在即', '宜行 ', '危後終吉', '有成', 'http://jizo-words.blogspot.tw/2015/04/115.html'],
[116, '壹佰壹拾陸', '大愚灘頭立處，孤月影射深灣。 會不得，見還難，一曲漁歌過遠灘。',  '另尋他路', '小蝕', '尤可成', '有恙', '得鳳鱗', '風光明媚', '危後終吉', '得如願', 'http://jizo-words.blogspot.tw/2015/04/116.html'],
[117, '壹佰壹拾柒', '有道只因頻退步，謙和元自慣回光。  不知已在青雲上，猶更將身入眾藏。',  '所求順遂', '平平', '尤可成', '門庭稀', '貴人難求', '防破財', '終可癒 ', '大成就', 'http://jizo-words.blogspot.tw/2015/04/117.html'],
[118, '壹佰壹拾捌', '紅塵世路有多端，米面食儲無顆粒。  崖為伴，泉為匹，颯颯清風來入室。',  '另尋他路', '小蝕', '春風至', '大吉平安 ', '速歸', '路遙 ', '即可痊癒', '得如願', 'http://jizo-words.blogspot.tw/2015/04/118.html'],
[119, '壹佰壹拾玖', '從來姿韻愛風流，幾笑時人向外求。  萬別千差無覓處，得來元在鼻尖頭。',  '或漸得利', '小蝕', '春風至  ', '太平', '勿強求', '風光明媚', '七日外', '大成就 ', 'http://jizo-words.blogspot.tw/2015/04/119.html'],
[120, '壹佰貳拾', '一拶當機怒雷吼，驚起須彌藏北鬥。  洪波浩渺浪滔天，拈得鼻孔失卻口。',  '或漸得利', '小蝕', '伊人天邊', '大吉平安', '得鳳鱗', '甚防小人', '終可癒', '漸佳境 ', 'http://jizo-words.blogspot.tw/2015/04/120.html'],
[121, '壹佰貳拾壹', '萬仞崖頭解放身，起來依舊卻惺惺。  飢餐渴飲渾無事，那論昔人非昔人。',  '所求順遂', '甚得利', '伊人天邊', '門庭稀', '速歸', '風光明媚', '即可痊癒', '得如願', 'http://jizo-words.blogspot.tw/2015/04/121.html'],
[122, '壹佰貳拾貳', '一葉扁舟泛渺茫，呈橈舞棹別宮商。  雲山海月都拋卻，贏得莊週蝶夢長。',  '行正道', '甚得利', '和樂融融', '太平 ', '貴人難求', '風光明媚', '七日外', '難如願', 'http://jizo-words.blogspot.tw/2015/04/122.html'],
[123, '壹佰貳拾參', '通身一具金鎖骨，堪與人天為軌則。  要識臨濟小廝兒，便是當年白拈賊。',  '或漸得利', '小蝕', '漸行漸遠', '有恙', '貴人難求', '甚防小人', '終可癒', '有成', 'http://jizo-words.blogspot.tw/2015/04/123.html'],
[124, '壹佰貳拾肆', '藏身無蹟更無藏，脫體無依便廝當。  古鏡不勞還正照，淡煙和露濕秋光。',  '或漸得利', '或有小穫', '春風至', '有恙', '勿強求', '甚防小人', '即可痊癒', '難如願', 'http://jizo-words.blogspot.tw/2015/04/124.html'],
[125, '壹佰貳拾伍', '身是菩提樹，心如明鏡臺。  時時勤拂拭，勿使惹塵埃。', '或漸得利', '平平', '伊人天邊', '門庭稀', '速歸', '防破財', '危後終吉', '有成', '']
];