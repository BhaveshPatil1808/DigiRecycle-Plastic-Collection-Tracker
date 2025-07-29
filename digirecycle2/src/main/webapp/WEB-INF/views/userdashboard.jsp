<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard - DigiRecycle</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 500px;
            margin: 100px auto;
            background: #fff;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        h2 {
            margin-bottom: 30px;
        }
        a.button {
            display: block;
            margin: 15px 0;
            padding: 15px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            font-size: 16px;
            border-radius: 5px;
        }
        a.button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Welcome to DigiRecycle</h2>

    <a href="submitcollectionform" class="button">Submit Plastic Collection</a>
    <a href="checkstatus" class="button">Check Submission Status</a>
</div>

</body>
</html>
