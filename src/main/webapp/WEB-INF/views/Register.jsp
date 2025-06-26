<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>For More Store - Sign Up</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #e3fdfd;
        margin: 0;
        padding: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .signup-container {
        background-color: white;
        padding: 35px 40px;
        border-radius: 15px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
        width: 400px;
    }

    h1 {
        text-align: center;
        color: #102a43;
        margin-bottom: 25px;
    }

    label {
        display: block;
        margin-top: 15px;
        color: #102a43;
        font-weight: 600;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 14px;
        box-sizing: border-box;
        transition: border-color 0.3s;
    }

    input:focus {
        border-color: #00bcd4;
        outline: none;
    }

    input[type="submit"] {
        width: 100%;
        margin-top: 25px;
        padding: 12px;
        background-color: #00bcd4;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0198a4;
    }
</style>
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
