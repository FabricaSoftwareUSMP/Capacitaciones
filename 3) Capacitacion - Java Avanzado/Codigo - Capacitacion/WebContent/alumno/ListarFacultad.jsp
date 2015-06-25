<%@page import="beans.FacultadBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% List<FacultadBean> lista=(List<FacultadBean> )request.getAttribute("facultad"); %>


     <h2>Listado de Facultades</h2>
     <form action="<%=application.getContextPath() %>/Servlet_Facultad" method="post" >
 	 <input type="hidden" id="accion" name="accion" value="listar" >  
     
	<table >
	<thead>
		<tr>
			<th>Codigo</th>
			<th>Nombre</th>
			
		</tr>
	</thead>
	<tbody>
	<%for(FacultadBean obj:lista){ %>
		<tr>
			<td><%=obj.getIdfacultad() %></td>
			<td><%=obj.getNombre() %></td>		
		</tr>
	<%} %>
	</tbody>	
	</table>
</form>	   
</body>
</html>