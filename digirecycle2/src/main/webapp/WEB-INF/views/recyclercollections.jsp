<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.digirecycle.model.collectionLogs" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Assigned Plastic Collections - DigiRecycle</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #eef7ff;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        table {
            width: 95%;
            margin: auto;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.05);
        }

        th, td {
            padding: 14px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #007acc;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        form {
            display: inline;
        }

        .action-buttons input[type="submit"] {
            margin: 2px 4px;
            padding: 6px 14px;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .action-buttons .accept {
            background-color: #28a745;
            color: white;
        }

        .action-buttons .accept:hover {
            background-color: #218838;
        }

        .action-buttons .reject {
            background-color: #dc3545;
            color: white;
        }

        .action-buttons .reject:hover {
            background-color: #c82333;
        }

        .no-data {
            text-align: center;
            font-style: italic;
            color: #777;
        }
    </style>
</head>
<body>

<h2>My Assigned Plastic Collections</h2>

<table>
    <thead>
        <tr>
            <th>Collection ID</th>
            <th>User Contact ID</th>
            <th>Plastic Type</th>
            <th>Quantity (kg)</th>
            <th>Requested Date</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<collectionLogs> logs = (List<collectionLogs>) request.getAttribute("collectionLogs");
            if (logs != null && !logs.isEmpty()) {
                for (collectionLogs log : logs) {
        %>
        <tr>
            <td><%= log.getId() %></td>
            <td><%= log.getUserContactId() %></td>
            <td><%= log.getPlasticType() %></td>
            <td><%= log.getQuantity() %></td>
            <td><%= log.getRequestDate() %></td>
            <td><%= log.getStatus() %></td>
            <td class="action-buttons">
                <form action="updatestatus" method="post">
                    <input type="hidden" name="id" value="<%= log.getId() %>" />
                    <input type="hidden" name="status" value="Accepted" />
                    <input type="submit" value="Accept" class="accept" />
                </form>
                <form action="updatestatus" method="post">
                    <input type="hidden" name="id" value="<%= log.getId() %>" />
                    <input type="hidden" name="status" value="Rejected" />
                    <input type="submit" value="Reject" class="reject" />
                </form>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="7" class="no-data">No assigned collections found for you.</td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

</body>
</html>
