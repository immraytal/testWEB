<%@ page import="app.model.Model" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
	<%@include file="../assets/css/style.css"%>
</style>
<!DOCTYPE html>
<html lang = "ru">
<head>
	<meta charset="utf-8">
	<title>DokaItems</title>
	<meta name="description" content="Интернет-магазин скинов DotA 2">
	<meta name="keywords" content="html">
	<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
</head>
<body>

	<div class="main">
		<div class="header">				
			<div class="logo">

				<div class="auth">
					
					<form method="post" action="" id="login">

						<input type="text" name="login_field" placeholder="Логин" />
						<input type="password" name="password_field" placeholder="Пароль" /> 
						<input type="submit" class="btn" value="Вход">
						<div class="lables_passreg_text">
							
							<span><a href="#">Забыли пароль?</a></span> | <span><a href="#">Регистрация</a></span>
						</div>
					</form>

				</div>


				<div class="logo_text">
					<h1><a href="/">Doka Items</a></h1>	
					<h2>Лучший магазин скинов Dota2</h2>
				</div>

				


			</div>

			


			<div class="menubar">				
				<ul class="menu">					
					<li class="selected"><a href="#">Главная</a></li>
					<li><a href="/list">Каталог</a></li>
					<li><a href="/add">Новости</a></li>
					<li><a href="/some">Помощь</a></li>
				</ul>
			</div>
		</div>

		<div class="site_content">
			
			<div class="site_bar_container">
				
				<div class="sitebar">
					
					<h2>Поиск</h2>
					<form method="post" action="#" id="search_from">
						
						<input type="search" name="search_field" placeholder="Ваш запрос" />
						<input type="submit" class="btn" value="Найти" />

					</form>

				</div>

				

			</div>

		</div>

	</div>

<div>
	${msg}
	<%
		List<String> names = (List<String>) request.getAttribute("users");


		if (names != null && !names.isEmpty()) {
			out.println("<ui>");
			for (String s : names) {
				out.println("<li>" + s + "</li>");
			}
			out.println("</ui>");
		} else out.println("<p>There are no users yet!</p>");
	%>
</div>
	
</body>
</html>			