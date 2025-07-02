<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Store</title>
<link href="/css/login-style.css" rel="stylesheet"> 
</head>
<body>
	<%
		String errorMessage = (String) request.getAttribute("error");
	%>
    <div class="login-container">
        <h1>Login</h1>
        <% if(errorMessage != null){%>
			<p class="error"><%= errorMessage%></p>
		<%}%>
        <form method="post" action="/login/auth">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required="required"/>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required="required"/>
            
            <input type="submit" value="Login"/>
        </form>
        <div class="anchor-container">
        	<a href="/register">Sign up?</a>
        </div>
    </div>
</body>
</html>
