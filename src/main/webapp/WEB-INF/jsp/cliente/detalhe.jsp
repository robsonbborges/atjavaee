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
			
				<form action="/cliente/incluir" method="post">
				
					<div class="form-group">
						<label>Informa seu nome:</label>
						<input type="text" name="nome" required>
					</div>
					<div class="painel-body">
						<div class="btn-group">
							<form action="/">
								<button type="submit" class="btn btn-link"> Home </button>
							</form>
						</div>
					</div>
				</form>
			
			<c:if test="${not empty usuarios}">	
			<h2>Listagem de Clientes</h2>
			<table class="table">
			<thead>
					<tr>
			        <th>Nome</th>
			        <th></th>
				    </tr>
			    </thead>
			    <tbody>
			      <c:forEach var="s" items="${lista}">
			      <tr>
			        <td>${s.nome}</td>
			        <td><a href="/cliente/${s.id}/excluir">excluir</a></td>
			
			      </tr>
			      </c:forEach>
			    </tbody>
			  </table>
			</c:if>	
			
			<c:if test="${empty lista}">
				<h2>Nenhum cliente cadastrado!</h2>
			</c:if>
					
</body>
</html>