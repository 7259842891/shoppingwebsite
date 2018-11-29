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
<img src="<c:url value='/resources/images/${productAttr.productID}.jpg'></c:url>" height="40px" width="50px"><br>
<b>Product Name</b>:  ${productAttr.productName }  <br>
<b>Categery  </b>: ${ productAttr.categery}<br>
<b>Product Description: </b>${productAttr.productDescription }     <br>
<b>Product Price:</b> ${productAttr.productPrice }   <br>
<b>In Stock : </b> ${productAttr.quantity }  <br>
<c:if test="${productAttr.quantity > 0 }">
<security:authorize access="hasRole('ROLE_USER')">
<form action="<c:url value='/cart/addtocart/${productAttr.productID }'></c:url>">
Enter Quantity <input type="number" name="requestedQuantity" min="1" max="${productAttr.quantity }">
<button type="submit" class="btn btn-lg btn-info">Add To Cart</button><br>
</form>
</security:authorize>
</c:if>
<c:if test="${productAttr.quantity==0 }">
<button class="btn btn-lg btn-info" disabled>OUT OF STOCK</button>
 <h2> Coming Soon </h2>
</c:if>

<a href="<c:url value='/home'></c:url>" > Back to Previous page</a>
</div>
</body>
</html>


