<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*, com.digirecycle.model.recycler" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Recyclers</title>
    <style>
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border: 1px solid #333;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        h2 {
            text-align: center;
        }
    </style>
</head>
<body>

<h2>List of Registered Recyclers</h2>

<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Contact</th>
            <th>Location</th>
            <th>Password</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<recycler> recyclerList = (List<recycler>) request.getAttribute("recyclers");
            if (recyclerList != null && !recyclerList.isEmpty()) {
                for (recycler r : recyclerList) {
        %>
            <tr>
                <td><%= r.getName() %></td>
                <td><%= r.getEmail() %></td>
                <td><%= r.getContact() %></td>
                <td><%= r.getLocation() %></td>
                <td><%= r.getPassword() %></td>
            </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="5">No recyclers found.</td>
            </tr>
        <%
            }
        %>
    </tbody>
</table>

</body>
</html>
