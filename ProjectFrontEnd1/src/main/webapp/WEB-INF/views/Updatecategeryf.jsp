<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="container">
 <h1>Update Categery</h1>
      <form:form  action = "Updatecategery" method = "POST" >
      <table class="table">
    
      		<tr>
               <td>id:</td>
               <td><form:input type="hidden"  path ="id"/></td>
            </tr>
      		  <tr>
              <td>name:</td>
               <td><form:input path = "name"/></td>
            </tr>
            
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
             </tr>  
      </form:form>
      </table>
</div>
</body>
</html>
</body>
</html>