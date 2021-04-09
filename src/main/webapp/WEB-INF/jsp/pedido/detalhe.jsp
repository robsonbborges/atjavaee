<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AT Robson Baptista</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
	<div class="container">	
		<h1>Detalhes</</h1>
	</div>	
	<div class="painel-body">
		<div class="btn-group">
			<form action="/home">
				<button type="submit" class="btn btn-link"> Home </button>
			</form>
		</div>
	
	
	<form action="/pedido/incluir" method="post">
		<div class="form-group">
			<label>Informar o usuario:</label>
			<select class="form-control" name="usuario.id">
				<c:forEach var="" items="${usuarios}">
					<option value="${u.id}">${u.nome}</option>
				</c:forEach>
			</select>
		</div>
			
		<div class="form-group">
			<label>Informar a descricao:</label>
			<input type="text" name="descricao" class="form-control">
		</div>
		
		<div class="form-group">
			<label>Informar tamanho:</label>
			<input type="number" class="form-control" name="tamanho" required>
		</div>
		
		<div class="form-group">
			<label>Informar a cor:</label>
			<input type="text" class="form-control" name="cor" required>
		</div>
					
		<button type="submit">Cadastrar</button>
		
		<div class="painel-body">
			<div class="btn-group">
				<form action="/home">
				</form>
			</div>
			<button type="submit" class="btn btn-link"> Home </button>
		</div>
		</form>
		
		<c:if test="${not empty mensagem}">
			<div class="alert alert-info">
	    		<strong>Atencao!</strong> ${mensagem}
	  		</div>
	  	</c:if>	
			
		<c:if test="${not empty pedido}">	
			<h2>Listagem de Pedidos</h2>
			<table class="table">
				<thead>
					<tr>
						<th>Descricao</th>
					 	<th>Usuario</th>
					    <th>Tamanho</th>
					    <th>Cor</th>
					    <th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="p" items="${lista}">
					   	<tr>
					        <td>${p.descricao}</td>
					        <td>${p.cliente.nome}</td>
					     	<td>${p.tamanho}</td>
					        <td>${p.cor}</td>
					        <td><a href="/pedido/${p.id}/excluir">excluir</a></td>
					    </tr>
				     </c:forEach>
				</tbody>
			</table>
			</c:if>	
			<c:if test="${empty lista}">
				<h2>Nenhum pedido cadastrado!</h2>
			</c:if>		
</body>
</html>