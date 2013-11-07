<!DOCTYPE html>
<html lang="en">
<head>
		<link href="/bootstrap/css/bootstrap.css" type="text/css"
	rel="stylesheet" />
	<link href="/bootstrap/css/bootstrap-resposive.css" type="text/css"
	rel="stylesheet" />
	<link href="/bootstrap/css/bootstrap-responsive.min.css" type="text/css"
	rel="stylesheet" />
	<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
 
 	<style type="text/css">
 	 #push,
      #footer {
        height: 60px;
      }          
      @media (max-width: 767px) {
        #footer {
          margin-left: -20px;
          margin-right: -20px;
          padding-left: 20px;
          padding-right: 20px;
        }
      }		 
		
		</style>
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

	<h2><i class="icon-user icon-warning"></i>Add Customer</h2>
 
	<form method="post" action="add" >
		<table>
	
			<tr>
			

				<td>
					<div class="input-prepend"><span class="add-on">UserName </span>
					<input type="text" class="span2" id="prependedInput"  
                                              maxlength="30" name="name" id="name" />
					</div>
					
				</td>
				
				
			</tr>
			
			<tr>
				<td>
					<div class="input-prepend"><span class="add-on">Email</span>
				
			
					<input type="text" class="span3" id="prependedInput"  
                     maxlength="30" name="email" id="email" />
				</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="input-prepend"><span class="add-on">Address</span>
				
			
					<input type="text" class="span3" 
                     maxlength="30" name="address" id="address" />
				</div>
				</td>
			</tr>
		</table>
		 <div class="clear"></div>
     <div class="clear height_10"></div>
     <div class="clear height_10"></div>
     <input type="submit" id="searchBtn" class="btn btn-success span2" value="submit" />
     <input type="reset" class="btn btn-warning span2" value="Reset" />
		
	</form>
	
 </div>
 </div>
 <div id="push"></div>
 <div id="footer">
      <div class="container">
      <div class="clear height_10" style="border-bottom: solid 1px #DADADA;"></div>
        <p class="muted credit">Example courtesy <a href="http://martinbean.co.uk">Martin Bean</a> and <a href="http://ryanfait.com/sticky-footer/">Ryan Fait</a>.</p>
      </div>
    </div>
</body>
</html>