<%@page import="beans.LibroBean"%>
<%@page import="java.util.Vector"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Vector<LibroBean> libros = 
					(Vector)request.getAttribute("libros");
%>
<h2><font color="blue" face="Comic Sans MS,arial,verdana">LISTADO DE LIBROS</font></h2>
<table>
	<thead>
		<tr>
			<th><font face="Comic Sans MS,arial,verdana">Titulo del libro</font></th>
			<th><font face="Comic Sans MS,arial,verdana">Precio</font></th>
			<th><font face="Comic Sans MS,arial,verdana">Opciones</font></th>
		</tr>
	</thead>
	<tbody>
		<% for(int i=0; i<libros.size(); i++){ %>
		<tr>
			<td><%=libros.get(i).getTitulo() %></td>
			<td><%=libros.get(i).getPrecio() %></td>
			<td>
			<a href="Libro?accion=eliminar&id=<%=libros.get(i).getId() %>"><font face="Comic Sans MS,arial,verdana">
			Eliminar</font>
			</a>
			
			<a href="Libro?accion=editar&id=<%=libros.get(i).getId() %>"><font face="Comic Sans MS,arial,verdana">
			Editar</font>
			</a>
			</td>
		</tr>
		<% } %>
	</tbody>
</table>
</body>
</html>