<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="ru" xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru">
<head>
  <title>Обратная связь с администрацией SQL.ru</title>
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
  <link rel="stylesheet" type="text/css" href="css/screen.css@v=1" media="screen" />

    <!--[if lte IE 6]>
            <link rel="stylesheet" type="text/css" href="css/ie.css" media="screen" />
            <![endif]-->
  <!--afmeta-->
  <script type="text/javascript">jQuery = false;</script>
  
<link rel="stylesheet" type="text/css" href="css/blogcreate.css" media="screen" />
<script src="../https@ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
    if (typeof jQuery == 'undefined') {
        document.write(unescape("%3Cscript src='js/jquery-1.4.4.min.js' type='text/javascript'%3E%3C/script%3E"));
    }
</script>

  <script type="text/javascript" src="js/utils.js"></script>
  <meta property="og:image" content="https://www.sql.ru/images/logofb.jpg"/>
	                                
 <!-- Google Analytics -->
 <script>
 window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
 ga('create', 'UA-265508-1', 'sql.ru');
 ga('send', 'pageview');
 </script>
 <script async src='../https@www.google-analytics.com/analytics.js'></script>
 <!-- End Google Analytics -->
</head>

<body>
  <div id="page-container">
    <div id="header">
      <div class="header-wrap">
        <div id="title">
          <a href="default.htm" title="На главную страницу">SQL.ru</a>
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
              <a href="forum/register.aspx">Регистрация</a> <a href="forum/remindpass.aspx">Забыли пароль?</a>
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
          <li class="selected"><a href="default.htm">Главная</a></li>

          <li class=""><a href="articles">Статьи</a></li>

          <li class=""><a href="forum">Форум</a></li>

          <li class=""><a href="blogs">Блоги</a></li>

          <li class=""><a href="books">Книги</a></li>

          <li class=""><a href="subscribe">Рассылка</a></li>

          <li class=""><a href="forum/job">Работа</a></li>

          <li class=""><a href="search">Поиск</a></li>

          <li class=""><a href="faq">FAQ</a></li>
        </ul><div id="top-advert"><!--banner.img--></div>
      </div>
    </div>

            <div id="middle" class="column-1">
				<div id="middle-wrap">
					<div id="content-section">
						<div id="content-wrapper" class="blogcreate">
                            <!--begin posts-->
                            <h1>Обратная связь</h1>
							<div class="article full">
                                <form name="msgform" method="post" action="/feedback.aspx" id="msgform">
                                <input type="hidden" name="hash" value="{post.hash}" />
                                    <div id="form_layout">
                                        <label for="name">Ваше имя</label>
                                        <div class="values">
                                            <input class="text" id="name" name="name" value="" />
                                        </div>
                                        <label for="company">Компания</label>
                                        <div class="values">
                                            <input class="text" id="company" name="company" value="" />
                                        </div>
                                        <label for="email">E-mail</label>
                                        <div class="values">
                                            <input class="text" id="email" name="email" value="" />
                                        </div>
                                        <label for="phone">Телефон</label>
                                        <div class="values">
                                            <input class="text" id="phone" name="phone" value="" />
                                        </div>
                                        <label for="cause">Тип вопроса</label>
                                        <div class="values" >
                                            <select id="cause" name="cause" style="font-size:16px" onchange="causeChange();">
                                                <option value="1">проблема с регистрацией</option>
                                                <option value="2">проблема с использованием сайта</option>
                                                <option value="3">размещение рекламы</option>
                                                <option value="4">партнерские отношения</option>
                                                <option value="5">содержимое сайта</option>
                                                <option value="6">другое</option>
                                            </select>
                                        </div>
                                        <div class="values" id="urlDiv" style="display: none">
                                            <label for="urlcontent" >Ссылка на содержимое</label>
                                            <input class="text" id="urlcontent" name="urlcontent" value="" />
                                        </div>
                                        <label for="message">Сообщение</label>
                                        <div class="values">
                                            <textarea id="message" name="message"></textarea>
                                        </div>
                                        <div id="submits">
                                            <input class="submit" type="button" tabindex="4" id="postBtn" name="post" value="Отослать" onclick="doPost();"/>
                                        </div>
                                    </div>
                                </form>
                                <div id="previewHolder" style="margin-top:10px; background-color:#DDD; display:none; padding:10px"></div>
                            </div>
							<!--end posts-->
						</div>
					</div>
					<div id="bottom-fade"><div class="wrap"></div></div>
				</div>
			</div>

<br />
<script type="text/javascript">
    function showError(msg) {
        $("#previewHolder").html(msg);
        $("#previewHolder").css("background-color", "#ffdfdf");
        $("#previewHolder").show("slow");
    }

    function causeChange() {

        if ($("#cause option:selected").val() == '5') {
            $("#urlDiv").show();
        } else $("#urlDiv").hide();
    }
    
    function doPost() {
        var errors = "";
        $("#previewHolder").hide("");
        if ($("#name").val() == "") {
            errors += "<li>Укажите свое имя.</li>";
        }
        if ($("#email").val() == "") {
            errors += "<li>Укажите e-mail.</li>";
        }
        if ($("#message").val() == "") {
            errors += "<li>Заполните поле Сообщение.</li>";
        }

        if (errors != "") {
            showError("<ul>" + errors + "</ul>");
        }
        else {
            $("#postBtn").attr("disabled", true);
            $.ajax({ type: "POST",
                url: "feedback.aspx",
                cache: false,
                data: "action=send&hash=" + $("#hash").val() + "&name=" + escape($("#name").val()) + "&company=" + escape($("#company").val()) + "&email=" + $("#email").val() + "&phone=" + escape($("#phone").val()) + "&cause=" + escape($("#cause option:selected").text()) + "&msg=" + escape($("#message").val()) + "&urlcontent=" + escape($("#urlcontent").val()),
                success: function (data) {
                    if (data != '-1') {
                        $("#previewHolder").html(data);
                        $("#previewHolder").css("background-color", "#dfffdf");
                        $("#previewHolder").show("slow");
                    } else {
                        $("#postBtn").attr("disabled", false);
                        showError("Произошла непредвиденная ошибка. Попробуйте повторить ваш запрос позже.");
                    }
                },
                error: function () {
                    $("#postBtn").attr("disabled", false);
                    showError("Произошла непредвиденная ошибка. Попробуйте повторить ваш запрос позже.");
                }
            });
        }

    }
</script>			<div id="footer" style="padding-bottom:20px">
				<div  style="float:left">2000-2020 © Alex Sibilev, SQL.ru<br/>
					<a style="font: 10px Verdana;color:#88C" href="feedback.aspx">Свяжитесь с нами</a></div>
<div style="float:right">Рекомендуем <a href="../https@www.datahouse.ru/price/kurskaya_colocation">colocation</a> в DataHouse.RU.</div>
				<div class="counters">
                
				</div>
			</div>
		</div>
		<script>initScripts()</script>
<!-- Yandex.Metrika counter -->
<!--ipt type="text/javascript" > (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)}; m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym"); ym(9237463, "init", { clickmap:true, trackLinks:true, accurateTrackBounce:true });</scri-->
<noscript><div><img src="../https@mc.yandex.ru/watch/9237463" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

	</body>
</html>