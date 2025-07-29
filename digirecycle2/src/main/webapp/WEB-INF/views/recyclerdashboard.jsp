<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.digirecycle.getset.getsetRecycler" %>

<%
    String email = getsetRecycler.getEmail();
    String contact = getsetRecycler.getContact();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Recycler Dashboard - DigiRecycle</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #e0eafc, #cfdef3);
        }

        .dashboard-container {
            max-width: 650px;
            margin: 60px auto;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            overflow: hidden;
        }

        .header {
            background: linear-gradient(135deg, #00b894, #00cec9);
            color: white;
            padding: 25px 0;
            text-align: center;
            font-size: 26px;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .profile-box {
            text-align: center;
            padding: 30px;
            background-color: #f9fbfd;
        }

        .avatar {
            width: 110px;
            height: 110px;
            border-radius: 50%;
            margin: auto;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
            background-image: url('https://cdn-icons-png.flaticon.com/512/149/149071.png');
            background-size: cover;
            background-position: center;
        }

        .profile-info {
            margin-top: 15px;
            color: #555;
            font-size: 16px;
        }

        .profile-info p {
            margin: 6px 0;
        }

        .button-group {
            padding: 30px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .btn {
            text-decoration: none;
            padding: 14px;
            font-size: 17px;
            text-align: center;
            color: white;
            background: #0984e3;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background: #74b9ff;
        }

        .btn.logout {
            background: #d63031;
        }

        .btn.logout:hover {
            background: #e17055;
        }

        @media(max-width: 600px) {
            .button-group {
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <div class="dashboard-container">
        <div class="header">Recycler Dashboard</div>

        <div class="profile-box">
            <div class="avatar"></div>
            <div class="profile-info">
                <p><strong>Email:</strong> <%= email != null ? email : "recycler@example.com" %></p>
                <p><strong>Contact:</strong> <%= contact != null ? contact : "N/A" %></p>
            </div>
        </div>

        <div class="button-group">
            <a href="recyclercollections" class="btn">📦View Plastic Collections</a>
            <a href="viewusers" class="btn">👥 View Users</a>
            <a href="logout" class="btn logout">🚪 Logout</a>
        </div>
    </div>

</body>
</html>
