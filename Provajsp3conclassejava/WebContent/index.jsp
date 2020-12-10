<!-- In questo jsp si utilizza una classe Java esterna. Per fare questo bisogna
prima fare l'import dal package com.prova.jsp.*; dopodichè la classe provaclassejava
è accessibile ed utilizzabile -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ page import="com.prova.jsp.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jsp</title>
</head>
<body>
	<div style="text-align: center">
		<p>
			<%
			/*si definiscono due stringhe di cui una in base all'ingresso utente in index.html
			per l'output si usa la classica classe out che corrisponde ad echo per PHP*/
			String prova = "ciao";
			String ingresso = request.getParameter("nome");
			out.print(prova + " " + ingresso);
			provaclassejava temp = new provaclassejava();
			out.print("<br>");
			out.print(temp.stampastringa());
			%>
		</p>
	</div>
</body>
</html>