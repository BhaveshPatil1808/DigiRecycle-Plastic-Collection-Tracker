<%@ page language="java" contentType="text/html; charset=UTF-8" session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - DigiRecycle</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #f5f7fa, #c3cfe2);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 80px auto;
            background: #ffffff;
            padding: 35px 30px;
            border-radius: 12px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .logout {
            text-align: right;
            font-size: 14px;
            margin-bottom: 10px;
            color: #555;
        }

        .logout a {
            color: #d9534f;
            font-weight: bold;
            text-decoration: none;
        }

        .logout a:hover {
            color: #b52b27;
        }

        .nav-link {
            display: block;
            background-color: #007BFF;
            color: white;
            text-align: center;
            padding: 14px;
            margin: 12px 0;
            text-decoration: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 500;
            transition: background 0.3s ease;
        }

        .nav-link:hover {
            background-color: #0056b3;
        }

        .nav-link::before {
            content: "➤ ";
        }
    </style>
</head>
<body>

<div class="container">
    <div class="logout">
        Logged in as: <%= session.getAttribute("adminEmail") != null ? session.getAttribute("adminEmail") : "admin@gmail.com" %> |
        <a href="adminlogout">Logout</a>
    </div>

    <h2>Admin Dashboard</h2>

    <a href="viewrecyclers" class="nav-link">View / Manage Recyclers</a>
    <a href="viewusers" class="nav-link">View Users</a>
    <a href="viewcollectionslog" class="nav-link">View Collection Logs</a>
    <a href="addrecycler" class="nav-link">Add New Recycler</a>
</div>

</body>
</html>
