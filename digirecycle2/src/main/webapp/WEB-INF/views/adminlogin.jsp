<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login - DigiRecycle</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #dfe9f3, #ffffff);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            margin: 100px auto;
            background: #fff;
            padding: 35px 30px;
            border-radius: 10px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        label {
            font-weight: 500;
            margin-bottom: 5px;
            display: block;
            color: #333;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type=submit]:hover {
            background-color: #43a047;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        .links {
            margin-top: 25px;
            text-align: center;
        }

        .links a {
            display: inline-block;
            margin: 6px 10px;
            color: #007BFF;
            font-weight: 500;
            text-decoration: none;
        }

        .links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Login</h2>
        <form action="adminlogin" method="post">
            <label>Email:</label>
            <input type="text" name="email" placeholder="admin@example.com" required />

            <label>Password:</label>
            <input type="password" name="password" placeholder="Enter Password" required />

            <input type="submit" value="Login" />
        </form>

        <div class="error">
            <%
                String error = (String) request.getAttribute("error");
                if (error != null) { out.print(error); }
            %>
        </div>

        <div class="links">
            <a href="registeruser">Register as User</a>
            <a href="userlogin">User Login</a>
            <a href="recyclerlogin">Recycler Login</a>
        </div>
    </div>
</body>
</html>
