<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
		src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script type="text/javascript">

function fillShippingAddress(form){
	if(form.shippingaddressform.checked==true){
		//shippingaddress is same as billingaddress
		form["shippingaddress.apartmentnumber"].value=form["billingaddress.apartmentnumber"].value;
		form["shippingaddress.streetname"].value=form["billingaddress.streetname"].value;
		form["shippingaddress.city"].value=form["billingaddress.city"].value;
		form["shippingaddress.state"].value=form["billingaddress.state"].value;
		form["shippingaddress.country"].value=form["billingaddress.country"].value;
		form["shippingaddress.zipcode"].value=form["billingaddress.zipcode"].value;
	}
	if(form.shippingaddressform.checked==false){
		form["shippingaddress.apartmentnumber"].value=""
		form["shippingaddress.streetname"].value=""
		form["shippingaddress.city"].value=""
		form["shippingaddress.state"].value=""
		form["shippingaddress.country"].value=""
		form["shippingaddress.zipcode"].value=""
	}
}




$(document).ready(function(){
	$('#form').validate({
		rules:{
			firstname:{required:true},
			lastname:{required:true},
			phonenumber:{required:true,number:true,minlength:10,maxlength:10},
			"user.email":{required:true,email:true},
			"user.password":{required:true,minlength:5,maxlength:10},
			"billingaddress.apartmentnumber":{required:true},
			"billingaddress.streetname":{required:true},
			"billingaddress.state":{required:true},
			"billingaddress.city":{required:true},
			"billingaddress.country":{required:true},
			"billingaddress.zipcode":{required:true,number:true}
		},
		messages:{
			firstname:{required:"Firstname is mandatory"},
			phonenumber:{required:"Phonenumber is required"},
			"user.email":{required:"Email is required",email:"Please enter valid email address"}
		}
	})
})

</script>
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
<div class="container">
	<c:url value="/Updateregistercustomer" var="url"></c:url>
	<form:form modelAttribute="customer" action="${url }" id="form">
			<tr>
				<td><form:hidden path="customerId" /></td>
			</tr>

			
			<div class="form-group col-lg-12">
	<form:label path="firstname">Enter Firstname:</form:label>
	<form:input path="firstname" class="form-control" id="firstname"/>
	<form:errors  path="firstname" style="color:red" />
			</div>

			
			<div class="form-group col-lg-12">
				<form:label path="lastname">Enter Lastname:</form:label>
	<form:input path="lastname" class="form-control"  id="lastname"/> 
	<form:errors  path="lastname" style="color:red" />
			</div>

			<div class="form-group col-lg-12">
				<form:label path="lastname">Enter Phonenumber:</form:label>
	<form:input path="phonenumber" class="form-control"  id="phonenumber"/> 
	<form:errors  path="phonenumber" style="color:red" />
			</div>
			<hr>
			<h3 align="center">
				<b>Login Credentials</b>
			</h3>

			<div class="form-group col-lg-12">
				<form:label path="user.email">Enter EmailID:</form:label>
				<form:input path="user.email" class="form-control" id="user.email"
					type="email" />
				<span style="color: red">${errorMessage }</span>
			</div>

			<div class="form-group col-lg-12">
				<form:label path="user.password">Enter password:</form:label>
				<form:input path="user.password" class="form-control"
					id="user.password" type="password" />
				<form:hidden path="user.enabled" value="true" />
				<form:hidden path="user.authorities.role" value="ROLE_USER" />
			</div>

			<hr>
			<h4 align="center">
				<b>Billing Address</b>
			</h4>
			<div class="form-group col-lg-6">
				<form:label path="billingaddress.apartmentnumber">Enter Apartmentnumber:</form:label>
				<form:input path="billingaddress.apartmentnumber"
					class="form-control" id="billingaddress.apartmentnumber" />
			</div>
			<div class="form-group col-lg-6">
				<form:label path="billingaddress.streetname">Enter streetname:</form:label>
				<form:input path="billingaddress.streetname" class="form-control"
					id="billingaddress.streetname" />
			</div>

			<div class="form-group col-lg-6">
				<form:label path="billingaddress.city">Enter city:</form:label>
				<form:input path="billingaddress.city" class="form-control"
					id="billingaddress.city" />
			</div>

			<div class="form-group col-lg-6">
				<form:label path="billingaddress.state">Enter state:</form:label>
				<form:input path="billingaddress.state" class="form-control"
					id="billingaddress.state" />
			</div>

			<div class="form-group col-lg-6">
				<form:label path="billingaddress.country">Enter country:</form:label>
				<form:input path="billingaddress.country" class="form-control"
					id="billingaddress.country" />
			</div>

			<div class="form-group col-lg-6">
				<form:label path="billingaddress.zipcode">Enter Zipcode:</form:label>
				<form:input path="billingaddress.zipcode" class="form-control"
					id="billingaddress.zipcode" />
			</div>
			<hr>



			<h4 align="center">
				<b>Shipping Address</b>
			</h4>

	<b><p align="center">Check this if shipping address is same as billing address<input type="checkbox" onclick="fillShippingAddress(this.form)" id="shippingaddressform"></p> 
	</b>		
			<div class="form-group col-lg-6">
				<form:label path="shippingaddress.apartmentnumber">Enter Apartmentnumber</form:label>
				<form:input path="shippingaddress.apartmentnumber" class="form-control"
					id="shippingaddress.apartmentnumber" />
			</div>
			<div class="form-group col-lg-6">
				<form:label path="shippingaddress.streetname">Enter streetname</form:label>
				<form:input path="shippingaddress.streetname" class="form-control"
					id="shippingaddress.streetname" />
			</div>
			<div class="form-group col-lg-6">
				<form:label path="shippingaddress.city">Enter city</form:label>
				<form:input path="shippingaddress.city" class="form-control" id="shippingaddress.city" />
			</div>
			<div class="form-group col-lg-6">
				<form:label path="shippingaddress.state">Enter state</form:label>
				<form:input path="shippingaddress.state" class="form-control" id="shippingaddress.state" />
			</div>
			<div class="form-group col-lg-6">
				<form:label path="shippingaddress.country">Enter country</form:label>
				<form:input path="shippingaddress.country" class="form-control"
					id="shippingaddress.country" />
			</div>
			<div class="form-group col-lg-6">
				<form:label path="shippingaddress.zipcode">Enter zipcode</form:label>
				<form:input path="shippingaddress.zipcode" class="form-control"
					id="shippingaddress.zipcode" />
			</div>
			<br></br>
			
			<div class="form-group col-lg-6">
			<button input type="submit" class="btn btn-danger">Update Profile</button>
			</br>
			<p>if you are already Registered..... <a href="login">Than Click
					here!!!</a></p>
					
			</div>
			
			
					
		</form:form>
	</div>
</body>
</html>