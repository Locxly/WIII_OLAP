<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Hello World</title>
</head>
<body>
Hallo, dies ist ein erster Entwurf
<table>
  <tr>
    <td>
  <!-- Form fuer Datum -->
<form method="post" action="select.jsp">
<select name="Datum">
<!-- Options dann via get beziehen -->
<option value="1 Beispiel Option">Alto</option>
</select>
<br>
<input type="Submit" value="Submit">
</form>
<%
String std=request.getParameter("Datum");
if(std!=null){
    out.println("You have selected: "+std);
}
%>
 </td>
 <td>
<!-- Form fuer Kunden -->
<form method="post" action="select.jsp">
<select name="Datum">
<!-- Options dann via get beziehen -->
<option value="1 Beispiel Option">Alto</option>
</select>
<br>
<input type="Submit" value="Submit">
</form>
<%
String stk=request.getParameter("Kunden");
if(stk!=null){
    out.println("You have selected: "+stk);
}
%>
 </td>
 <td>
<!-- Form fuer Filiale -->
<form method="post" action="select.jsp">
<select name="Filiale">
<!-- Options dann via get beziehen -->
<option value="1 Beispiel Option">Alto</option>
</select>
<br>
<input type="Submit" value="Submit">
</form>
<%
String stf=request.getParameter("Filiale");
if(stf!=null){
    out.println("You have selected: "+stf);
}
%>
 </td>
 <td>
<!-- Form fuer Artikel -->
<form method="post" action="select.jsp">
<select name="Artikel">
<!-- Options dann via get beziehen -->
<option value="1 Beispiel Option">Alto</option>
</select>
<br>
<input type="Submit" value="Submit">
</form>
<%
String sta=request.getParameter("Artikel");
if(sta!=null){
    out.println("You have selected: "+sta);
}
%>
 </td>
  <td>
<!-- Form fuer Verkaeufer -->
<form method="post" action="select.jsp">
<select name="Verkaeufer">
<!-- Options dann via get beziehen -->
<option value="1 Beispiel Option">Alto</option>
</select>
<br>
<input type="Submit" value="Submit">
</form>
<%
String stv=request.getParameter("Verkaeufer");
if(stv!=null){
    out.println("You have selected: "+stv);
}
%>
 </td>
  
 </tr>
</table>
</body>
</html>