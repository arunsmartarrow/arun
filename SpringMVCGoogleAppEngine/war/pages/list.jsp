<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>

<html>
	<head>
		<link href="/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet" />
		<link href="/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
		<link href="/bootstrap/css/bootstrap-resposive.css" type="text/css" rel="stylesheet" />
		<link href="/bootstrap/css/bootstrap-responsive.min.css" type="text/css" rel="stylesheet" />
		<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
		<link rel="stylesheet" href="/css/jquery.fileupload-ui.css">
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
		
		<!-- script -->
		<script src="http://code.jquery.com/jquery-1.4.1.js"></script>
		<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>
		<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
		<script src="/bootstrap/js/bootstrap.js"></script>
		<script src="http://code.jquery.com/jquery-1.4.1.js"></script>
		<script type="text/javascript">
		function display( arg1)
		{
			 //document.getElementById('arg1').value;
			alert('Hello World!'+arg1);
		}
		</script>
		<script type="text/javascript">
		
		$(document).ready(function () {
	        $('#searchid').click(function () {
	            jQuery.support.cors = true;
	            var searchText = document.getElementById('arg1').value;

	            $.ajax(
	                {
	                    type: "GET",
	                      url: 'http://localhost:8888/customer/list?str='+searchText,
	                            data: "{}",
	                    contentType: "application/json; charset=utf-8",
	                    dataType: "json",
	                    success: function (data) {

	                    //    alert('success');
	                        $.each(data, function (i, theItem) {
	                            var combo = document.getElementById("cboFastBikes");
	                            var option = document.createElement("option");
	                            option.text = theItem.toString();
	                            option.value = theItem.toString();
	                            try {
	                                //alert('success add combo');
	                                combo.add(option, null); // Other browsers
	                            }
	                            catch (error) {
	                                alert('error found');
	                                combo.add(option); // really old browser
	                            }

	                        });
	                    },
	                    error: function (msg, url, line) {
	                        alert('error trapped in error: function(msg, url, line)');
	                        alert('msg = ' + msg + ', url = ' + url + ', line = ' + line);

	                    }
	                });


	            //alert('button click');

	        });
	    });
		
		
		</script>
		
		<style type="text/css">
		 
		 	 #wrap > .container {
       		 	padding-top: 60px;
     		 }
      		.container .credit {
        		margin: 20px 0;
      		}

      		
		
		</style>
	</head>
<script type="text/javascript">
function searchSubmit()
{
	var searchText = document.getElementById('searchTerm').value;
	
	
	}


function doSearch() {

	var searchText = document.getElementById('searchTerm').value;
	
	var targetTable = document.getElementById('mytable');
	var targetTableColCount;

	//Loop through table rows
	for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
		var rowData = '';

		//Get column count from header row
		if (rowIndex == 0) {
			targetTableColCount = targetTable.rows.item(rowIndex).cells.length;
			continue; //do not execute further code for header row.
		}

		//Process data rows. (rowIndex >= 1)
		for (var colIndex = 0; colIndex < targetTableColCount; colIndex++) {
		
		rowData += targetTable.rows.item(rowIndex).cells.item(colIndex).textContent;
}
}

		//If search term is not found in row data
		//then hide the row, else show
		if (rowData.indexOf(searchText) == -1)
			targetTable.rows.item(rowIndex).style.display = 'none';
		else
			targetTable.rows.item(rowIndex).style.display = 'table-row';
	}
}

</script>

<script type="text/javascript" name="search"></script>


 <script name="search">
    $(document).ready(function () {
        $('#searchid').click(function () {
            jQuery.support.cors = true;
            var searchText = document.getElementById('searchTerm').value;

            $.ajax(
                {
                    type: "GET",
                      url: 'http://localhost:8888/customer/list?str='+searchText,
                            data: "{}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {

                    //    alert('success');
                        $.each(data, function (i, theItem) {
                            var combo = document.getElementById("cboFastBikes");
                            var option = document.createElement("option");
                            option.text = theItem.toString();
                            option.value = theItem.toString();
                            try {
                                //alert('success add combo');
                                combo.add(option, null); // Other browsers
                            }
                            catch (error) {
                                alert('error found');
                                combo.add(option); // really old browser
                            }

                        });
                    },
                    error: function (msg, url, line) {
                        alert('error trapped in error: function(msg, url, line)');
                        alert('msg = ' + msg + ', url = ' + url + ', line = ' + line);

                    }
                });


            //alert('button click');

        });
    });
</script>

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
 
	<p>Taxi drivers provide an essential service bringing holiday
			makers to airports, children to school, shoppers back home and
			helping those with mobility problems get from A to B.</p>





		<span class="btn btn-success fileinput-button"> <i
			class="glyphicon glyphicon-plus"></i>
		</span>
	<div class="container-fluid">
			<div class="row-fluid">
				<div class="span4">
					<!--Sidebar content-->
					<h2>Customer</h2>
					<i class="icon-search"></i>
               
                        <input type="text" id="searchTerm" size="20" width="20" />
                        <input type="button"   id="searchid"/>
				</div>
	<div class="span8">
					<!--Body content-->
					<table id="mytable" class="table table-hover" border="0">
		<thead>
		
			<tr>
				<td>Name</td>
				<td>Email</td>
				<td>Address</td>
				<td>Created Date</td>
				<td>Action</td>
				
				
			</tr>
		
		</thead>
		
		
		<%
		    List<Entity> customers = (List<Entity>)request.getAttribute("customerList");
		    for(int i=0;i<customers.size();i++){
                    Entity e=customers.get(i);
		%>
			<tr>
			  <td><%=e.getProperty("name") %></td>
			  <td><%=e.getProperty("email") %></td>
			  
			  <td><input type="hidden" id="<%=i %>" value="<%=e.getProperty("address") %>">
			  <a href="#" onclick="display(<%=i %>);"><%=e.getProperty("address") %></a></td>
			  <td><%=e.getProperty("date") %></td>
			  <td><a href="update/<%=e.getProperty("name")%>">Update</a> 
                             | <a href="delete/<%=e.getProperty("name")%>">Delete</a></td>
			</tr>
		<%
			}
		%>
	</table>
	</div>
			</div>
		</div>
	</div>
 <div id="footer">
 	  <div class="clear height_10" style="border-bottom: solid 1px #DADADA;"></div>
      <div class="container">
        <p class="muted credit">Example courtesy Arun </p>
      </div>
    </div>
</body>
</html>