<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Submit Plastic Collection - DigiRecycle</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #e9f5ff;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 60px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 5px 20px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 12px;
            font-weight: bold;
            color: #333;
        }

        input[type=text], input[type=number], input[type=date], select {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 14px;
        }

        input[type=submit] {
            margin-top: 25px;
            background-color: #007bff;
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
            background-color: #0056b3;
        }

        .note {
            font-size: 13px;
            color: #666;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Submit Plastic Collection</h2>
    <form action="savecollection" method="post">
        <label for="recyclerContactId">Recycler Contact ID:</label>
        <input type="text" name="recyclerContactId" id="recyclerContactId" placeholder="Enter recycler contact number" required />

        <label for="plasticType">Plastic Type:</label>
        <input type="text" name="plasticType" id="plasticType" placeholder="e.g., PET, HDPE, LDPE" required />

        <label for="quantity">Quantity (in kg):</label>
        <input type="number" name="quantity" id="quantity" step="0.01" min="0.01" required />

        <label for="date">Collection Date:</label>
        <input type="text" name="date" id="date" placeholder="yyyy-mm-dd" required />
        <div class="note">Format: yyyy-mm-dd (e.g., 2025-07-23)</div>

        <input type="submit" value="Submit Collection" />
    </form>
</div>

<script>
    
</script>

</body>
</html>
