<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="servletController" method="post">
		<label for="login">Login:</label>
		<input type="text" name="login" id="login" /> <br />
		<label for="senha">Senha</label>		
		<input type="text" name="senha" id="senha" /><br />
		<button type="submit">LOGAR</button>
	</form>

	<c:if test="${not empty msg}">
		<h2> Usuário ou Senha não cadastrado</h2>
	</c:if>
</body>
</html>