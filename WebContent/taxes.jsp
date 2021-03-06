<%@ page language="java" import="java.io.*,java.sql.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Taxes</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
     
     

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">FINANCIAL MANAGEMENT</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="features.jsp">Features</a></li>
            <li><a href="contact.jsp">Contact</a></li>
          </ul>
         
        </div>
      </div>
    </nav>

    <div class="container-fluid">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a href="home.jsp">Home <span class="sr-only">(current)</span></a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="employee.jsp">Employees</a></li>
            <li><a href="funds.jsp">Funds</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li class="active"><a href="taxes.jsp">Taxes</a></li>
            <li><a href="pfyearly.jsp">PF(Yearly)</a></li>
            <li><a href="pfmonthly.jsp">PF(Monthly)</a></li>
            <li><a href="medivel.jsp">Travel & Medical</a></li>
          </ul>
        </div>
        
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">TAXES</h1>
    
   
  
<%
  			Connection con=null;
 			 Statement st=null;
  			ResultSet rs=null;
 
			
			Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?"+"user=root&password=12345");
    %>
			 <div class="table">
			<table class="table table-striped">
			<thead>
			  <tr>
			  	<th>EMP ID</th>
				<th>NAME</th>			
				<th>ADDRESS</th>
				<th>DEPARTMENT</th>
				<th>PAYGRADE</th>
				<th>TAXES</th>
			  </tr>
			
			
			<% 
			try
				{
					st = con.createStatement();
					String sql = "select * from taxes";
					rs=st.executeQuery(sql);
				while(rs.next())
					{
					%>
					<tr>
 					<td><%=rs.getString("empid") %></td>
 					<td><%=rs.getString("fname")+rs.getString("lname") %></td>
      				<td><%=rs.getString("address") %></td>
      				<td><%=rs.getString("dept") %></td>
      				<td><%=rs.getString("paygrade") %></td>
      				<td><%=rs.getString("taxes") %></td>
      				
      			</tr>
					<% 
					}
				}
				catch(Exception e)
					{
					e.printStackTrace();
					}
			%>
			</table>
			 <%
  			Connection con1=null;
 			 Statement st1=null;
  			ResultSet rs1=null;
 
			
			Class.forName("com.mysql.jdbc.Driver");
    		con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?"+"user=root&password=12345");
    %>
			<br><br><br>
			<div class="table">
			<table class="table table-striped">
			<thead>
			  <tr>
			  	<th>CON ID</th>
				<th>NAME</th>			
				<th>ADDRESS</th>
				<th>DEPARTMENT</th>
				<th>PAYGRADE</th>
				<th>TAXES</th>
			  </tr>
			
			
			
			<% 
			try
				{
					st1 = con1.createStatement();
					String sql1 = "select * from contaxes";
					rs1=st1.executeQuery(sql1);
				while(rs1.next())
					{
					%>
					<tr>
 					<td><%=rs1.getString("conid") %></td>
 					<td><%=rs1.getString("fname")+rs1.getString("lname") %></td>
      				<td><%=rs1.getString("address") %></td>
      				<td><%=rs1.getString("dept") %></td>
      				<td><%=rs1.getString("paygrade") %></td>
      				<td><%=rs1.getString("taxes") %></td>
      				
      			</tr>
					<% 
					}
				}
				catch(Exception e)
					{
					e.printStackTrace();
					}
			%>
			</tbody>
			</table>
			</div>
			</div>
			</div>
			 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
			
			
</body>
</html>s