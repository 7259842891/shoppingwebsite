<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<h2>Add New Customer</h2>
<form:form method="POST" Action="addCustomer">
<table>
			<tr>
               <td>ID:</td>
               <td><form:input type="hidden" path = "id" /></td>
            </tr>
            <tr>
               <td>FirstName:</td>
               <td><form:input path = "firstname" /></td>
            </tr>
             <tr>
               <td>LastName:</td>
               <td><form:input path = "lastname" /></td>
            </tr>
            <tr>
               <td>password:</td>
               <td><form:input path = "password" /></td>
            </tr>
            <tr>
               <td>Birth:</td>
               <td><form:input path = "birth" /></td>          
            </tr>
            <tr>
               <td>Ph.no:</td>
               <td><form:input path = "phonenumber" /></td>
              
            </tr>
            <tr>
               <td colspan = "2">
                  <button type="submit" class="btn btn-warning">Submit</button>
               </td>
            </tr>
         </table>
         </form:form> 
         </br></br>
         
         


</body>
</html>