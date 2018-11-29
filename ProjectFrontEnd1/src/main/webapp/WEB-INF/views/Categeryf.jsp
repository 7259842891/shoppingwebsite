<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
table, th, td {
    border: 2px solid black;
    border-collapse: collapse;
    padding: 10px
}
</style>

</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<div class="container">
 <h1>Add New Categery</h1>
      
</div>

<form:form class="form-inline" action="addCategery" method = "POST">
    <div class="form-group">
   
      <label for="id">id:</label>
      <input type="hidden"  path ="id" class="form-control"  placeholder="Enter id" >
    </div>
    <div class="form-group">
      <label for="name">name:</label>
      <form:input path = "name" class="form-control" placeholder="Enter  name"  />
    </div>
   
    <button type="submit" class="btn btn-warning">Submit</button>
  </form:form>

</body>
</html>