<jsp:useBean id="register_course" class="model.Course" scope="request"/>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ThankYou</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css" /> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="background-color: violet;">
<!-- navigation -->
    <nav class="navbar navbar-expand-lg navbar-light sticky-top" style="background: transparent;">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
  </button> 
  <!-- Links -->  
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
  	<ul class="navbar-nav mr-auto mt-2 mt-sm-0">
  		<li class="nav-item">
        	<a class="nav-link" href="index.html"><span class="mylink" >Home</span></a>
        </li>
         
        <li class="nav-item">
           	<a class="nav-link" href="training"><span class="mylink">Register courses</span></a>
        </li>
  	</ul>         
  </div>
 </nav> <br>
 
  <div class="container">
 	<h2 style="text-align: center"> Thank you for your registering.</h2><br>
	<div style="text-align: center">
		<h4>We will send more detail about your selected course to your via e-mail.</h4>
		<h4> Have a grate day.</h4>
	 </div><br>
	
	<h3>Session register Information</h3>

	<table border="1" width="50%">
		<tr>
			<td>Registered Name</td>
			<td><jsp:getProperty name="register_course" property="userName"/></td>
		</tr>
		<tr>
			<td>Registered Email</td>
			<td><jsp:getProperty name="register_course" property="email"/></td>
		</tr>
		<tr>
			<td>Registered Phone</td>
			<td><jsp:getProperty name="register_course" property="phone"/></td>
		</tr>
		<tr>
			<td>Registered Course</td>
			<td><jsp:getProperty name="register_course" property="course"/></td>
		</tr>
	</table>
	<br>
	<input type="button" value="Return" onclick="javascript:history.back()">
  </div>
       
        <!-- Footer -->

        <div class="row">
            <div class="col-sm-12 copy" align="center">
                Copyright &copy; 2022 Designed by MTK
            </div>
        </div>
</body>
</html>