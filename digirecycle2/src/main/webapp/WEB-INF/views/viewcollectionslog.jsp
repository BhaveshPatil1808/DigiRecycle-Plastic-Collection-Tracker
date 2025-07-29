<%@page import="java.util.List"%>
<%@page import="com.digirecycle.model.collectionLogs"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
    <title>Plastic Collection Logs - DigiRecycle</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f0f8ff; }
        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #999;
            text-align: center;
        }
        th {
            background-color: #3c8dbc;
            color: white;
        }
        h2 {
            text-align: center;
            margin-top: 40px;
        }
    </style>
</head>
<body>

<h2>All Plastic Collection Logs</h2>

<table>
    <thead>
        <tr>
            <th>Id</th>
            <th>Plastic Type</th>
            <th>Quantity (Kg)</th>
            <th>Recycler ContactId</th>
            <th>Date</th>
            <th>Status</th>
            <th>UserContactId</th>
        </tr>
    </thead>
    <tbody>
        <%
            List<collectionLogs> logs = (List<collectionLogs>) request.getAttribute("collectionLogs");
            if (logs != null && !logs.isEmpty()) {
                for (collectionLogs log : logs) {
        %>
        <tr>
            <td><%= log.getId()%></td>
            <td><%= log.getPlasticType() %></td>
            <td><%= log.getQuantity() %></td>
            <td><%= log.getRecyclerContactId() %></td>
            <td><%= log.getRequestDate() %></td>
            <td><%= log.getStatus() %></td>
            <td><%= log.getUserContactId() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6">No collection logs found.</td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

</body>
</html>
