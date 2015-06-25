<%@page import="util.MD5"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	//MD5 claseMD5 = new MD5();
	//out.print( claseMD5.crypt("yayi") );
%>

<form action="<%=request.getContextPath()%>/Servlet_Alumno" method="post">
<h1>Login</h1>
Usuario:<input type="text" name="usuariologin" /> <br/>
Contraseña:<input type="password" name="clavelogin"/> <br/>

<a href="<%= request.getContextPath()%>/recuperarContraseña.jsp">Recuperar Contraseña</a>
<input type="hidden" value="registrar" id="accion" name="accion">
<input type="submit" value="Entrar" />
</form>
</body>
</html>