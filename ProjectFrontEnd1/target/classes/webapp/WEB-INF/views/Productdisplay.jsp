<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="container">
     <table border="1" class="table">
         	<tr>
         		<th>productID</th>
         		<th>productName</th>
 				<th>productPrice</th>
 				<th>productDescription</th>
 				<th>productDiscount</th>
 				<th>quantity</th>
 				<th>image</th>												
 				
 			</tr>
 			 <c:forEach var="P" items="${prodlist}">
 			<tr>
 				 
 				<td>${P.productID}</td> 
 				<td>${P.productName}</td>
 				<td>${P.productPrice}</td>
 				<td>${P.productDescription}</td>
 				<td>${P.productDiscount}</td>	
 				<td>${P.quantity}</td>
 
<td><img src="<c:url value='/resources/images/${P.productID}.jpg'></c:url>" height="30px" width="40px"></td>
 <c:if test="${pageContext.request.userPrincipal.name =='pyk208@gmail.com'}">
<td>

					<a href="<c:url value='/deleteproduct?id=${P.productID }'></c:url>"><span class="glyphicon glyphicon-trash"></span></a>
					<a href="<c:url value='/getupdateproduct?id=${P.productID }'></c:url>"><span class="glyphicon glyphicon-pencil"></span></a>
					</td>
					</c:if>
 		   	</tr>
         </c:forEach>
</table>
          
       
         </div>
</body>
</html>