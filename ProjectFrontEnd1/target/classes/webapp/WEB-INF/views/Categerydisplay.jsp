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
<h2 align="center">Add Category Information</h2>
             </br> </br>
      <table border="1" class="table">
     	 <tr>
      	  <th>id </th>
    	  <th>name</th>
      	</tr>
        <c:forEach var="cat" items="${catlist}">
      	<tr>
      		<td>${cat.id}</td>
      		<td>${cat.name}</td>
              <td>
					<a href="<c:url value='/deletecategery?id=${cat.id }'></c:url>"><span class="glyphicon glyphicon-trash"></span></a>
					<a href="<c:url value='/getupdatecategery?id=${cat.id }'></c:url>"><span class="glyphicon glyphicon-pencil"></span></a>
					</td>
 		   	</tr>
         </c:forEach>
     
      	</table>
</div>
</body>
</html>