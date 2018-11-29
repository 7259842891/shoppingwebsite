<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home"><img src="<c:url value='/resources/images/cart.jpg'></c:url>" height="30px" width="40px" /></a>
    </div>
    <ul class="nav navbar-nav">
    <c:url value="/home" var="url"></c:url>
      <li class="active"><a href="${url}">Home</a></li>
    <c:url value="/productlist" var="url"></c:url>
      <li class="active"><a href="${url} ">All Products</a></li>
    </ul>
    <ul class="nav navbar-nav">
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">categeries<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <c:forEach  var="c" items="${categeries}">
         <c:url value="/filterproduct/${c.id}" var="url"></c:url>
      <li class="active"><a href="${url} ">${c.name}</a></li>
   
          </c:forEach>
         
          
         </ul>
      </li>
     </ul>
    
    <!-- <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
      
      <i style="font-size:24px;color:white" class="fa">&#xf07a;</i>
      
    </form> -->
    
    <ul class="nav navbar-nav navbar-right">
    
     <c:url value="/myorder" var="url"></c:url>
    <li><a href="${url}">Order</a></li>
    
     <c:if test="${pageContext.request.userPrincipal.name != null}">
       <c:if test="${pageContext.request.userPrincipal.name !='pyk208@gmail.com'}">
    <c:url value="/cart/getcart" var="url"></c:url>
    <li><a href="${url}">Cart</a></li>
    </c:if>
    </c:if>
    
    <c:if test="${pageContext.request.userPrincipal.name !=null}">
    <c:url value="/updateregistrationform" var="url"></c:url>
    <li><a href="${url}">Edit Profile</a></li>
    </c:if>
    
     <c:if test="${pageContext.request.userPrincipal.name =='pyk208@gmail.com'}">
    <c:url value="/admin" var="url"></c:url>
    <li><a href="${url}"><button class="btn btn-warning">Manage Store</button></a></li>
    </c:if>
    
    <c:if test="${pageContext.request.userPrincipal.name == null}">
    <c:url value="/all/getregistrationform" var="url"></c:url>
      <li><a href="${url}">Signup</a></li>
   
      <li><a href="login">Signin</a></li>
      </c:if>
      
      <c:if test="${pageContext.request.userPrincipal.name != null}">
      <c:url value="/j_spring_security_logout" var="url"></c:url>
      <li><a href="${url}">Signout</a></li>
      </c:if>
      
    </ul>
    
  </div>
</nav>
</body>
</html>