<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order details</title>
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

     <table class="table" border="1" >
         	<tr>
         		<th>orderID</th>
         		<th>purchaseDate</th>
 				<th>grandTotal</th>
 				<th>user</th>
 				
 			</tr>
 			 <c:forEach var="o" items="${orderdetails}">
 			<tr>
 				 
 				<td>${o.orderId}</td> 
 				<td>${o.purchaseDate}</td>
 				<td>${o.grandTotal}</td>
 				<td>${o.user.email}</td>
 				</tr>
 				</c:forEach>	
 				</table>
 				</div>
</body>
</html>