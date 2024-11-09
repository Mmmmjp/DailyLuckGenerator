<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*,java.text.SimpleDateFormat"%>
    
<%
//Generate 5 outcoms for the daily luck 
String[] stringArrays = {"Excellent Luck","Pretty Good ","Average Luck"," Mild Luck","Low Luck"};

int index = (int)(Math.random()*5);

String luck = stringArrays[index];

//Getting date 
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

String today = sdf.format(date);
%>
<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8">
  <title>Daily Luck Generator!!☆★</title>
 </head>

 <body>
	<h1>Welcome to Daily Luck Generator page.</h1>
	<p>Your luck for <u><%=today%></u>: <strong><%= luck %></strong></p>
	
 </body>
</html>