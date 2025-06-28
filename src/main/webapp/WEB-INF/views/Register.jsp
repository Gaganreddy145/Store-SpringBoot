<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>For More Store - Sign Up</title>
<link rel="stylesheet" href="/css/register-style.css" >
</head>
<body>
    <div class="signup-container">
        <h1>Create Account</h1>
        <form method="post">
            <label for="firstname">Firstname:</label>
            <input type="text" id="firstname" name="firstname" required/>

            <label for="lastname">Lastname:</label>
            <input type="text" id="lastname" name="lastname" required/>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required/>

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" required/>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required/>

            <input type="submit" value="Sign up"/>
        </form>
    </div>
</body>
</html>
