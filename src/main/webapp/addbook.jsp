<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        text-align: center;
        padding: 50px;
    }
    .navbar {
        overflow: hidden;
        background-color: #333;
    }
    .navbar a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }
    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }
    h1 {
        color: #4CAF50;
    }
    form {
        display: inline-block;
        text-align: left;
    }
    input[type="text"] {
        margin: 10px 0;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 100%;
        box-sizing: border-box;
    }
    input[type="submit"], input[type="reset"] {
        margin: 10px;
        padding: 10px;
        border-radius: 5px;
        border: none;
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
    }
    input[type="submit"]:hover, input[type="reset"]:hover {
        background-color: #45a049;
    }
    a {
        display: block;
        margin-top: 20px;
        text-decoration: none;
        color: #4CAF50;
        font-weight: bold;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="addbook.jsp">Add Book</a>
        <a href="booklist.jsp">View Book List</a>
    </div>
    <h1>Add your book here</h1>
    <form action="AddBookServlet" method="POST">
        Title: <input type="text" name="title" required><br>
        Author: <input type="text" name="author" required><br>
        Price: <input type="text" name="price" required><br>
        <input type="submit" value="Submit">
        <input type="reset" value="Cancel">
    </form>
</body>
</html>
