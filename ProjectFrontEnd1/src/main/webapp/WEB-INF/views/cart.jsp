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
<c:if test="${ !empty(cartItems) }">
<a href="<c:url value='/cart/clearcart'></c:url>" class="btn btn-danger" pull-left  >
<span class="glyphicon glypicon-remove"></span>
Clear Cart
</a>
</c:if>
<table class="table table-striped">
<thead id="thead">
<tr><th>ProductName</th><th>Quantity</th><th>Total Price</th><th>Remove</th>
</tr>
</thead>
<c:set var="grandTotal" value="0"></c:set><!-- var grandTotal=0 -->
<tbody id="tbody"><!-- cartItems is List<CartItem>, cartItem is CartItem obj -->
<c:forEach items="${cartItems }" var="cartItem">
<tr>
<td>${cartItem.product.productName }</td>
<td>${cartItem.quantity }</td>
<td>${cartItem.totalPrice }</td>
<c:set var="grandTotal" value="${grandTotal + cartItem.totalPrice }"></c:set>
<!--  grandTotal = grandTotal + cartItem.totalPrice -->
<td><a href="<c:url value='/cart/removecartitem/${cartItem.cartItemId }'></c:url>" class="label label-danger" pull-left >

<span class="glyphicon glyphicon-remove" ></span>Remove
</a></td>

</tr>
</c:forEach>
</tbody>
</table>
Total Price : ${grandTotal }
<c:if test="${empty(cartItems) }">
<h3>Your Cart is Empty</h3>
<a href="<c:url value='/home'></c:url>"><button class="btn btn-primary">CONTINUE SHOPPING</button></a>
</c:if>
<c:if test="${ !empty(cartItems) }">
<a href="<c:url value='/cart/shippingaddressform'></c:url>" class="btn btn-success pull-right">
<span class="glyphicon glyphicon-shopping-cart"></span> Place Order  </a>
</c:if>
</div>

</body>

</html>

