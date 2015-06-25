<%@page import="java.util.List"%>
<%@page import="beans.AlumnoBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% List<AlumnoBean> lista=(List<AlumnoBean>)request.getAttribute("alumnos"); %>


     <h2>Listado de Alumnos</h2>
     <form action="<%=application.getContextPath() %>/Servlet_Alumno" method="post" >
 	
 	 <input type="text" id="buscarAlumno" name="buscarAlumno"  >  
     <input type="hidden" id="accion" name="accion" value="buscar" >  
     <input type="submit" id="Buscar" name="Buscar" value="Buscar">
     
     
	<table >
	<thead>
		<tr>
			<th>Codigo</th>
			<th>Nombre</th>
			<th>ApellidoPaterno</th>
			<th>Sexo</th>
			<th>Fecha Nacimiento</th>
			<th>Facultad</th>
			<th>Usuario</th>
		
			
		</tr>
	</thead>
	<tbody>
	<%for(AlumnoBean obj:lista){ %>
		<tr>
			<td><%=obj.getId() %></td>
			<td><%=obj.getNombre() %></td>
			<td><%=obj.getApellidopat() %></td>
			<td><%=obj.getSexo() %></td>
			<td><%=obj.getFecNac()%></td>
			<td><%=obj.getIdfacultad() %></td>
			<td><%=obj.getUsuario() %></td>
			
		</tr>
	<%} %>
	</tbody>	
	</table>
	
	<a href="<%=request.getContextPath()%>/alumno/Bienvenidos.jsp">Volver</a>
</form>	   
</body>
</html>