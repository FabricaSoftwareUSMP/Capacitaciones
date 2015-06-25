<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<H1>BIENVENIDO AL MODULO DEL ALUMNO</H1>
<a href="<%=request.getContextPath()%>/Servlet_Alumno?accion=registrar">Registrar</a> <br/>
<a href="<%=request.getContextPath()%>/Servlet_Alumno?accion=listar">Listar</a> <br/>
<a href="<%=request.getContextPath()%>/login.jsp">Cerrar Sesion</a>
</body>
</html>