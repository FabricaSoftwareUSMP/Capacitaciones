<%@page import="beans.FacultadBean"%>
<%@page import="beans.AlumnoBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="admin/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="admin/css/simple-sidebar.css" rel="stylesheet">
</head>
<body>
<%
AlumnoBean alumno=(AlumnoBean)request.getAttribute("alumnos"); 
List<FacultadBean> facultad=(List<FacultadBean>)request.getAttribute("facultad");
%>


<form action="<%=request.getContextPath()%>/Servlet_Alumno" method="post">
						
Codigo:<input type="text" name="id" 	   value="<%=alumno.getId() %>" readonly/><br/>	
Nombres:<input type="text" name="nombre" 		value="<%=alumno.getNombre() %>" readonly/><br/>
ApellidoPaterno:<input type="text" name="apellido" value="<%=alumno.getApellidopat() %>"readonly/><br/>	
Sexo:<input type="text" name="sexo" value="<%=alumno.getSexo() %>" readonly/><br/>
Fecha_Nacimiento:<input type="text" name="fecha" value="<%=alumno.getFecNac() %>"readonly/><br/>
Facultad:<select name="facultad">
<%for(FacultadBean obj:facultad){ %>
<option value="<%=obj.getIdfacultad()%>"> <%=obj.getNombre() %></option>
<%} %>
</select><br/>	
Usuario:<input type="text" name="usuario" value="<%=alumno.getUsuario() %>"readonly/><br/>
Clave:<input type="password" name="clave" value="<%=alumno.getClave() %>"readonly/><br/>					
<input type="hidden" name="accion" id="accion" >
<input type="submit" value="Regresar" />
</form>
              
</body>
</html>