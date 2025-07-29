<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Recycler - DigiRecycle</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #e0f7fa, #e1f5fe);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 420px;
            margin: 60px auto;
            background: #ffffff;
            padding: 30px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #007acc;
            margin-bottom: 25px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            margin-bottom: 5px;
            color: #333;
        }

        input[type=text],
        input[type=password],
        input[type=email] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        input[type=submit] {
            background-color: #2196F3;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type=submit]:hover {
            background-color: #1976D2;
        }

        .note {
            text-align: center;
            margin-top: 15px;
            font-size: 13px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register as Recycler</h2>
        <form action="saverecycler" method="post">
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" required />

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required />

            <label for="contact">Contact:</label>
            <input type="text" name="contact" id="contact" required pattern="\d{10}" title="Enter 10-digit phone number" />

            <label for="location">Location:</label>
            <input type="text" name="location" id="location" required />

            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required minlength="5" />

            <input type="submit" value="Register" />
        </form>
        <div class="note">
            Already registered? <a href="recyclerlogin.jsp">Login here</a>
        </div>
    </div>
</body>
</html>
