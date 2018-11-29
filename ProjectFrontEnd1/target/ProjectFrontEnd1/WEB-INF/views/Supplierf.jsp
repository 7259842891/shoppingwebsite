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
    border: 1px solid black;
    border-collapse: collapse;
    padding: 5px
}
</style>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="container">
 <h2>Add New Supplier</h2>
      <form:form method = "POST" action = "addSupplier">
         <table border="1" class="table">
            <tr>
               <td>ID:</td>
               <td><form:input type="hidden" path = "supplierID" /></td>
            </tr>
            <tr>
               <td>Address:</td>
               <td><form:input path = "supplierAddress" /></td>
            </tr><tr>
               <td>Ph.no:</td>
               <td><form:input path = "supplierPhonenumber" /></td>
            </tr>
            <tr>
               <td colspan = "2">
                  <button type="submit" class="btn btn-warning">Submit</button>
               </td>
            </tr>
         </table>  
      </form:form>
      </br></br>
     </div>
</body>
</html>