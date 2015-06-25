<%@page import="beans.FacultadBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%List<FacultadBean> lista=(List<FacultadBean>)request.getAttribute("facultad"); %>

<form action="<%=request.getContextPath()%>/Servlet_Alumno" method="post">
Nombre:<input type="text" name="nombre" /><br/>
Apellido: <input type="text" name="apellido" /><br/>
Sexo: <<input type="text" name="sexo" /><br/>
Facultad:<select name="facultad">
		<option value="0">Seleccionar</option>
		<%for (FacultadBean obj:lista){ %>
		<option value="<%= obj.getIdfacultad()%>"><%=obj.getNombre() %></option>
		<%} %>
		</select> <br/>
Fecha Nacimiento:<input type="date" name="fecha"><br/>
Usuario:<input type="text" name="usuario"><br/>
Clave:<input type="password" name="clave"><br/>
<input type="hidden" value="registrar" id="accion" name="accion">
<input type="submit" value="Registrar" />
</form>
</body>
</html>