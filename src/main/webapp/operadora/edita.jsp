<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="mm" tagdir="/WEB-INF/tags/messages"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de contato</title>
<link
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/memoriam.css"
	rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div id="navbar">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">${sessionScope.usuario.nome} <span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#" id="link-submit">Sair</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">${sessionScope.usuario.perfil}</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h2>
				Memori<i class="glyphicon glyphicon-phone"></i>m
			</h2>
<mm:messages value="${msgs}" erroStyle="color:red"
				infoStyle="color:blue" />
			<h3>Dados da Operadora</h3>
		

			<form action="${pageContext.request.contextPath}/controller.do"
				method="post" class="form-horizontal">
				<input type="hidden" name="op" value="edtop"> <input
					type="hidden" name="id" value="${operadora.id}"> <input
					id="nome" value="${operadora.nome}" name="nome" type="text"
					class="form-control" /> <input id="prefixo"
					value="${operadora.prefixo}" name="prefixo" type="text"
					class="form-control" /> <input type="submit"
					class="form-control btn btn-primary" value="Salvar">
			</form>
			<a class="form-control btn btn-success"
				href="${pageContext.request.contextPath}">Voltar</a>
		</div>
	</div>
	<c:set var="endofconversation" value="true" scope="request" />
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	var form = document.getElementById("logout-form");
	document.getElementById("link-submit").addEventListener("click",
			function() {
				form.submit();
			});
</script>
</html>