<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="ru" xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru">
<head>
  <title>Статьи / SQL.ru</title>
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
  <link rel="stylesheet" type="text/css" href="../css/screen.css@v=1" media="screen" />

    <!--[if lte IE 6]>
            <link rel="stylesheet" type="text/css" href="../css/ie.css" media="screen" />
            <![endif]-->
  <meta name="Description" content="Список статей на Sql.ru" />
  <script type="text/javascript">jQuery = false;</script>
  <!--afhead-->
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

          <li class="selected"><a href="../articles">Статьи</a></li>

          <li class=""><a href="../forum">Форум</a></li>

          <li class=""><a href="../blogs">Блоги</a></li>

          <li class=""><a href="../books">Книги</a></li>

          <li class=""><a href="../subscribe">Рассылка</a></li>

          <li class=""><a href="../forum/job">Работа</a></li>

          <li class=""><a href="../search">Поиск</a></li>

          <li class=""><a href="../faq">FAQ</a></li>
        </ul><div id="top-advert"><!--banner.img--></div>
      </div>
    </div>			<div id="middle" class="column-2">
				<div id="middle-wrap">
					<div id="side-1" class="side-blocks">
						<div class="wrap">

							<!-- блок "Основные темы" -->
							<div class="side-block art-themes">
                                <h4>Разделы</h4>
								<ul>
                                    <li><a href="articles.aspx">Все</a><span>[-]</span></li>
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Access&s=0">Access</a><span>[36]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=ADO&s=0">ADO</a><span>[66]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=ASP&s=0">ASP</a><span>[60]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=C-sharp&s=0">C-sharp</a><span>[82]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=CPP&s=0">CPP</a><span>[15]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Cache&s=0">Cache</a><span>[34]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=CASE&s=0">CASE</a><span>[275]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Clarion&s=0">Clarion</a><span>[2]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=DB2&s=0">DB2</a><span>[8]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Delphi&s=0">Delphi</a><span>[70]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Foxpro&s=0">Foxpro</a><span>[5]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Informix&s=0">Informix</a><span>[12]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=InterBase&s=0">InterBase</a><span>[21]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Java&s=0">Java</a><span>[6]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=MSSQLServer&s=0">MSSQLServer</a><span>[642]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=MySQL&s=0">MySQL</a><span>[65]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=OLAP&s=0">OLAP</a><span>[167]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Oracle&s=0">Oracle</a><span>[161]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Pervasive&s=0">Pervasive</a><span>[2]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=PHP&s=0">PHP</a><span>[9]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=PostgreSQL&s=0">PostgreSQL</a><span>[4]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Python&s=0">Python</a><span>[3]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=SQL&s=0">SQL</a><span>[104]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=SQLBase&s=0">SQLBase</a><span>[2]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=Sybase&s=0">Sybase</a><span>[6]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=VB&s=0">VB</a><span>[30]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=XML&s=0">XML</a><span>[82]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
                                    <!--begin case_iscat_unsel-->
									<li><a href="articles.aspx@g=zzOther&s=0">zzOther</a><span>[289]</span></li>
                                    <!--end case_iscat_unsel-->
                                    
                                    
								</ul>
							</div>
							<!-- конец блока "Основные темы" -->

						</div>
					</div>
					<div id="content-section">
						<div id="content-wrapper">

							<div class="order-links">
								<p style="float:left">страницы: [1] <A HREF="articles.aspx@g=&s=0&p=2">2</A> <A HREF="articles.aspx@g=&s=0&p=3">3</A> <A HREF="articles.aspx@g=&s=0&p=4">4</A> <A HREF="articles.aspx@g=&s=0&p=5">5</A> <A HREF="articles.aspx@g=&s=0&p=6">6</A> <A HREF="articles.aspx@g=&s=0&p=7">7</A> <A HREF="articles.aspx@g=&s=0&p=8">8</A> <A HREF="articles.aspx@g=&s=0&p=9">9</A> <A HREF="articles.aspx@g=&s=0&p=10">10</A> <A HREF="articles.aspx@g=&s=0&p=11">11</A> <A HREF="articles.aspx@g=&s=0&p=12">12</A> <A HREF="articles.aspx@g=&s=0&p=13">13</A> <A HREF="articles.aspx@g=&s=0&p=14">14</A> <A HREF="articles.aspx@g=&s=0&p=15">15</A>  ..<A HREF="articles.aspx@g=&s=0&p=76">76</A> </p>
								<p style="float:right">показываются статьи с 1 по  30 из 2262</p>
								<br clear="all" />
							</div>

                            
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2396">Основы сетевых портов. Часть 1</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:16<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Джеф Феллинг<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Протокол TCP/IP представляет собой фундамент Internet, с помощью которого компьютеры отправляют и принимают информацию из любой точки земного шара, независимо от географического положения. Обратиться к компьютеру с TCP/IP в другой стране так же просто, как к компьютеру, который находится в соседней комнате. Процедура доступа в обоих случаях идентична, хотя для соединения с машиной в другой стране может потребоваться на несколько миллисекунд больше. В результате граждане любой страны могут без труда делать покупки в Amazon.com; однако из-за логической близости усложняется задача информационной защиты: любой владелец подключенного к Internet компьютера в любой точке мира может попытаться установить несанкционированное соединение с любой другой машиной...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2395">Двухъядерные процессоры Intel: выбираем лучший. Часть вторая</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:14<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Василий Леонов<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Для тестирования процессоров семейства Intel Pentium D и Intel Pentium Processor Extreme Edition 840 использовалась абсолютно одинаковая конфигурация стенда, то есть одними и теми же были системная плата, память, дисковая подсистема, видеокарта и т.д. Стенд для тестирования имел следующую конфигурацию...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2394">Двухъядерные процессоры Intel: выбираем лучший. Часть первая</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:13<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Василий Леонов<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Гонка тактовых частот, продолжавшаяся на протяжении многих лет, похоже, окончательно ушла в прошлое. За эти годы в умах пользователей укоренилось мнение, что именно тактовая частота процессора является показателем его производительности, однако планы компании Intel по наращиванию тактовых частот так и остались планами, и, скорее всего, увидеть процессор с тактовой частотой 10 ГГц нам предстоит весьма не скоро. По всей видимости, масштабирование процессоров по тактовой частоте оказалось не столь простой задачей, как предполагалось, и потому при сегодняшних технологических нормах производства процессоров и малоэффективных воздушных системах охлаждения добиться линейного масштабирования тактовой частоты процессоров не удаётся. Осознав, что увеличение прежними темпами тактовых частот процессоров не представляется невозможным, нужно было искать принципиально иные технологии увеличения производительности процессоров. Одновременно с этим необходимо было (по маркетинговым соображениям) убедить пользователей в том, что производительность процессора определяется не только и не столько его тактовой частотой. И первым шагом на пути к такому «перевоспитанию» пользователей стал отказ компании Intel от указания в названии процессора его тактовой частоты — на смену процессорам Intel Pentium 4 3,0 ГГц пришли загадочные обозначения вроде Intel Pentium 4 560 и т.п....</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2393">Ссылочная целостность является важной для баз данных</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:11<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Michael Blaha<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Статья "Ссылочная целостность является важной для баз данных", написанная Майклом Блахой в 2005 г. специально для портала www.odbms.org, возможно, покажется очевидной, тривиальной и немного путанной специалистам в области реляционных баз данных. Но она и не адресована подобным специалистам. Основная идея состоит в том, что ссылочной целостностью нельзя пренебрегать и в области проектирования баз данных (не обязательно реляционных), и в области моделирования и разработки приложений (не обязательно приложений баз данных). Опыт автора показывает, что, несмотря на очевидную фундаментальность понятия ссылочной целостности, большая часть разработчиков программного обеспечения (в том числе, и приложений баз данных) совершенно не заботится о ссылочной целостности своих данных, что приводит к плачевным последствиям...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2392">Демистификация отладки в SQL Server 2005</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:09<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Нильс Берглунд<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Что нужно знать для отладки хранимых процедур T-SQL Для выполнения отладки хранимой процедуры на T-SQL в SQL Server 2000 используется Query Analyzer. Нужно просто щелкнуть правой кнопкой мыши на хранимой процедуре и выбрать Debug. В SQL Server 2005 среда SQL Server Management Studio заменила Query Analyzer. Логично предположить, что для того, чтобы выполнить отладку хранимой процедуры на T-SQL в SQL Server 2005, достаточно просто щелкнуть правой кнопкой мыши на хранимой процедуре и выбрать функцию отладки в Management Studio. К сожалению, не так все просто. 
Где искать функцию отладки - неизвестно....</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2391">Как получить максимум от CLR</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:08<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Винод Кумар<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Три способа получения прибыли от новых функций SQL Server 2005 В SQL Server 2005 привнесено много нового, но для прикладного разработчика интеграция с .NET - самая ценная возможность. SQL Server 2005 может задействовать определяемые пользователем функции (UDF), агрегирования (далее UDA) и типы (далее UDT), хранимые процедуры и триггеры, написанные на языках CLR, таких как Visual Basic .NET и C#. О выдающихся достижениях в области программирования баз данных можно написать книгу, а многие из функций, реализуемых в CLR, недоступны сегодня в T-SQL. В этой статье я расскажу о том, как CLR работает в SQL Server 2005 и как лучше подойти к написанию и использованию кода CLR в SQL Server 2005. Мы рассмотрим три примера, в которых показано, как с помощью CLR заменить расширенные хранимые процедуры, представлена работа с триггерами CLR и использование CLR UDA. Эти простые примеры помогут разобраться в том, как пользоваться преимуществами новых разработок в SQL Server 2005...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2390">Начинаем переход на SQL Server 2005</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:06<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Даршан Сингх<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Планирование обновления позволит избежать сюрпризов Процесс переноса корпоративных баз данных с SQL Server 2000 на SQL Server 2005 может преподнести множество неприятных сюрпризов. Многие из возможностей, представленных в новой версии продукта, коренным образом изменят процессы и процедуры при работе профессионалов - разработчиков приложений и администраторов - с сервером баз данных. Некоторые архитектурные особенности окажут долговременное воздействие на то, как происходит разработка приложений баз данных, и на требования, предъявляемые к администраторам баз данных. Но вне зависимости от ожидаемых изменений клиентам необходима гарантия, что после модернизации они смогут в полной мере воспользоваться новыми возможностями и всей мощью SQL Server 2005....</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2389">Что нового в SQL Server 2005 для DBA</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:04<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Ицик Бен-Ган<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Привнесенные в SQL Server 2005 усовершенствования и дополнительные функции окажут влияние на все аспекты использования продукта и позволят создавать абсолютно новые инфраструктуры и платформы. Эта статья посвящена новым функциям и средствам, адресованным администраторам баз данных. Приступая к написанию статьи, я составил список функций, которые претерпели значительные изменения, а также новых функций и без труда насчитал более десятка таких, о которых стоило бы рассказать. И тут я понял, что есть риск, как говорится, за деревьями не заметить леса. Поэтому я решил, что необходимо осветить два основных момента. Во-первых, те преимущества, которые заставляют задуматься о переходе на SQL Server 2005, и, во-вторых, какое влияние сразу окажут новые функции на задачи повседневного управления и сопровождения баз данных. Я не буду останавливаться на улучшениях в инструментальных средствах — это достаточно подробно описано в статье Кэлен Дилани и Рона Телмеджа «Средства управления SQL Server 2005»....</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2388">Report Builder — утилита для создания отчетов</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:03<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Мэтт Нанн<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Лето — горячая пора для группы маркетинга SQL Server. В июне ее членам удалось успешно преодолеть «минное поле» основной технической конференции Microsoft, Tech ED....</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2387">Знакомимся c BI</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:02<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Брайан Ларсон<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Инструментарий доступа к функциям бизнес-аналитики SQL Server 2005…...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2386">Системы сбора корпоративной отчетности на платформе Microsoft</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:01<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Алексей Берзин<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Из опыта интеграции разных продуктов Microsoft…...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2385">Организация индексов в SQL Server 2005</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:01<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Кэлен Дилани<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">DBCC SHOWCONTIG заменен на нового игрока…...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2384">Азы Reporting Services</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 14:00<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Рик Добсон<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Знакомимся со службой построения отчетов…...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2383">Автоматизация временного анализа в Analysis Services 2005</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:59<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Моша Пасумански, Роберт Зар<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Мастер Business Intelligence Wizard упрощает процедуру временного анализа…...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2382">Оптимизация производительности модели данных: настройка базы данных</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:58<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Мишель Пуле<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Лучший способ решения проблем с производительностью — просто не допустить их…...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2381">Изучение SQL Server 2005: с чего начать?</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:58<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Брайан Моран<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Вопрос. Я работаю администратором базы данных. Попытался было установить SQL Server 2005, но здесь все по-другому. Подскажите, с чего начинать?...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2380">Незаменимые и незаметные</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:57<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Майкл Оти<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Все уже знают, что в SQL Server 2005 реализовано множество новых возможностей: интеграция CLR, зеркалирование баз данных, служба интеграции SQL Server Integration Services (SSIS), а также обновленное средство генерации отчетов SQL Server…...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2379">Время праздновать!</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:56<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Мэтт Нанн<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Интеграция SQL Server 2005 с Visual Studio 2005 поднимет разработчикам настроение…...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2378">Версии SQL Server 2005</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:55<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Майкл Оти<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Компания Microsoft анонсировала четыре редакции и порядок ценообразования для SQL Server 2005...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2377">Инструменты управления в SQL Server 2005</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:55<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Кэлен Дилани, Рон Талмадж<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">С выходом SQL Server 2005 разработчики и администраторы баз данных (DBA) получат целый комплект новых средств управления. Версия SQL Server 2005 отличается не только набором добавленных в нее новых служб; при разработке этого продукта создание новых инструментов управления для DBA тоже было одной из важнейших задач. На смену SQL Server 2000 Enterprise Manager и Query Analyzer пришел новый программный инструмент — SQL Server Management Studio. Еще необходимо упомянуть о двух новых вспомогательных средствах: SQL Server Configuration Manager и Surface Area Configuration tool. Прежде чем приступать к рассмотрению возможностей SQL Server Management Studio, давайте познакомимся с каждым из этих инструментов...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2376">Версии Express и Workgroup в SQL Server 2005</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:54<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Джон Пол Кук, Тайлер Чесман<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">В состав SQL Server 2005 включены два новых продукта, каждый из которых является подмножеством SQL Server 2005 Standard Edition. Первый из них, SQL Server 2005 Express Edition, распространяется бесплатно и ориентирован на тех разработчиков, которым требуется встраивать в приложения базы данных. SQL Server 2005 Workgroup Edition представляет собой слабомасштабируемую, но недорогую версию SQL Server 2005 Standard, предназначенную для использования в небольших подразделениях и сфере малого бизнеса. В таблице приведены сравнительные данные по этим двум версиям. Давайте рассмотрим более подробно, что представляет собой каждая из них....</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2375">Поиск бесплатных ресурсов по SQL Server 2005</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:53<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Брайан Моран<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Мне нужно за короткое время познакомиться с SQL Server 2005, но нет возможности вложить средства в обучение. Существуют ли какие-либо бесплатные онлайн-ресурсы по этой тематике?...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2374">Разработчики выигрывают по-крупному</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:52<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Майкл Оти<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Команды разработчиков SQL Server и .NET Framework пять лет трудились не покладая рук и использовали всевозможные накопленные за эти годы ценные наработки, чтобы явить компьютерному миру нечто новое в области разработки в SQL Server 2005. Новшества сосредоточены в нескольких ключевых областях: разработка объектов баз данных с использованием языка Common Language Runtime (далее CLR), улучшение языка запросов T-SQL, подсистемы, расширяющие возможности разработки приложений, и разработка клиентских приложений...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2373">Visual Studio 2005 и SQL Server 2005: лучше вместе</a></h2>
                                    <div class="statistics">
                                        добавлено: 13 янв 06, 13:52<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Уильям Шелдон<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Повторная задержка выхода SQL Server 2005 и Visual Studio 2005 предоставила администраторам баз данных (DBA) и разработчикам дополнительное время для того, чтобы поработать с бета-версиями обоих продуктов, а также осмыслить то, как обновленные инструментальные средства могут изменить сам процесс создания приложений. Я очень рекомендую начать использовать новые возможности при проектировании и планировании приложений прямо сейчас, не дожидаясь выхода официальных версий. Это позволит получить приложения, которые сразу смогут использовать все преимущества, обеспечиваемые новыми продуктами...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2372">Service Broker с внешней активацией</a></h2>
                                    <div class="statistics">
                                        добавлено: 11 янв 06, 17:21<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор:  Ivan V.<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Кто смотрел SSB, тот конечно обратил внимание, что там часто упоминается возможность внешней активации, но примеров я не нашел, чтоб от и до. Заодно можно посмотреть как работать с WMI. Скрипты стандартные, программа - консоль....</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2371">Управление изменениями с помощью регламентации</a></h2>
                                    <div class="statistics">
                                        добавлено: 10 янв 06, 12:39<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Сергей Рубцов<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Если процессный подход еще не стал нормой корпоративной культуры, то трансформация предприятий часто приводит к тому, что они повторно переживают состояния, в которых уже были. Польза от такой трансформации подобна пользе от нагрева проводника в электрической цепи. Выход из ситуации — формирование корпоративной культуры, базирующейся на процессном подходе к управлению изменениями...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2370">Центры интеграции</a></h2>
                                    <div class="statistics">
                                        добавлено: 10 янв 06, 12:38<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Дов Ривкин<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Проблема интеграции данных, используемых разными ИТ-системами, весьма актуальна. Однако, несмотря на огромные затраты на интеграцию, лишь треть проектов заканчиваются успешно. Методология создания Центра интеграционной компетенции позволяет эффективно выполнять интеграционные проекты с учетом уже имеющегося опыта, что обеспечивает экономию значительных ресурсов...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2369">Оперативный бизнес-анализ</a></h2>
                                    <div class="statistics">
                                        добавлено: 10 янв 06, 12:36<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Александр Александров<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">В корпоративных и специализированных хранилищах накоплены многие тысячи терабайтов аналитических данных. Их анализ помогает компаниям развивать бизнес и рационально расходовать средства. Сегодня наряду с многоаспектным анализом ретроспективных данных и решением задач прогнозирования все активнее применяются средства оперативного бизнес-анализа...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2368">Ядра и потоки современных микропроцессоров</a></h2>
                                    <div class="statistics">
                                        добавлено: 10 янв 06, 12:18<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Леонид Черняк<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Ресурс экстенсивного роста производительности за счет увеличения сложности и тактовой частоты процессоров себя исчерпал. Для того чтобы по-прежнему шагать в ногу с законом Мура, требуются новые архитектурные решения, основанные на росте числа процессорных ядер на кристалле и количества обрабатываемых ими потоков...</p>
								</div>
								<br clear="all" />
							</div>
							
							<div class="article short">
								<hr/>
								<div class="art_desc">
									<h2><a href="article.aspx@aid=2367">Безопасность СУБД</a></h2>
                                    <div class="statistics">
                                        добавлено: 29 дек 05, 12:09<br />
                                        переходов: 0...
                                    </div>
                                    <p class="info">
                                        автор: Михаил Савельев<br/>
                                        язык:  русский...
                                    </p>
									<p style="margin:0">Обеспечение безопасности корпоративных баз данных - сегодня одна из самых актуальных тем. И это понятно. Однако парадокс заключается в том, что уделяя огромное внимание защите баз данных снаружи, многие забывают защищать их изнутри...</p>
								</div>
								<br clear="all" />
							</div>
							
                            <div class="order-links">
								<p style="float:left">страницы: [1] <A HREF="articles.aspx@g=&s=0&p=2">2</A> <A HREF="articles.aspx@g=&s=0&p=3">3</A> <A HREF="articles.aspx@g=&s=0&p=4">4</A> <A HREF="articles.aspx@g=&s=0&p=5">5</A> <A HREF="articles.aspx@g=&s=0&p=6">6</A> <A HREF="articles.aspx@g=&s=0&p=7">7</A> <A HREF="articles.aspx@g=&s=0&p=8">8</A> <A HREF="articles.aspx@g=&s=0&p=9">9</A> <A HREF="articles.aspx@g=&s=0&p=10">10</A> <A HREF="articles.aspx@g=&s=0&p=11">11</A> <A HREF="articles.aspx@g=&s=0&p=12">12</A> <A HREF="articles.aspx@g=&s=0&p=13">13</A> <A HREF="articles.aspx@g=&s=0&p=14">14</A> <A HREF="articles.aspx@g=&s=0&p=15">15</A>  ..<A HREF="articles.aspx@g=&s=0&p=76">76</A> </p>
								<p style="float:right">показываются статьи с 1 по  30 из 2262</p>
								<br clear="all" />
							</div>
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