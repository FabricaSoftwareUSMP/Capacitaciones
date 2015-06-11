<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%
	String mensaje = "";
	if(request.getAttribute("mensaje") != null){
		 mensaje = (String)request.getAttribute("mensaje");
	}
	
%>
<%=mensaje %>
<form id="" name="" method="post" action="<%=request.getContextPath() %>/Administrador">
  <table width="200" border="1">
    <tr>
      <td>&nbsp;</td>
     <td><img src="libreria.jpg"></img></td>
    </tr>
    <tr>
      <td><font face="Comic Sans MS,arial,verdana">Usuario:</font></td>
      <td><input type="text" name="txt_usuario" /></td>
    </tr>
    <tr>
      <td><font face="Comic Sans MS,arial,verdana">Clave:</font></td>
      <td><input type="password" name="txt_clave" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Ingresar" id="submit"/></td>
    </tr>
  </table>
</form>

</body>
</html>
