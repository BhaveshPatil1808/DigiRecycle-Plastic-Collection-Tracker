<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.digirecycle.model.collectionLogs" %>
<!DOCTYPE html>
<html>
<head>
    <title>Check Status - DigiRecycle</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin: 40px 0 20px;
            color: #2c3e50;
        }

        table {
            width: 95%;
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 14px;
            border-bottom: 1px solid #ddd;
            text-align: center;
            font-size: 15px;
        }

        th {
            background-color: #007acc;
            color: #fff;
        }

        tr:hover {
            background-color: #f1f9ff;
        }

        .no-data {
            text-align: center;
            color: #777;
            margin-top: 50px;
            font-size: 16px;
        }
    </style>
</head>
<body>

<h2>Your Plastic Collection Status</h2>

<%
    List<collectionLogs> statusList = (List<collectionLogs>) request.getAttribute("collections");
    if (statusList != null && !statusList.isEmpty()) {
%>
    <table>
        <thead>
            <tr>
                <th>Recycler Contact ID</th>
                <th>Plastic Type</th>
                <th>Quantity (kg)</th>
                <th>Date</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
        <% for (collectionLogs log : statusList) { %>
            <tr>
                <td><%= log.getRecyclerContactId() %></td>
                <td><%= log.getPlasticType() %></td>
                <td><%= log.getQuantity() %></td>
                <td><%= log.getRequestDate() %></td>
                <td><%= log.getStatus() %></td>
            </tr>
        <% } %>
        </tbody>
    </table>
<%
    } else {
%>
    <div class="no-data">No plastic collection records found.</div>
<%
    }
%>

</body>
</html>
