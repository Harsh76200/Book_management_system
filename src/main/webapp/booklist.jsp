<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="com.configuration.HibernateConfig" %>
<%@ page import="com.entity.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        text-align: center;
        padding: 50px;
    }
    .navbar a {
        color: white !important;
    }
    .navbar a:hover {
        color: black !important;
    }
    table {
        width: 80%;
        margin: 20px auto;
    }
</style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Book Management</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="addbook.jsp">Add Book</a></li>
                <li class="nav-item active"><a class="nav-link" href="booklist.jsp">View Book List</a></li>
            </ul>
        </div>
    </nav>
    <h1 class="my-4">Book List</h1>
    <%
    Session s = HibernateConfig.getSessionFactory().openSession();
    Transaction transaction = s.beginTransaction();
    List<Book> books = s.createQuery("FROM Book", Book.class).list();
    transaction.commit();
    s.close();
    %>
    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>Id</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <% for (Book book : books) { %>
            <tr>
                <td><%= book.getB_id() %></td>
                <td><%= book.getB_title() %></td>
                <td><%= book.getB_author() %></td>
                <td><%= book.getB_price() %></td>
                <td><a href="editbook.jsp?id=<%= book.getB_id() %>" class="btn btn-primary">Edit</a></td>
                <td><a href="DeleteBookServlet?id=<%= book.getB_id() %>" class="btn btn-danger">Delete</a></td>
            </tr>
        <% } %>
        </tbody>
    </table>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
