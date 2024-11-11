<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Daily Luck Generator App - form</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/./CSS/style1.css">

<body>

    <h1>Welcome to the Daily Luck Generator!★☆彡</h1>

    <p>Hello there! 🤗<br>
   Let's find out what the universe has in store for you today?</p>

    <p>Would you like to check your luck today? 🌟</p>
    <p>Tell us a little about yourself, and we'll generate your daily fortune!</p>

    <form action="FormServlet" method="post">
        <div>
            <label for="name">🟩Your name:</label>
            <input type="text" name="name" placeholder="Your first name...">
        </div>

        <div>
            <label for="gender">🟩Coose your gender:</label>
            <select name="gender" id="gender">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">other</option>
                <option value="none">Prefer not to say</option>
            </select>
        </div>

        <div>
            <label for="bloodType">🟩Your blood type:</label>
            <input type="radio" name="bloodType" value="A">A
            <input type="radio" name="bloodType" value="B">B
            <input type="radio" name="bloodType" value="O">O
            <input type="radio" name="bloodType" value="AB">AB
        </div>

        <input type="submit" value="Start">
        
    </form>
    
</body>
</html>