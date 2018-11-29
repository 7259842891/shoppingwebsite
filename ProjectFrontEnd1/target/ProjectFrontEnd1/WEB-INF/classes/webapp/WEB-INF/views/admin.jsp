<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<h3>Manage Products</h3>

<c:url value="/admin/getproductf" var="url"></c:url>
<a href="${url}">Add product</a> &nbsp;&nbsp;

<c:url value="/productlist" var="url1"></c:url>
<a href="${url1}">Delete product</a>&nbsp;&nbsp;

<c:url value="/productlist" var="url2"></c:url>
<a href="${url2 }">Update product</a>
<br/><br/>

<h3> Manage Categery</h3>

<c:url value="/admin/getcategeryf" var="url"></c:url>
<a href="${url }">Add categery</a> &nbsp;&nbsp;

<c:url value="/admin/categerylist" var="url1"></c:url>
<a href="${url1 }">Delete categery</a>&nbsp;&nbsp;

<c:url value="/admin/categerylist" var="url2"></c:url>
<a href="${url2 }">Update categery</a>
<br/><br/>

<h3> Manage Supplier</h3>

<c:url value="/admin/getsupplierf" var="url"></c:url>
<a href="${url} ">Add supplier</a> &nbsp;&nbsp;

<c:url value="/admin/supplierlist" var="url1"></c:url>
<a href="${url}">Delete supplier</a>&nbsp;&nbsp;

<c:url value="/admin/supplierlist" var="url2"></c:url>
<a href="${url2 }">Update supplier</a>
<br/><br/>

</body>
</html>