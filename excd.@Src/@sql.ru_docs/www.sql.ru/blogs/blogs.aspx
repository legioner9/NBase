<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="ru" xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru">
<head>
  <title>Список блогов на Sql.ru</title>
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
  <link rel="stylesheet" type="text/css" href="../css/screen.css@v=1" media="screen" />

    <!--[if lte IE 6]>
            <link rel="stylesheet" type="text/css" href="../css/ie.css" media="screen" />
            <![endif]-->
  <meta name="Description" content="Записи из всех блогов на Sql.ru" />
  <script type="text/javascript">jQuery = false;</script>
  
<style type="text/css">

    h2 {
        float:none !important;
    }

    li {
        list-style-type: none;
        margin: 0 0 0px 30px;
        padding: 0;
    }

</style>
<script src="../../https@ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
     if (typeof jQuery == 'undefined')
     {
      document.write(unescape("%3Cscript src='../js/jquery-1.4.4.min.js' type='text/javascript'%3E%3C/script%3E"));
     }
</script>
<script type="text/javascript" src="../js/jquery.tagcloud.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
      $.fn.tagcloud.defaults = {
        size: {start: 14, end: 20, unit: "px"},
        color: {start: '#8eb4e7', end: '#396092'}
      }
    })

     $(document).ready(function(){
       $("#tagcloud a").tagcloud();
     })
</script>

  <script type="text/javascript" src="../js/utils.js"></script>
  <meta property="og:image" content="https://www.sql.ru/images/logofb.jpg"/>
	                                
 <!-- Google Analytics -->
 <script>
 window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
 ga('create', 'UA-265508-1', 'sql.ru');
 ga('send', 'pageview');
 </script>
 <script async src='../../https@www.google-analytics.com/analytics.js'></script>
 <!-- End Google Analytics -->
</head>

<body>
  <div id="page-container">
    <div id="header">
      <div class="header-wrap">
        <div id="title">
          <a href="../default.htm" title="На главную страницу">SQL.ru</a>
        </div>
		<!--begin case_isguest-->
        <div id="login">
          <form action="/forum/login.aspx" method="post">
            <span class="close" onclick="hideLoginWindow(); return false;">x</span>

            <div class="username">
              <label for="login-input">Логин:</label> <input type="text" name="login" id=
              "login-input" />
            </div>

            <div class="password">
              <label for="pass-input">Пароль:</label> <input type="password" name="password" id=
              "pass-input" />
            </div>
			
			<div style="text-align:left;">
				<input type="checkbox" name="cbremember" id="cbremember" checked="checked" />
				<label style="width:auto" for="cbremember">Запомнить меня</label>
			</div>

            <div class="submit">
              <input type="submit" value="Войти" />
            </div>

            <div class="links">
              <a href="../forum/register.aspx">Регистрация</a> <a href="../forum/remindpass.aspx">Забыли пароль?</a>
            </div>
          </form>
        </div>
		<span id="login-link" onclick="showLoginWindow(); return false">Вход на сайт</span>
		<!--end case_isguest-->
		
        <form action="/forum/afsearch.aspx" method="get" id="top-search" name="top-search">
          <div>
            <input type="text" name="s" id="search-query" value=" поиск" class="inactive"
            onfocus="tffocus(this)" onblur="tfblur(this)" /> <input type="submit" value="Найти" />
          </div>
        </form>

        <ul id="top-menu">
          <li class=""><a href="../default.htm">Главная</a></li>

          <li class=""><a href="../articles">Статьи</a></li>

          <li class=""><a href="../forum">Форум</a></li>

          <li class="selected"><a href="../blogs">Блоги</a></li>

          <li class=""><a href="../books">Книги</a></li>

          <li class=""><a href="../subscribe">Рассылка</a></li>

          <li class=""><a href="../forum/job">Работа</a></li>

          <li class=""><a href="../search">Поиск</a></li>

          <li class=""><a href="../faq">FAQ</a></li>
        </ul><div id="top-advert"><!--banner.img--></div>
      </div>
    </div>

			<div id="middle" class="column-2">
				<div id="middle-wrap">
					<div id="side-1" class="side-blocks">
						<div class="wrap">

							<!-- блок "Основные темы" -->
							<div class="side-block art-themes">
                                <h4>Информация</h4>
                                <ul>
                                    <li><a href="judge/339/create-new-blog-on-sqlru">Завести свой блог</a></li>
                                </ul>
                                <h4>Последние записи</h4>
                                <ul>
                                    
                                    <li><a href="gladchenko/2275">Tips for DBA: The SQL Server service and the SQL Server Agent Service fail to start on a stand-alone</a></li>
                                    
                                    <li><a href="shamanus/2274">УЖи и выбор</a></li>
                                    
                                    <li><a href="gladchenko/2273">План запроса с уровнем изоляции «Read Committed»</a></li>
                                    
                                    <li><a href="oracleandsql/2268">Платежи с нарастающим итогом решение задачи</a></li>
                                    
                                    <li><a href="iyun/2267">Виртуальная реальность (а Кастанеда против Дойча :-)</a></li>
                                    
                                    <li><a href="oracleandsql/2266">Представляю сообществу  свою книгу oracle sql</a></li>
                                    
                                    <li><a href="oracleandsql/2263">уже МИЛЛИОН!!! 1 000 000!</a></li>
                                    
                                    <li><a href="servit/2262">Приостановка всех пользовательских процессов, запрет входа новых пользователей и многое другое</a></li>
                                    
                                    <li><a href="somewheresomehow/2261">USE HINT и ASSUME_JOIN_PREDICATE_DEPENDS_ON_FILTERS</a></li>
                                    
                                    <li><a href="somewheresomehow/2260">SQL Server 2019: Действительный план запроса</a></li>
                                    
                                </ul>
                                <h4>Теги</h4>
                                <div id="tagcloud">
                                  
                                  <a href="blogs.aspx@tag=_252fSun" rel="33">/Sun</a>
                                  
                                  <a href="blogs.aspx@tag=Blogroll" rel="34">Blogroll</a>
                                  
                                  <a href="blogs.aspx@tag=cxgrid" rel="33">cxgrid</a>
                                  
                                  <a href="blogs.aspx@tag=Delphi" rel="155">Delphi</a>
                                  
                                  <a href="blogs.aspx@tag=devexpress" rel="61">devexpress</a>
                                  
                                  <a href="blogs.aspx@tag=intersystems%20cache" rel="28">intersystems cache</a>
                                  
                                  <a href="blogs.aspx@tag=oracle" rel="36">oracle</a>
                                  
                                  <a href="blogs.aspx@tag=SharePoint" rel="107">SharePoint</a>
                                  
                                  <a href="blogs.aspx@tag=SharePoint%202010" rel="54">SharePoint 2010</a>
                                  
                                  <a href="blogs.aspx@tag=SharePoint%202013" rel="40">SharePoint 2013</a>
                                  
                                  <a href="blogs.aspx@tag=sp2013" rel="41">sp2013</a>
                                  
                                  <a href="blogs.aspx@tag=sql" rel="43">sql</a>
                                  
                                  <a href="blogs.aspx@tag=SQL%20Server" rel="223">SQL Server</a>
                                  
                                  <a href="blogs.aspx@tag=t-sql" rel="40">t-sql</a>
                                  
                                  <a href="blogs.aspx@tag=_25c1_25e8_25e1_25eb_25e8_25ee_25f2_25e5_25ea_25e0" rel="29">Библиотека</a>
                                  
                                  <a href="blogs.aspx@tag=_25e8_25ed_25f1_25f2_25f0_25f3_25ec_25e5_25ed_25f2_25fb" rel="45">инструменты</a>
                                  
                                  <a href="blogs.aspx@tag=_25ca_25ed_25e8_25e3_25e0%20_25e4_25eb_25ff%20_25ef_25ee_25eb_25fc_25e7_25ee_25e2_25e0_25f2_25e5_25eb_25e5_25e9" rel="48">Книга для пользователей</a>
                                  
                                  <a href="blogs.aspx@tag=_25ee_25e1_25e7_25ee_25f0" rel="41">обзор</a>
                                  
                                  <a href="blogs.aspx@tag=_25d1_25ef_25e8_25f1_25ee_25ea" rel="31">Список</a>
                                  
                                  <a href="blogs.aspx@tag=_25fd_25ea_25f1_25ef_25e5_25f0_25f2_25fb" rel="28">эксперты</a>
                                  
                                  
                                </div>
                                <br />
                                <h4>Блоги</h4>
								<ul>
                                    
									<li><a href="abap_thinking">ABAP Thinking</a></li>
                                    
									<li><a href="andraptor">Andraptor's SQL Blog</a></li>
                                    
									<li><a href="a-p">a-p blog</a></li>
                                    
									<li><a href="apple">apple</a></li>
                                    
									<li><a href="aryndin99">aryndin99</a></li>
                                    
									<li><a href="palo">BI Jedox</a></li>
                                    
									<li><a href="cis-blog">CIISARMBD-blog</a></li>
                                    
									<li><a href="cms">CMS</a></li>
                                    
									<li><a href="cruelsql">Cruel SQL</a></li>
                                    
									<li><a href="delphi_word">Delphi Word</a></li>
                                    
									<li><a href="x11">Delphi, DevExpress, примеры, решения</a></li>
                                    
									<li><a href="decolores">Dmitriy Kostylev SQL blog [MVP]</a></li>
                                    
									<li><a href="gds">Dmitriy. SQL Blog for DBA</a></li>
                                    
									<li><a href="dox">Dox Blog</a></li>
                                    
									<li><a href="dwh">DWH</a></li>
                                    
									<li><a href="erp_crm_wms">ERP CRM WMS - автоматизация бизнеса</a></li>
                                    
									<li><a href="extended_oracle">Extended Oracle</a></li>
                                    
									<li><a href="fishhook">FishHook</a></li>
                                    
									<li><a href="f1incode">Formula 1 in Code</a></li>
                                    
									<li><a href="gandjustas">Gandjustas' blog</a></li>
                                    
									<li><a href="gpu_blog">gpu blog</a></li>
                                    
									<li><a href="hnyk">hnyk</a></li>
                                    
									<li><a href="j-coder">Jay-Jay Coder</a></li>
                                    
									<li><a href="judge">judge's blog</a></li>
                                    
									<li><a href="li_bao">li_bao</a></li>
                                    
									<li><a href="locky">Locky's blog</a></li>
                                    
									<li><a href="maple4">maple4</a></li>
                                    
									<li><a href="medex_said">Medex's Blog</a></li>
                                    
									<li><a href="dklmnmsbi">Microsoft Business Intelligence</a></li>
                                    
									<li><a href="gladchenko">MS SQL Server - дело тонкое...</a></li>
                                    
									<li><a href="dbasimple">MS SQL Server- по простому.</a></li>
                                    
									<li><a href="mssqlserverauditor">MSSQLServerAuditor</a></li>
                                    
									<li><a href="szenz">Odd SQL</a></li>
                                    
									<li><a href="oracleandsql">Oracle SQL</a></li>
                                    
									<li><a href="ordos">Ordos</a></li>
                                    
									<li><a href="outcoldman">outcoldman</a></li>
                                    
									<li><a href="ozka">ozka</a></li>
                                    
									<li><a href="pieces_of_code">Pieces of code</a></li>
                                    
									<li><a href="pomah">pomah</a></li>
                                    
									<li><a href="rad_studio">RAD Studio 3.5 и далее. Новинки, фичи.</a></li>
                                    
									<li><a href="ramin">Ramin Hashimzade</a></li>
                                    
									<li><a href="rampage">Rampage</a></li>
                                    
									<li><a href="shcherbinin">Ray D's blog</a></li>
                                    
									<li><a href="roman-yankovsky">Roman Yankovsky Blog</a></li>
                                    
									<li><a href="rsashka">rsashka</a></li>
                                    
									<li><a href="rxoproject">RxO project.</a></li>
                                    
									<li><a href="semenar">semenar</a></li>
                                    
									<li><a href="shamanus">Shamanus</a></li>
                                    
									<li><a href="sharepointpic">SharePoint 2010 в простых картинках</a></li>
                                    
									<li><a href="softwarer">softwarer</a></li>
                                    
									<li><a href="somewheresomehow">SomewhereSomehow's Notes</a></li>
                                    
									<li><a href="sqlplace">SQL Place</a></li>
                                    
									<li><a href="sqlrefactorstudio">SQL Refactor Studio - Free Addin for SSMS</a></li>
                                    
									<li><a href="kab">SQL Server</a></li>
                                    
									<li><a href="menshov_s">SQL, Java, C#, ...</a></li>
                                    
									<li><a href="sql4enterprise">Sql4Enterprise</a></li>
                                    
									<li><a href="sqlcmd_ru">sqlCmd Blog</a></li>
                                    
									<li><a href="ssmsboost">SSMSBoost для SSMS</a></li>
                                    
									<li><a href="stebelek">Stebelek</a></li>
                                    
									<li><a href="sweetchar">SweetChar</a></li>
                                    
									<li><a href="sybase">Sybase</a></li>
                                    
									<li><a href="sybase_replication_server">Sybase Replication Server</a></li>
                                    
									<li><a href="tabloid">tabloid</a></li>
                                    
									<li><a href="taper">taper</a></li>
                                    
									<li><a href="tdelphi">TDelphi-блог</a></li>
                                    
									<li><a href="ruteched">TechEd Russia</a></li>
                                    
									<li><a href="sasbi">test</a></li>
                                    
									<li><a href="test">Test</a></li>
                                    
									<li><a href="t-sql">T-SQL.RU</a></li>
                                    
									<li><a href="vr-online">vr-online</a></li>
                                    
									<li><a href="table_command">Автоматическе создание скриптов для MS SQL SERVER.</a></li>
                                    
									<li><a href="metadata">Декларативная веб-разработка, клиентский SQL в браузере.</a></li>
                                    
									<li><a href="dzinovyev">Дмитрий Зиновьев</a></li>
                                    
									<li><a href="irinanaumova">Ирина Наумова</a></li>
                                    
									<li><a href="oldnick">Книга по программированию.</a></li>
                                    
									<li><a href="iyun">Пробелы с разогнанной памятью</a></li>
                                    
									<li><a href="egorov_av">программирование, информационные технологии</a></li>
                                    
									<li><a href="structures">структуры данных.</a></li>
                                    
									<li><a href="servit">СУБД Cach&#233;</a></li>
                                    
									<li><a href="cubrid">СУБД CUBRID</a></li>
                                    
									<li><a href="qa_platform">Тестирование программного обеспечения.</a></li>
                                    
									<li><a href="garya">Технологическая сингулярность</a></li>
                                    
									<li><a href="expeditor">Юрий Ивченко</a></li>
                                    
								</ul>
                                <br />
							</div>
							<!-- конец блока "Основные темы" -->

						</div>
					</div>
					<div id="content-section">
						<div id="content-wrapper" >
                            <h1>Записи из всех блогов на Sql.ru</h1>
                            
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="gladchenko/2275">Tips for DBA: The SQL Server service and the SQL Server Agent Service fail to start on a stand-alone</a></h2>
                                    <div class="info">Блог: 
                                        <a href="gladchenko/default.htm">MS SQL Server - дело тонкое...</a>
                                    </div>
									<div style="margin:0 0 5px 0">Если в журнале приложений есть ошибки для MSSQLService: “…TDSSNIClient initialization failed with error 0x80092004…” нужно В POWERSHELL создать самоподписной сертификат (заменив в скрипте имя SERVERNAME.DOMENNAME.ru на полное имя вашего сервера):<br /><br /><i>New-SelfSignedCertificate -Type SSLServerAuthentication -DnsName SERVERNAME.DOMENNAME.ru -KeyLength 2048 -KeySpec KeyExchange -KeyUsage KeyEncipherment -TextExtension @(“2.5.29.37=&#123;text&#125;1.3.6.1.5.5.7.3.1”) -NotAfter (Get-Date).AddMonths(1200)</i><br />Далее нужно указать для протоколов созданный сертификат, как это описано в главе “Configuring SSL for SQL Server” статьи: <a href="../../https@docs.microsoft.com/en-us/previous-versions/sql/sql-server-2008-r2/ms189067(v=sql.105)" target="_blank" rel="ugc">https://docs.microsoft.com/en-us/previous-versions/sql/sql-server-2008-r2/ms189067(v=sql.105)</a></div>
                                    <div class="info">
                                        автор: <a href="../forum/memberinfo.aspx@mid=1085" target="_blank" style="margin-right:20px">Александр Гладченко</a>  добавлено: 10&nbsp;фев&nbsp;20
                                        <span style="float:right">просмотры: 898, комментарии: <a href="gladchenko/2275#add-comment">0</a></span>
                                        <br />
                                        <div id="tags"></div>
                                        <ul class="taglist">
                                        
                                        <li><a href="blogs.aspx@tag=SQL%20Server">SQL Server</a></li>
                                        
                                        
                                        </ul>
                                        <br />
                                    </div>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="shamanus/2274">УЖи и выбор</a></h2>
                                    <div class="info">Блог: 
                                        <a href="shamanus/default.htm">Shamanus</a>
                                    </div>
									<div style="margin:0 0 5px 0"><b><font size="4">ШО, опять?!</font></b><br /><br />Наступил следующий високосный год, а это означает, что настала пора поста в нашем блоге, раз уж мы завели такую традицию.<br /><br />Внимательный читатель уже разобрался в УЖах, а невнимательному как то пох. Но мне видится, что нужно сделать краткую выжимку предыдущих двух статей, дабы облегчить восприятие новой.<br /><br /><b>1. Таки да! УЖи это утверждения. Догма, аффирмация, тезис или какие вам там нравятся синонимы, как не зови все одно - ужи, они и в африке ужи (правда гугель говорит, что африканские зеленые, но ху кэрс). </b><br /><b>2. На персональной коллекции ужей строится мышление индивида, читай свое собсное болотце. Болотце и ужей индивид стережет, критиков пинает, а новых ужей пускает редко. (не все, но в основном)<br />Я сама дочь офицера и тут ... ну вы поняли.</b> <table class='quote'><tr><th></th></tr><tr><td><font size="3">В общем здесь мы сделаем лирическое отступление. Болотце полагается у каждого свое, дается ему по праву рождения раз уж создатель наделил индивида сознанием. Ток в самом начале пути болотце пустое. И вот воспрянул он ото сна небытия.... хм... чет не туда, короче родился и понеслось. Начинает течь информационная вода, а дальше застой, болото, ужи... кароч четайте первую <a href="../../https@www.sql.ru/blogs/shamanus/1122" target="_blank" rel="ugc">статью</a>. Куда интереснее размерность болот. Мне видится, что создатель наделил нас более менее одинаковыми способностями, а значитца у размера болот есть лимит, верхняя граница, свыше которой индивид за ним уследить уже не может, разве что он шерлок холмс со своими чертогами разума. У обычного индивида не чертоги, а поскромнее жилище, так что лимиты наше все. Думаю это важно в принципе, но пока не размышлял на эту тему.<br /> А еще есть индивиды у которых там по жизни одна вода, но это уже совсем другая история</font>.</td></tr></table><b>3. В современном мире с ужами туго. Точнее проблема не в том, что их нет, а в том, что они как раз есть и много. Об этом подробнее.</b><br /><br /><br /><font size="4"><b>Вот раньше! </b></font><br />Современные энторнеты это очередное чудо света, спустя 100 лет, когда мы будем жить в виртуальном мире (если мы уже не там) обмен информацией сильно упростится и эти ваши энторнеты станут не нужны. Это будет архаичная неповоротливая хрень, которой можно будет только восхищяццо восхваляя предков за их усидчивость, усердие и инвестиции частицы своих жизней в ЭТО. Но это потом, а вот прям щас энторнет это кран, не.... это информационное цунами. Оно огромным потоком пытается наполнить нас каждый день информацией как есть, то есть в сыром виде. <br /><br />Раньше были книжки, они своей структурностью ломали волны мусора и было проще. Кто то взял информацию, приготовил её аналитикой, пролил соусом эпистолярного жанра и на красивом блюдечке подал. Вкусненько! Ну или не очень, тут уж как пойдет.<br /><br />А тут никакого соуса - все сырое, без оформительского соуса, с паразитами глупости и необразованности.<br /><br />Дерзай индивид! Копай!<br /><br />Сложно братцы? А мне каково скажу я вам. И вот тут у нас плавная подводка. <br /><br /><font size="3"><b>Выбор УЖей значитца.</b></font><br /><br />Почему выбор это проблема спросит внимательный читатель? Знаете ли вы или нет, но теория принятия решений и теория выбора это целая наука и предметная область. Целая статья в кипедии есть, даже в <a href="../../https@ru.wikipedia.org/wiki/_25D0_25A2_25D0_25B5_25D0_25BE_25D1_2580_25D0_25B8_25D1_258F__25D0_25BF_25D1_2580_25D0_25B8_25D0_25B000A591969" target="_blank" rel="ugc">русской</a>. Только в кипедии все идет про тервер и прочие эти ваши сопроматы. Шо за люди математики, всюду лезут. <br /><br />А вот проблеме выбора в психологии пара строчек в конце статьи еще и обозвали Шварца неавторитетным источником. Его! Единственного изучателя этой области более менее понятно. Не то что бы я восторгался мистером Шварцем, есть у меня вопросы к его постулатам, но этот персонаж заводит весьма себе важную терминологию в своих книжонках и на выступлениях в ТЕД.<br /><br />Знали ли вы, что выбор имеет не только точку счастья, но и точку паралича. Это очень интересный феномен, я про подобное исследование слышал в каком то видосе на ютьюбчике. Давайте по простому, пришел ты за колбаской в какую нить магнитерочку, а там дегустация колбас. Если ты видишь, что там 5 видов колбас на дегустации, то колбаску ты купишь с вероятностью 33%, а ежели там будет 25, то уже 3%. Смекаешь о чем я?<br /><br /><img src="../../https@www.sql.ru/forum/actualfile.aspx@id=22075689" border="0" align="center" alt="Картинка с другого сайта."/><br /><br />Глубина этого явления сильно мало изучена. Основной посыл - что вернувшись с колбаской домой ты таки пожалеешь, что взял докторскую, а не ту любительскую. Ну хрен с вами, допустим с колбаской это прокатит. А ужи? Ужа захотел выпустил, захотел нового поймал. Где тут сожаление? Не, отпускать конечно тяжко, но не прям невозможно.<br /><br />В силу профессиональной деятельности автору этой статьи приходилось изучать вопрос выбора довольно в узкой области. И описанные выше явления паралича он лично наблюдал на цифрах и релевантных тестах поведения людей, поэтому я склонен верить в паралич выбора. Ты если хочешь тоже можешь поверить, а еще вот ему тоже можно. Остальные разойдись. <br /><br />Собсно все!<br /><br />Да ладно, ты же не поверил, что я брошу тебя вот тут. К чему ведут все излагаемые выше мысли. Если исходить из того, что <br /><ul><li>энторнеты массово наплыли к нам в 10-тых годах (ппц, ты ощущаешь какие мы старые, ёпт?)</li><li>это породило огромный набор ужей в этих самых торнетах, в том числе от психов, убийц или, чего хуже, всяких хипстеров</li><li>огромный набор ведет к параличу выбора</li></ul>мы с тобой мой юный читатель столкнулись с первым массовым параличем формирования болотц.<br /><br />Да, в десятых годах сложно оценить последствия этого явления. Это как эпидемиями, начинаются они тихо и малозаметно.<br />Паралич выбора уже начался. Эпидемия паралича началась. ТЫ вот думаешь что аффтор врет, никакого паралича лично на себе ты не ощущаешь. Но зацени, что я написал аффтор с двумя Ф. Это я так показал, что я и ты стары как г..но мамонта. Мы не поколение десятых, своих ужей мы уже наловили. Последствия нашей эпидемии мы почувствуем в ближайшие 5 лет. <br /><br />Тут уж даже господин Геббельс сложил бы лапки, взял ведро попкорна и понаблюдал со стороны.<br /><br />Собсно цель моего блога найти чудо таблетку лечение этого заболевания. Но пока получается только описать симптомы.<br />В следующей части попробуем описать способы алгоритмизации сбора ужей.</div>
                                    <div class="info">
                                        автор: <a href="../forum/memberinfo.aspx@mid=137002" target="_blank" style="margin-right:20px">Shamanus</a>  добавлено: 07&nbsp;фев&nbsp;20
                                        <span style="float:right">просмотры: 898, комментарии: <a href="shamanus/2274#add-comment">0</a></span>
                                        <br />
                                        <div id="tags"></div>
                                        <ul class="taglist">
                                        
                                        <li><a href="blogs.aspx@tag=_25f0_25e0_25e7_25ec_25fb_25f8_25eb_25e5_25ed_25e8_25ff">размышления</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25f0_25e0_25e7_25ec_25fb_25f8_25eb_25e5_25ed_25e8_25ff%20_25ee%20_25ed_25e0_25f3_25ea_25e5">размышления о науке</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25f3_25e6_25e8">ужи</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25e0_25ed_25e0_25eb_25e8_25e7%20_25e8_25ed_25f4_25ee_25f0_25ec_25e0_25f6_25e8_25e8">анализ информации</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25e8_25ed_25f4_25ee_25f0_25ec_25e0_25f6_25e8_25ee_25ed_25ed_25fb_25e9%20_25ec_25f3_25f1_25ee_25f0">информационный мусор</a></li>
                                        
                                        
                                        </ul>
                                        <br />
                                    </div>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="gladchenko/2273">План запроса с уровнем изоляции «Read Committed»</a></h2>
                                    <div class="info">Блог: 
                                        <a href="gladchenko/default.htm">MS SQL Server - дело тонкое...</a>
                                    </div>
									<div style="margin:0 0 5px 0">Craig Freedman, 2 мая 2007г. Оригинал статьи тут: <a href="../../https@blogs.msdn.microsoft.com/craigfr/2007/05/02/query-plans-and-read-committed-isolation-level/default.htm" target="_blank" rel="ugc">https://blogs.msdn.microsoft.com/craigfr/2007/05/02/query-plans-and-read-committed-isolation-level/</a><br /><br />В прошлый раз мы рассмотрели то, как одновременные изменения могут стать причиной просмотра на уровне изоляции read committed. Также было показано что эти условия могут привести к выборке одной и той же строки несколько раз или вообще к отсутствию строки в выборке.  Теперь давайте рассмотрим как одновременные изменения могут отразиться на работе более сложных планов запроса. <br /><br /><a href="../../https@blogs.msmvps.com/gladchenko/query-plans-and-read-committed-isolation-level/default.htm" target="_blank" rel="ugc">Продолжить чтение.</a></div>
                                    <div class="info">
                                        автор: <a href="../forum/memberinfo.aspx@mid=1085" target="_blank" style="margin-right:20px">Александр Гладченко</a>  добавлено: 04&nbsp;фев&nbsp;20
                                        <span style="float:right">просмотры: 1072, комментарии: <a href="gladchenko/2273#add-comment">0</a></span>
                                        <br />
                                        <div id="tags"></div>
                                        <ul class="taglist">
                                        
                                        <li><a href="blogs.aspx@tag=SQL%20Server">SQL Server</a></li>
                                        
                                        
                                        </ul>
                                        <br />
                                    </div>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="oracleandsql/2268">Платежи с нарастающим итогом решение задачи</a></h2>
                                    <div class="info">Блог: 
                                        <a href="oracleandsql/default.htm">Oracle SQL</a>
                                    </div>
									<div style="margin:0 0 5px 0">Одна из студенток просила помочь с задачей , задача интересная, поэтому предлагаю вашему вниманию.<br /><br />  Необходимо вывести все месяцы текущего года, с указанием клиента и суммы его платежей, отдельной колонкой <br />  вывести сумму всех платежей клиента с начала года (нарастающий итог по клиенту с начала года). Если в каком-то <br />  месяце клиент не платил, вывести 0<br /><br /><br />я так решил<br /><pre class="src lang-plsql">
<span style='color: #0000ff;'>create</span> <span style='color: #0000ff;'>table</span> pay1(userid number, dt <span style='color: #0000ff;'>date</span>, paysum number);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>1</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>10</span>, <span style='color: #00008b;'>22</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>2</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>20</span>, <span style='color: #00008b;'>2</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>2</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>90</span>, <span style='color: #00008b;'>72</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>1</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>50</span>, <span style='color: #00008b;'>32</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>1</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>50</span>, <span style='color: #00008b;'>90</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>2</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>70</span>, <span style='color: #00008b;'>52</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>1</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>50</span>, <span style='color: #00008b;'>92</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>1</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>10</span>, <span style='color: #00008b;'>32</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>1</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>90</span>, <span style='color: #00008b;'>90</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>2</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>90</span>, <span style='color: #00008b;'>52</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>1</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>150</span>, <span style='color: #00008b;'>92</span>);
<span style='color: #0000ff;'>insert</span> <span style='color: #0000ff;'>into</span> pay1 <span style='color: #0000ff;'>values</span>(<span style='color: #00008b;'>1</span>, <span style='color: #800080;'>sysdate</span>-<span style='color: #00008b;'>110</span>, <span style='color: #00008b;'>32</span>);
 
</pre>
<br /><br />Для нарастающего итога используется аналитическия функция SUM, с под запросом, нулевые значения создаем подзапросом с connect by level интервал дат задаем в конструкции connect by<br />в данном случае от 2019-05-01 до 2020-01-01<br /><br /><pre class="src lang-plsql">
<span style='color: #0000ff;'>select</span> userid,mn,yy,passum , <span style='color: #0000ff;'>sum</span>(passum) <span style='color: #0000ff;'>over</span> (<span style='color: #0000ff;'>partition</span> <span style='color: #0000ff;'>by</span> userid <span style='color: #0000ff;'>order</span> <span style='color: #0000ff;'>by</span> yy,mn) <span style='color: #0000ff;'>from</span> ( 
    <span style='color: #0000ff;'>select</span> userid , <span style='color: #800080;'>extract</span>(<span style='color: #0000ff;'>month</span> <span style='color: #0000ff;'>from</span> dt) mn, <span style='color: #800080;'>extract</span>(<span style='color: #0000ff;'>year</span> <span style='color: #0000ff;'>from</span> dt) yy, <span style='color: #0000ff;'>sum</span>(pasum) passum <span style='color: #0000ff;'>from</span> (
    <span style='color: #0000ff;'>select</span> <span style='color: #800080;'>decode</span>( userid,<span style='color: #0000ff;'>null</span>, userid1, userid)  userid  , <span style='color: #800080;'>decode</span>(dt,<span style='color: #0000ff;'>null</span>,dt1,dt) dt , <span style='color: #800080;'>decode</span>(paysum,<span style='color: #0000ff;'>null</span>,<span style='color: #00008b;'>0</span>,paysum) pasum <span style='color: #0000ff;'>from</span> pay1
     right join
    (
        <span style='color: #0000ff;'>select</span> dt1,userid1 <span style='color: #0000ff;'>from</span>
        (
            (<span style='color: #0000ff;'>select</span> <span style='color: #0000ff;'>date</span><span style='color: #ff0000;'>'2019-05-01'</span>+<span style='color: #0000ff;'>level</span>-<span style='color: #00008b;'>1</span> <span style='color: #0000ff;'>as</span> dt1 <span style='color: #0000ff;'>from</span> dual <span style='color: #0000ff;'>connect</span> <span style='color: #0000ff;'>by</span> <span style='color: #0000ff;'>level</span> &lt;= <span style='color: #0000ff;'>date</span><span style='color: #ff0000;'>'2020-01-01'</span>-<span style='color: #0000ff;'>date</span><span style='color: #ff0000;'>'2019-05-01'</span>) dt
            cross join (<span style='color: #0000ff;'>select</span> <span style='color: #0000ff;'>distinct</span> userid userid1 <span style='color: #0000ff;'>from</span> pay1) pay
        )) payd 
    <span style='color: #0000ff;'>on</span> <span style='color: #800080;'>trunc</span>(dt) = <span style='color: #800080;'>trunc</span>(dt1) <span style='color: #0000ff;'>and</span> userid = userid1   
    ) mzt <span style='color: #0000ff;'>group</span> <span style='color: #0000ff;'>by</span> userid, <span style='color: #800080;'>extract</span>(<span style='color: #0000ff;'>month</span> <span style='color: #0000ff;'>from</span> dt), <span style='color: #800080;'>extract</span>(<span style='color: #0000ff;'>year</span> <span style='color: #0000ff;'>from</span> dt) <span style='color: #0000ff;'>order</span> <span style='color: #0000ff;'>by</span> yy,mn
    ) tt1
</pre>
</div>
                                    <div class="info">
                                        автор: <a href="../forum/memberinfo.aspx@mid=58558" target="_blank" style="margin-right:20px">Myp3_u_K</a>  добавлено: 08&nbsp;дек&nbsp;19
                                        <span style="float:right">просмотры: 3299, комментарии: <a href="oracleandsql/2268#add-comment">3</a></span>
                                        <br />
                                        <div id="tags"></div>
                                        <ul class="taglist">
                                        
                                        <li><a href="blogs.aspx@tag=connect%20by">connect by</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=cross%20join">cross join</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=join">join</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=dual">dual</a></li>
                                        
                                        
                                        </ul>
                                        <br />
                                    </div>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="iyun/2267">Виртуальная реальность (а Кастанеда против Дойча :-)</a></h2>
                                    <div class="info">Блог: 
                                        <a href="iyun/default.htm">Пробелы с разогнанной памятью</a>
                                    </div>
									<div style="margin:0 0 5px 0"><br />Здесь, в течение квартала, будет разобрана глава из книги Д. Дойча о виртуальной реальности</div>
                                    <div class="info">
                                        автор: <a href="../forum/memberinfo.aspx@mid=180740" target="_blank" style="margin-right:20px">Програмер.Илюша</a>  добавлено: 13&nbsp;ноя&nbsp;19
                                        <span style="float:right">просмотры: 3101, комментарии: <a href="iyun/2267#add-comment">2</a></span>
                                        <br />
                                        <div id="tags"></div>
                                        <ul class="taglist">
                                        
                                        <li><a href="blogs.aspx@tag=vr">vr</a></li>
                                        
                                        
                                        </ul>
                                        <br />
                                    </div>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="oracleandsql/2266">Представляю сообществу  свою книгу oracle sql</a></h2>
                                    <div class="info">Блог: 
                                        <a href="oracleandsql/default.htm">Oracle SQL</a>
                                    </div>
									<div style="margin:0 0 5px 0">Попытался структурировать свои знания и опыт, получилось 600 страниц, прошу не быть строгими и критиковать аргументированно.<br />В электронном варианте книга бесплатна, 6 рублей - обязательная комиссия магазина, как я понял.<br /><a href="../../https@www.ozon.ru/context/detail/id/154759045/default.htm" target="_blank">Oracle SQL. 100 шагов от новичка до профессионала. 20 дней новых знаний и практики</a><br />или печатная версия , но уже за деньги<br /><a href="../../https@www.ozon.ru/context/detail/id/154784380/default.htm" target="_blank">Oracle SQL. 100 шагов от новичка до профессионала. 20 дней новых знаний и практики</a><br />Пользуйтесь.</div>
                                    <div class="info">
                                        автор: <a href="../forum/memberinfo.aspx@mid=58558" target="_blank" style="margin-right:20px">Myp3_u_K</a>  добавлено: 20&nbsp;июл&nbsp;19
                                        <span style="float:right">просмотры: 6649, комментарии: <a href="oracleandsql/2266#add-comment">15</a></span>
                                        <br />
                                        <div id="tags"></div>
                                        <ul class="taglist">
                                        
                                        <li><a href="blogs.aspx@tag=oracle">oracle</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=sql">sql</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25f3_25f7_25b8_25e1_25e0">учёба</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25f1_25ef_25f0_25e0_25e2_25ee_25f7_25ed_25e8_25ea">справочник</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25ca_25ed_25e8_25e3_25e0%20_25e4_25eb_25ff%20_25ef_25ee_25eb_25fc_25e7_25ee_25e2_25e0_25f2_25e5_25eb_25e5_25e9">Книга для пользователей</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25ca_25ed_25e8_25e3_25e0%20_25ed_25e0%20_25f0_25f3_25f1_25f1_25ea_25ee_25ec">Книга на русском</a></li>
                                        
                                        
                                        </ul>
                                        <br />
                                    </div>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="oracleandsql/2263">уже МИЛЛИОН!!! 1 000 000!</a></h2>
                                    <div class="info">Блог: 
                                        <a href="oracleandsql/default.htm">Oracle SQL</a>
                                    </div>
									<div style="margin:0 0 5px 0">Просмотров<br /><br />Сегодня	1718<br />В этом месяце	10530<br /><b>Всего	1000003</b><br /><br />Сегодня счетчик посещений моего блога превзошел миллион просмотров, что дальше ? Продолжаю вести курсы, публикую книгу , постараюсь и дальше радовать вас новыми интересными заметками, дорогие читатели.<br />С уважением, Чалышев Максим Михайлович.</div>
                                    <div class="info">
                                        автор: <a href="../forum/memberinfo.aspx@mid=58558" target="_blank" style="margin-right:20px">Myp3_u_K</a>  добавлено: 14&nbsp;апр&nbsp;19
                                        <span style="float:right">просмотры: 6428, комментарии: <a href="oracleandsql/2263#add-comment">5</a></span>
                                        <br />
                                        <div id="tags"></div>
                                        <ul class="taglist">
                                        
                                        <li><a href="blogs.aspx@tag=_25f7_25e0_25eb_25fb_25f8_25e5_25e2">чалышев</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=sql">sql</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=Excel">Excel</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=know%20how">know how</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25c1_25eb_25ee_25e3">Блог</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25f3_25f0_25ee_25ea_25e8">уроки</a></li>
                                        
                                        
                                        </ul>
                                        <br />
                                    </div>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="servit/2262">Приостановка всех пользовательских процессов, запрет входа новых пользователей и многое другое</a></h2>
                                    <div class="info">Блог: 
                                        <a href="servit/default.htm">СУБД Cach&#233;</a>
                                    </div>
									<div style="margin:0 0 5px 0">Недавно возникла интересная задача: <a href='../../https@www.sql.ru/forum/actualutils.aspx@action=gotomsg&msg=21847083' style='padding-left:15px; background: url(../images/message.gif) top left no-repeat;' target='_blank'>21847083</a>.<br /><br />Итак, необходимо <a href="../../https@docs.intersystems.com/latest/csp/docbook/DocBook.UI.Page.cls@KEY=GSA_using_instance#GSA_using_instance_control" target="_blank">перезапустить СУБД</a>.<br />Для запуска команды из самой СУБД можно воспользоваться функцией <a href="../../https@docs.intersystems.com/latest/csp/docbook/DocBook.UI.Page.cls@KEY=RCOS_fzf-100" target="_blank">&#36;zf(-100)</a> - новым, безопасным аналогом функций 	&#36;zf(-1)/&#36;zf(-2), например:<br /><br /><pre style="margin: 1px; font: 9pt Courier New, monospace"><font color="#0000ff">s&nbsp;</font><font color="#800000">cmd&nbsp;</font><font color="#000000">=&nbsp;</font><font color="#008000">&quot;ccontrol&quot;<br /></font><font color="#0000ff">s&nbsp;</font><font color="#800000">args</font><font color="#000000">(1)&nbsp;=&nbsp;</font><font color="#008000">&quot;stopstart&quot;<br /></font><font color="#0000ff">s&nbsp;</font><font color="#800000">args</font><font color="#000000">(2)&nbsp;=&nbsp;</font><font color="#0000ff">&#36;p</font><font color="#000000">(</font><font color="#0000ff">&#36;zu</font><font color="#000000">(86),</font><font color="#008000">&quot;*&quot;</font><font color="#000000">,2)&nbsp;</font><font color="#008000">;&nbsp;имя экземпляра<br /></font><font color="#0000ff">s&nbsp;</font><font color="#800000">args</font><font color="#000000">(3)&nbsp;=&nbsp;</font><font color="#008000">&quot;quietly&quot;<br /></font><font color="#0000ff">d&nbsp;&#36;ZF</font><font color="#000000">(-100,</font><font color="#008000">&quot;/ASYNC&quot;</font><font color="#000000">,</font><font color="#800000">cmd</font><font color="#000000">,.</font><font color="#800000">args</font><font color="#000000">)</font></pre><br /><a href='servit/2262'> Но при ближайшем рассмотрении топика обнаружилось, что..</a></div>
                                    <div class="info">
                                        автор: <a href="../forum/memberinfo.aspx@mid=95727" target="_blank" style="margin-right:20px">servit</a>  добавлено: 02&nbsp;апр&nbsp;19
                                        <span style="float:right">просмотры: 6664, комментарии: <a href="servit/2262#add-comment">0</a></span>
                                        <br />
                                        <div id="tags"></div>
                                        <ul class="taglist">
                                        
                                        <li><a href="blogs.aspx@tag=dbms%20cache">dbms cache</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=intersystems%20cache">intersystems cache</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=cache">cache</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=_25d1_25ea_25f0_25e8_25ef_25f2_25fb%20_25e0_25e4_25ec_25e8_25ed_25e8_25f1_25f2_25f0_25e0_25f2_25ee_25f0_25e0">Скрипты администратора</a></li>
                                        
                                        
                                        </ul>
                                        <br />
                                    </div>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="somewheresomehow/2261">USE HINT и ASSUME_JOIN_PREDICATE_DEPENDS_ON_FILTERS</a></h2>
                                    <div class="info">Блог: 
                                        <a href="somewheresomehow/default.htm">SomewhereSomehow's Notes</a>
                                    </div>
									<div style="margin:0 0 5px 0">В этой публикации мне бы хотелось вернуться к подсказкам USE HINT, представленным впервые в SQL Server 2016 SP1. Часть из них мы уже рассмотрели в предыдущих статьях, в этой статье мы рассмотрим очередную подсказку – ASSUME_JOIN_PREDICATE_DEPENDS_ON_FILTERS, которая влияет на алгоритм оценки числа строк в соединениях.<br /><br />В статье мы немного поговорим о теории оценки соединений и рассмотрим пример использования хинта. Далее, при помощи недокументированных флагов трассировки и несложной арифметики, мы посмотрим, чем отличается оценка в случае использования и не использования хинта, а также проверим вычисления на конкретном примере.<br /><br /><a href="../../www.queryprocessor.ru/assume_join_predicate_depends_on_filters/default.htm" target="_blank">Далее...</a></div>
                                    <div class="info">
                                        автор: <a href="../forum/memberinfo.aspx@mid=53906" target="_blank" style="margin-right:20px">SomewhereSomehow</a>  добавлено: 30&nbsp;мар&nbsp;19
                                        <span style="float:right">просмотры: 4405, комментарии: <a href="somewheresomehow/2261#add-comment">0</a></span>
                                        <br />
                                        <div id="tags"></div>
                                        <ul class="taglist">
                                        
                                        <li><a href="blogs.aspx@tag=assume_join_predicate_depends_on_filters">assume_join_predicate_depends_on_filters</a></li>
                                        
                                        
                                        </ul>
                                        <br />
                                    </div>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="somewheresomehow/2260">SQL Server 2019: Действительный план запроса</a></h2>
                                    <div class="info">Блог: 
                                        <a href="somewheresomehow/default.htm">SomewhereSomehow's Notes</a>
                                    </div>
									<div style="margin:0 0 5px 0">При анализе проблем производительности запроса план запроса часто является ключевым элементом. Планы запросов бывают оценочными и действительными, получать и те и другие можно разными способами.<br /><br />В данной заметке мы рассмотрим способы получения планов запросов, а также новую возможность SQL Server 2019 CTP 2.4 – получить последний действительный план.<br /><br /><a href="../../www.queryprocessor.ru/actual_plan/default.htm" target="_blank">Далее...</a></div>
                                    <div class="info">
                                        автор: <a href="../forum/memberinfo.aspx@mid=53906" target="_blank" style="margin-right:20px">SomewhereSomehow</a>  добавлено: 29&nbsp;мар&nbsp;19
                                        <span style="float:right">просмотры: 4443, комментарии: <a href="somewheresomehow/2260#add-comment">0</a></span>
                                        <br />
                                        <div id="tags"></div>
                                        <ul class="taglist">
                                        
                                        <li><a href="blogs.aspx@tag=lightweight_query_profiling">lightweight_query_profiling</a></li>
                                        
                                        <li><a href="blogs.aspx@tag=tf%202451">tf 2451</a></li>
                                        
                                        
                                        </ul>
                                        <br />
                                    </div>
								</div>
								<br clear="all" />
							</div>
							
                            <!--begin case_hasmoredata-->
                            <div class="article short">
								<p style="float:right"><a href="blogs.aspx@tag=&skip=11">предыдущие записи</a></p>
								<br clear="all" />
							</div><!--end case_hasmoredata-->
						</div>
					</div>
					<div id="bottom-fade"><div class="wrap"></div></div>
				</div>
			</div>			<div id="footer" style="padding-bottom:20px">
				<div  style="float:left">2000-2020 © Alex Sibilev, SQL.ru<br/>
					<a style="font: 10px Verdana;color:#88C" href="../feedback.aspx">Свяжитесь с нами</a></div>
<div style="float:right">Рекомендуем <a href="../../https@www.datahouse.ru/price/kurskaya_colocation">colocation</a> в DataHouse.RU.</div>
				<div class="counters">
                
				</div>
			</div>
		</div>
		<script>initScripts()</script>
<!-- Yandex.Metrika counter -->
<!--ipt type="text/javascript" > (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)}; m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym"); ym(9237463, "init", { clickmap:true, trackLinks:true, accurateTrackBounce:true });</scri-->
<noscript><div><img src="../../https@mc.yandex.ru/watch/9237463" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

	</body>
</html>