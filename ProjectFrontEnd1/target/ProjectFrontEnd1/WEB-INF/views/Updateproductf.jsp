<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
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
<jsp:include page="navbar.jsp"></jsp:include>
<div class="container" border="1">
<h1> Edit The Product</h1>
<form:form method="POST" Action="Updateproduct" enctype="multipart/form-data">
<table class="table">
			<tr>
               <td>ID:</td>
               <td><form:input type="hidden" path = "productID" /></td>
           </tr>
           <tr>
               <td>P_Name:</td>
               <td><form:input path = "productName" /></td>
           </tr>
           <tr>
               <td>P_Price:</td>
               <td><form:input path = "productPrice" /></td>
           </tr>
           <tr>
               <td>P_Des:</td>
               <td><form:input path = "productDescription" /></td>
           </tr>
           <tr>
               <td>P_Disc:</td>
               <td><form:input path = "productDiscount" /></td>
            </tr>
            <tr>
            	<td> upload a image </td>
            	<td><form:input type="file" path="image"/></td>
            </tr>
            <tr>
            	<td>Select Categery</td>
		<td><form:select path="categery.id">
		<c:forEach items="${categeries}" var="c">
		<form:option value="${c.id }">${c.name }</form:option>
		</c:forEach>
	
		</form:select>
            </td>
            </tr>
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Edit"/>
               </td>
            </tr>
</table> 
</form:form> 
         
</div>
</body>
</html>