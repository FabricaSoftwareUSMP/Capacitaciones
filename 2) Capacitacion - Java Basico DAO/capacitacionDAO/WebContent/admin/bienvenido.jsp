<%@page import="beans.AdministradorBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	if(session.getAttribute("admin") == null){
		response.sendRedirect("login.jsp");
	}else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	AdministradorBean admin = (AdministradorBean)session.getAttribute("admin");
%>



<h2><font color="gray" face="Comic Sans MS,arial,verdana">BIENVENIDO USUARIO : <%=admin.getNombre() %></font></h2>

<ul>
	
	<li><a href="<%=request.getContextPath() %>/Libro?accion=agregar"><font face="Comic Sans MS,arial,verdana">Agregar libros</font></a></li>
	<li><a href="<%=request.getContextPath() %>/Libro?accion=listar"><font face="Comic Sans MS,arial,verdana">Listar libros</font></a></li>
	<li><a href="<%=request.getContextPath() %>/Administrador"><font face="Comic Sans MS,arial,verdana">Cerrar sesión</font></a></li>

</ul>

</body>
</html>
<%
	}
%>