<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AT</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
	<div>
		<div class="container">	
			<h1>Detalhes</</h1>
		</div>
		<div class="painel-body">
			<div class="btn-group">
				<form action="/home">
					<button type="submit" class="btn btn-link"> Home </button>
				</form>
			</div>
		</div>
		
		<form action="/cliente/incluir" method="post">
		
			<div class="form-group">
				<label>Informe seu nome :</label>
				<input type="text" name="nome" required>
			</div>
				
			<div class="form-group">
				<label>Informe seu email :</label>
				<input type="email" name="email" required>
			</div>	
			
			<div class="form-group">
				<label>Informe seu Telefone :</label>
				<input type="text" name="telefone" required>
			</div>
			
			<div class="form-group">
				<label>Informe seu CEP :</label>
				<input type="text" name="cep" required>
			</div>
			
			<button type="submit" class="btn btn-link"> Home </button>
				
			<c:if test="${not empty mensagem}">
				<div class="alert alert-info">
	    			<strong>Atencao!</strong> ${mensagem}
	  			</div>
	  		</c:if>	
		</form>
				
		<c:if test="${not empty usuarios}">	
		<h2>Listagem de Clientes</h2>
		<table class="table">
			<thead>
					<tr>
						<th>Nome</th>
						<th>E-mail</th>
						</tr>
					</thead>
			<tbody>
				<c:forEach var="s" items="${lista}">
					<tr>
						<td>${s.nome}</td>
						<td>${s.email}</td>
						<td><a href="/cliente/${s.id}/excluir">excluir</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
				</c:if>	
				<c:if test="${empty lista}">
					<h2>Nenhum cliente cadastrado!</h2>
				</c:if>
	</div>
</body>
</html>