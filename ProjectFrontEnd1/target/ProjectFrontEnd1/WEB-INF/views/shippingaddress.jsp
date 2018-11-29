<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<c:url value="/cart/createorder" var="url"></c:url>
<form:form  action="${url}" modelAttribute="shippingaddress" method = "POST">
    <div class="form-group">
   
      <label for="id">shippingId:</label>
      <input type="hidden"  path ="shippingId" class="form-control"  placeholder="Enter shippingId" >
    </div>
    <div class="form-group">
      <label for="name">apartmentnumber:</label>
      <form:input path = "apartmentnumber" class="form-control" placeholder="Enter apartmentnumber "  />
    </div>
    <div class="form-group">
      <label for="name">streetname:</label>
      <form:input path = "streetname" class="form-control" placeholder="Enter streetname"  />
    </div>
    <div class="form-group">
      <label for="name">city:</label>
      <form:input path = "city" class="form-control" placeholder="Enter city"  />
    </div>
    <div class="form-group">
      <label for="name">state:</label>
      <form:input path = "state" class="form-control" placeholder="Enter state"  />
    </div>
    <div class="form-group">
      <label for="name">country:</label>
      <form:input path = "country" class="form-control" placeholder="Enter country"  />
    </div>
    <div class="form-group">
      <label for="name">zipcode:</label>
      <form:input path = "zipcode" class="form-control" placeholder="Enter zipcode"  />
    </div>
 
    <button type="submit" class="btn btn-warning">Submit</button>
  </form:form>
</body>
</html>