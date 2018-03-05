<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="content" Title="视频之家" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
		<div class="row-fluid">
			<div class="camera_wrap pattern_4 camera_emboss" id="camera_wrap_4">
				<div data-src="images/slide1.jpg">
					<div class="camera_caption fadeFromTop">
						<h1>栀子花开</h1>
						<span>许诺和言蹊是大学校园里一对令人艳羡的情侣。许诺作为校内闻名的栀子花乐队的主唱和队友为成为职业出道不懈努力着，怀揣舞蹈梦想的言蹊和三位好友有机会获得出国深造的机会，就在梦想似乎触手可及的时候，现实中却遭遇到许多障碍。当言蹊面临崩溃边缘，许诺成为支持她的臂膀；为了让言蹊重新燃起希望， 许诺与队友决定为她准备一个意想不到的惊喜。而这个“惊喜”竟然让冲动的年轻人付出了不小的代价。。。 </span>
					</div>
				</div>
				<div data-src="images/slide2.jpg">
					<div class="camera_caption fadeFromRight">
						<h1>捉妖记</h1>
						<span>
						 小伙子天荫（井柏然 饰）阴差阳错地怀上了即将降世的小妖王，他被降妖天师小岚（白百何 饰）一路保护着躲过各种妖怪。虽然二人渐渐对小妖产生了感情，小岚却明白她只为把这只惹人眼红的小妖卖个好价钱，在人妖混杂的世界里，他们的命运无疑将牵动人心。 </span>
					</div>
				</div>
                <div data-src="images/slide3.jpg">
					<div class="camera_caption fadeFromRight">
						<h1>财神客栈</h1>
						<span>
						在小小的白马城，居住着两个情投意合的好哥们儿龚少爷和巴少爷，二人携手报名当捕快，无奈虽然空有一身本领和远大志向，却只能委身厨房洗衣间，做一名任人驱使任任打骂的实习捕快。这一日，城中大户张员外家进入强梁，全家老小悉被杀害，无一幸免，家中价值连城的白玉观音也不知去向。 </span>
					</div>
				</div>
				<div data-src="images/slide4.jpg">
					<div class="camera_caption fadeFromRight">
						<h1>左耳</h1>
						<span>十七岁的女孩想变坏。左耳听力不好，如果站在左边说话就听不见，这样一个不起眼而内向的“我”某天突然就暗恋上了男生许弋，而同时许弋却被绿色眼影的长裙放浪女孩黎吧啦追求到手。心碎的“我”在偶然的机会和吧啦成为朋友，也认识了吧啦真正心爱的男生——张漾。随后吧啦在一次意外中去世了，小耳朵与许弋相恋，但最终分手，张漾和蒋皎来到北京，过着极其颓废的生活，当蒋皎改名为蒋雅希走向舞台时，张漾终于与她分手。
</span>
					</div>
				</div>
			</div>			
		</div>
	  
		<!--111-->
       <div class="row-fluid">

			<div class="span12">

				<div class="titleborder">

					<div>影院热播&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red; font-size:10px; font-weight:100">今日更新19></span>
					</div>

				</div>

			</div>

		</div>
    
		<div class="row-fluid recent-posts">
		<%=hotList%>

		<!--	<div class="span3">

				<article>

				<a href="play.aspx"><img src="images/movies/xltfn.png" alt="" class="imgOpa"></a>

				<div class="date">

					<span class="day">15</span>

					<span class="month">Jan</span>

				</div>

				<h4><a href="bloghome.html">夏洛特烦恼</a></h4>

				<p>

					昔日校花秋雅的婚礼正在隆重举行，学生时代暗恋秋雅的夏洛看着周围事业成功的老同学，心中泛起酸味，借着七分醉意<a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>

				</article>

			</div>

			<div class="span3">

				<img src="images/movies/wszr.png" alt="" class="imgOpa">

				<article>

				<div class="date">

					<span class="day">23</span>

					<span class="month">May</span>

				</div>

				<h4><a href="bloghome.html">我是证人</a></h4>

				<p>

					 见习女警因自己的失误，亲眼目睹了弟弟的死亡，自己也双目失明。也许是失明刺激了其它感官的活跃 <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>

				</article> 

			</div>

			<div class="span3">

				<img src="images/movies/dszaq.png" alt="" class="imgOpa">

				<article>

				<div class="date">

					<span class="day">18</span>

					<span class="month">Aug</span>

				</div>

				<h4><a href="bloghome.html">第三种爱情</a></h4>

				<p>

					 失婚女律师邹雨在回程的飞机上失声痛哭，引来邻座林启正的注意。回家后发现妹妹邹月因单恋致林集团二公子 <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>

				</article>

			</div>

			<div class="span3">

				<article>

				<img src="images/movies/xhrdym.png" alt="" class="imgOpa">

				<div class="date">

					<span class="day">31</span>

					<span class="month">Dec</span>

				</div>

				<h4><a href="bloghome.html">小黄人大眼萌</a></h4>

				<p>

					 从地球诞生之初，一种奇怪的生物便出现在这颗蓝色的星球上。他们不断进化、蜕变，终于成为我们所熟悉 <a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>

				</p>

				</article>

			</div> -->

		</div>
        <!--111-->
        <!--222-->
        <div class="row-fluid">
			<div class="span12">
				<div class="titleborder">
					<div>
                    精彩连轴看&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red; font-size:10px; font-weight:100">今日更新19></span>
					</div>
				</div>
			</div>
	  </div>
		<div class="row-fluid recent-posts">
		<%= recommmedList  %>
		<!--	<div class="span3">
			  <article>
				<img src="images/movies/yznaw.png" alt="" class="imgOpa">
				<div class="date">
					<span class="day">6</span>
					<span class="month">Feb</span>
				</div>
				<h4><a href="#">有种你爱我</a></h4>
				<p>建筑师左小欣渴望拥有一个只有孩子没有男人的“幸福生活”，机缘巧合结识了人气主持人査义。查义对左小欣颇有好感，却未料到“左小欣”只想要个孩子，两人生下非婚子左松松。为科学抚养，在孩子周岁时，左小欣通知了査义，此刻他才明白自己成了。。。 <a href="#" class="read-more">read more <i class="icon-angle-right"></i></a>
				</p>
			  </article>
			</div>
			<div class="span3"> <a href="video/aa.wmv"><img src="images/movies/xsd3.png" alt="" class="imgOpa"></a>
				<article>
				<div class="date">
					<span class="day">17</span>
					<span class="month">Jul</span>
				</div>
				<h4><a href="#">小时代3：剌金时代</a></h4>
				<p>《小时代3.0刺金时代》继续讲述林萧、顾里、南湘、唐宛如四位主角，以及顾准、简溪、顾源、宫洺、周崇光、Neil、卫海……这一群人，他们挥手作别青葱校园，日益融入生活的滚滚洪流之中的迷失、怅惘、怀念却又不能不勇往直前的故事。。。 <a href="#" class="read-more">read more <i class="icon-angle-right"></i></a>
				</p>
			  </article>
		  </div>
			<div class="span3">
				<img src="images/movies/fkwxr.png" alt="" class="imgOpa">
				<article>
				<div class="date">
					<span class="day">17</span>
					<span class="month">Apr</span>
				</div>
				<h4><a href="#">疯狂外星人</a></h4>
				<p>可爱的外星人小欧与他的同伴波波星人一直在寻找一个适宜他们居住的地方，在一次次的尝试并且失败之后，他们登陆了地球并且将地球上的人类进行了转移。因为一个意外，小欧成为了波波星人的全体通缉目标。在逃亡中他遇到了热爱冒险的地球女孩。。。 <a href="#" class="read-more">read more <i class="icon-angle-right"></i></a>
				</p>
				</article>
			</div>
			<div class="span3">
				<article>
				<img src="images/movies/amfy2.png" alt="" class="imgOpa">
				<div class="date">
					<span class="day">19</span>
					<span class="month">Feb</span>
				</div>
				<h4><a href="#">澳门风云2</a></h4>
				<p>
					 闻名赌坛的“魔术手”石一坚在参加好友龙叔的海上生日派对时，突遭来路不明的女杀手伏击，后得知她们受旧敌D.O.A组织派来灭口，而她们的目标不仅是杀死石一坚，更要捉拿携组织一百五十亿美元资金潜逃的会计小马。
为保护小马及粉碎D.O.A的阴谋。。。
			 <a href="#" class="read-more">read more <i class="icon-angle-right"></i></a>
				</p>
				</article>
			</div> -->
		</div>
        <!--222-->
        <!--333-->
	  <div class="row-fluid">
			<div class="span12">
				<div class="titleborder">
					<div>即将上映&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red; font-size:10px; font-weight:100">今日更新19></span>
					</div>
				</div>
			</div>
		</div>
		<div class="row-fluid recent-posts">
		<%=newList %>
		<!--	<div class="span3">
				<article>
				<img src="images/movies/wwnxd.png" alt="" class="imgOpa">
				<div class="date">
					<span class="day">15</span>
					<span class="month">Jan</span>
				</div>
				<h4><a href="#">万万没想到</a></h4>
				<p>
					屌丝小妖王大锤，他生来便与常人不同，两耳尖尖，又有些小法力，总是自诩本地妖王。但让他万万没想到的是，在遇到唐僧师徒四人组后，他的命运发生了逆转，而对于唐僧师徒四人组来说，遇见王大锤也是无比郁闷的第八十二难。双方因此上演了一出相爱相杀，令人捧腹的奇幻冒险。<a href="#" class="read-more">read more <i class="icon-angle-right"></i></a>
				</p>
				</article>
			</div>
			<div class="span3">
				<img src="images/movies/xsdar.png" alt="" class="imgOpa">
				<article>
				<div class="date">
					<span class="day">23</span>
					<span class="month">May</span>
				</div>
				<h4><a href="#">消失的爱人</a></h4>
				<p>改编自吉莉安·弗琳的同名小说，由大卫·芬奇执导，本·阿弗莱克 、罗莎曼德·派克、尼尔·帕特里克·哈里斯等主演的悬疑惊悚电影。该片讲述了平凡又恩爱的一对夫妻，突然有一天妻子却消失不见，丈夫通过各种方式疯狂寻找，然而在妻子留下的一本日记中却发现，种种线索都表明是丈夫将妻子杀害。<a href="#" class="read-more">read more <i class="icon-angle-right"></i></a>
				</p>
				</article>
			</div>
			<div class="span3">
				<img src="images/movies/tlda.png" alt="" class="imgOpa">
				<article>
				<div class="date">
					<span class="day">18</span>
					<span class="month">Aug</span>
				</div>
				<h4><a href="#">探灵档案</a></h4>
				<p>曾经是“盲点侦探”的房产中介陈博涵，被突然出现的刘欣媛打破了原本平静的生活。原来这个地方流传着一个传说，午夜穿过港湾广场的人可以看到另一个世界。而因为好奇心作祟，刘欣媛和几个闺蜜夜探港湾广场后，居然在家里看到自己死去多年的父亲的身影，于是找到陈博涵寻求帮助
<a href="#" class="read-more">read more <i class="icon-angle-right"></i></a>
				</p>
				</article>
			</div>
			<div class="span3">
				<article>
				<img src="images/movies/mkxd.png" alt="" class="imgOpa">
				<div class="date">
					<span class="day">31</span>
					<span class="month">Dec</span>
				</div>
				<h4><a href="#">摩卡行动</a></h4>
				<p>年大治由于网络运作天赋异禀，成为平民特工。孤儿院青梅竹马孟小玲嫌贫爱富，跟随富二代杜豪金前往意大利疯狂购物，杜豪金一掷千金想要收购世博老街，却遭当地人民激烈反对。黑帮蓄谋利用小玲套出杜氏财产密码雇佣黑客设局敛财，大治为追回小玲、侦破大案同赴异国。 富豪李正华受国际刑警之托，通过拯救当地球队成<a href="bloghome.html" class="read-more">read more <i class="icon-angle-right"></i></a>
				</p>
				</article>
			</div> -->
		</div>
	</div>
</asp:Content>

