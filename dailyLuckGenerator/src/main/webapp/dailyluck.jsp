<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*,java.text.SimpleDateFormat"%>
    
<%
//Generate 5 outcoms for the daily luck 
String[] luckArrays = {"Excellent Luck","Pretty Good","Average Luck","Mild Luck","Low Luck"};

int index = (int)(Math.random()*5);

String luck = luckArrays[index];


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
	
<% 
switch (luck) {
	case "Excellent Luck":
%>
	<p>Today is your lucky day! Success is guaranteed, so take on any challenge with confidence!</p>
<% 
		break;
	case "Pretty Good":
%>
	<p>Things are looking good today! You might not win big, but you'll certainly make progress and feel positive vibes.</p>
<% 
		break;
	case "Average Luck":
%>
	<p>It’s an average day. Things will go smoothly, but don't expect any major surprises, either good or bad.</p>
<% 
		break;
	case "Mild Luck":
%>
	<p>Today's luck is mild. Stay calm, take it easy, and things will work out as expected, without any hiccups.</p>
<% 
		break;
	case "Low Luck":
%>
	<p>Not the best day to take risks. Play it safe, and be cautious about the decisions you make today.</p>
<% 
		break;
	default:
%>
	<p>Something went wrong... Please try again later.</p>
<% 
		break;
} 
%>
	
 </body>
</html>