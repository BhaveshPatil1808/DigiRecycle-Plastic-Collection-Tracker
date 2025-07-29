<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Login - DigiRecycle</title>
    <style>
        body { font-family: Arial; background-color: #f5f5f5; }
        .container {
            width: 400px; margin: 100px auto; background: #fff;
            padding: 20px; box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        input[type=text], input[type=password] {
            width: 100%; padding: 10px; margin: 10px 0;
        }
        input[type=submit] {
            background-color: #007BFF; color: white;
            padding: 10px 20px; border: none; cursor: pointer;
        }
        .error {
            color: red; margin-top: 10px; text-align: center;
        }
        .links {
            text-align: center; margin-top: 20px;
        }
        .links a {
            text-decoration: none; color: #007BFF;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Login</h2>
        <form action="userlogin" method="post">
        
        	<label>Contact:</label>
            <input type="text" name="contact" required />
            <label>Email:</label>
            <input type="text" name="email" required />

            <label>Password:</label>
            <input type="password" name="password" required />

            <input type="submit" value="Login" />
        </form>

        <div class="error">
            <% String error = (String) request.getAttribute("error");
               if (error != null) { out.print(error); } %>
        </div>

        <div class="links">
            <p>Don't have an account? <a href="registeruser">Register here</a></p>
            <p><a href="adminlogin">Login as Admin</a> | <a href="recyclerlogin">Login as Recycler</a></p>
        </div>
    </div>
</body>
</html>
