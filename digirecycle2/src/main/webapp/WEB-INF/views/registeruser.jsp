<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration - DigiRecycle</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #e0f7fa, #fff);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 450px;
            margin: 60px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #333;
        }

        input[type=text],
        input[type=password],
        input[type=email] {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            transition: border-color 0.2s;
        }

        input[type=text]:focus,
        input[type=password]:focus,
        input[type=email]:focus {
            border-color: #007BFF;
            outline: none;
        }

        input[type=submit] {
            width: 100%;
            background-color: #28a745;
            color: white;
            padding: 12px;
            border: none;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type=submit]:hover {
            background-color: #218838;
        }

        .footer-link {
            text-align: center;
            margin-top: 20px;
        }

        .footer-link a {
            color: #007BFF;
            text-decoration: none;
        }

        .footer-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Create User Account</h2>
        <form action="saveuser" method="post">
            <label for="name">Full Name:</label>
            <input type="text" name="name" id="name" required />

            <label for="email">Email Address:</label>
            <input type="email" name="email" id="email" required />

            <label for="contact">Mobile Number:</label>
            <input type="text" name="contact" id="contact" required />

            <label for="address">Your Address:</label>
            <input type="text" name="address" id="address" required />

            <label for="password">Create Password:</label>
            <input type="password" name="password" id="password" required />

            <input type="submit" value="Register Now" />
        </form>

        <div class="footer-link">
            Already have an account? <a href="userlogin">Login here</a>
        </div>
    </div>
</body>
</html>
