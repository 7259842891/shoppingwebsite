<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>forgot password</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<form method="POST" Action="changepassword" >
	<div class="form-group col-lg-12">
	<label>Enter EmailId:</label>
	<input type="email"  name="mail"  class="form-control" id="EmailId" />
	</div>
	<div class="form-group col-lg-12">
		<label >Enter New password:</label>
	<input type="text" class="form-control" name="newpass" id="forgotpassword"/> 
	</div>
	
	<div class="form-group col-lg-12">
		<label >confirm New password:  </label>
	<input  type="text" class="form-control" name="confirm"  id="confirm new password"/> 
	</div>
<button type="submit" class="btn btn-danger" >Change password </button></br> </br>
</form>
</div>

</body>
</html>