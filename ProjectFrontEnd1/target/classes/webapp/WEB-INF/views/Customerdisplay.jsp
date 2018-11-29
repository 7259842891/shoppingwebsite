<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Details</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<h2>Submitted Customer Information</h2>
      <table border="1" class="table">
         	<tr>
         		<th>id</th>
         		<th>firstname</th>
 				<th>lastname</th>
 				<th>password</th>
 				<th>phonenumber</th>
 			</tr>
 			 <c:forEach var="cust" items="${custlist}">
 			 
 			<tr>
 				 <td>${cust.id}</td>
 				 <td>${cust.firstname}</td>
 				<td>${cust.lastname}</td>
 				<td>${cust.password}</td>
 				<td>${cust.birth}</td>
 				<td>${cust.phonenumber} </td>  
         	</tr>
          </c:forEach>
         </table> 
</body>
</html>