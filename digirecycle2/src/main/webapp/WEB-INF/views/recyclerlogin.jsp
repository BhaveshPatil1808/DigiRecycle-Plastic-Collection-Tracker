<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Recycler Login - DigiRecycle</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #e6f2ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 100%;
            max-width: 400px;
            background: #fff;
            padding: 30px 25px;
            border-radius: 10px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #007BFF;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
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
        }

        input[type=submit] {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type=submit]:hover {
            background-color: #0056b3;
        }

        .error {
            color: #c0392b;
            text-align: center;
            margin-top: 10px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Recycler Login</h2>
        <form action="recyclerlogin" method="post">
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required />

            <label for="contact">Contact:</label>
            <input type="text" name="contact" id="contact" required />

            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required />

            <input type="submit" value="Login" />
        </form>

        <div class="error">
            <% String error = (String) request.getAttribute("error");
               if (error != null) { out.print(error); } %>
        </div>
    </div>
</body>
</html>
