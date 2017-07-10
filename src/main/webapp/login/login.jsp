<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="mm" tagdir="/WEB-INF/tags/messages"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Memoriam</title>
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/login.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<form class="form-signin"
			action="${pageContext.request.contextPath}/controller.do?op=login"
			method="POST">
			<h2 class="form-signin-heading">
				Memori<i class="glyphicon glyphicon-phone"></i>m
			</h2>
			<mm:messages value="${msgs}" erroStyle="color:red"
				infoStyle="color:blue" />
			<label for="inputEmail" class="sr-only">Usuário</label> <input
				type="email" name="login" id="login" value="${cookie['loginCookie'].value}" class="form-control"
				placeholder="Email" required autofocus> <label
				for="inputPassword" class="sr-only">Senha</label> <input
				type="password" id="senha" name="senha" class="form-control"
				placeholder="Senha" required>
			<div class="checkbox">
				<label> <input type="checkbox" value="sim" id="lembrar"
					name="lembrar"> Lembrar-me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">
				Entrar</button>
		</form>
	</div>
	<!-- /container -->
</body>
</html>
