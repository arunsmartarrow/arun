<%@ page import="com.google.appengine.api.datastore.Entity" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<link href="/bootstrap/css/bootstrap.css" type="text/css"
	rel="stylesheet" />
	<link href="/bootstrap/css/bootstrap.min.css" type="text/css"
	rel="stylesheet" />
	<link href="/bootstrap/css/bootstrap-resposive.css" type="text/css"
	rel="stylesheet" />
	<link href="/bootstrap/css/bootstrap-responsive.min.css" type="text/css"
	rel="stylesheet" />
	<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
	</head>
<body>
<div class="navbar navbar-inverse">
    <div class="navbar-inner">
    <a class="brand" href="#">Customer</a>
    <ul class="nav">
    <li><a href="list">Home</a></li>
    <li><a href="addCustomerPage">add</a></li>
    </ul>
    </div>
    </div>
     <div class="hero-unit">
<div class="container">
	<h2><i class="icon-edit icon-warning"></i>Update Customer</h2>
 
	<%
		Entity customer = (Entity)request.getAttribute("customer");
	%>
 
	<form method="post" action="../update" >
		<input type="hidden" name="originalName" id="originalName" 
			value="<%=customer.getProperty("name") %>" /> 
 
		<table>
			<tr>
				<td>
					UserName :
				</td>
				<td>
					<input type="text" style="width: 185px;" 
                                             maxlength="30" name="name" id="name" 
						value="<%=customer.getProperty("name") %>" />
				</td>
			</tr>
			<tr>
				<td>
					Email :
				</td>
				<td>
					<input type="text" style="width: 185px;" 
                                            maxlength="30" name="email" id="email" 
						value="<%=customer.getProperty("email") %>" />
				</td>
			</tr>
			<tr>
				<td>
					Address :
				</td>
				<td>
					<input type="text" style="width: 185px;" 
                                            maxlength="30" name="address" id="address" 
						value="<%=customer.getProperty("address") %>" />
				</td>
			</tr>
			
		</table>
		<div class="clear"></div>
     <div class="clear height_10"></div>
     <div class="clear height_10"></div>
     <input type="submit" id="searchBtn" class="btn btn-danger span2" value="Update" />
	
	</form>
 </div>
 </div>
</body>
</html>