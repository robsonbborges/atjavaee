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
			<div class="container">	
			
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
						<label>Informar o Cliente:</label>
						<select class="form-control" name="cliente">
						<c:forEach var="" items="${clientes}">
						<option value="${c.id}">${c.nome}</option>
						</c:forEach>
						</select>
					</div>
					
					<button type="submit">Cadastrar</button>
					<div class="painel-body">
						<div class="btn-group">
							<form action="/">
								<button type="submit" class="btn btn-link"> Home </button>
							</form>
						</div>
					</div>
				</form>
			
			<c:if test="${not empty usuarios}">	
			<h2>Listagem de Pedidos</h2>
			<table class="table">
			<thead>
					<tr>
			        <th>descricao</th>
			        <th></th>
				    </tr>
			    </thead>
			    <tbody>
			      <c:forEach var="p" items="${lista}">
			      <tr>
			        <td>${p.descricao}</td>
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