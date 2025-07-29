<%@page import="com.digirecycle.model.user"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
    <title>View Registered Users - DigiRecycle</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f9f9f9; }
        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        h2 {
            text-align: center;
            margin-top: 40px;
        }
    </style>
</head>
<body>

<h2>List of Registered Users</h2>

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Address</th>
            <th>Location</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<user> userList = (List<user>) request.getAttribute("users");
            if (userList != null && !userList.isEmpty()) {
                for (user u : userList) {
        %>
        <tr>
            <td><%= u.getName() %></td>
            <td><%= u.getEmail() %></td>
            <td><%= u.getContact() %></td>
            <td><%= u.getAddress() %></td>
            <td><%= u.getAddress() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5">No users found.</td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

</body>
</html>
