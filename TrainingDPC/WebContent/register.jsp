<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.util.List"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css" /> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Register course</title>
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
           	<a class="nav-link active" href="training"><span class="mylink">Register course</span></a>
        </li>
  	</ul>         
  </div>
 </nav> <br>
  
 <div class="container">
	<h1>Register course</h1>
 	<form action="registerSession" method="post" >
  		<table>
  			<tr>
				<td><label for="name">Name</label></td>
				<td><input type="text" name="name" placeholder="Enter your name" required /></td>
			</tr> 
    		<tr>      
   				<td><label for="email">E-mail</label></td>
    			<td><input type="email" name="email" placeholder="Enter your email" required /></td>
   			</tr>
   			<tr>      
   				<td><label for="phone">Phone</label></td>
    			<td><input type="text" name="phone" placeholder="Enter your phone number" required /></td>
   			</tr>
   			<tr>
    			<td>Select Course</td>
    			<td><select name="course">
    			<%
    			if (request.getAttribute("mycourses") != null) 
    			{
    				List<String> courses = (List<String>) request.getAttribute("mycourses");
    				for (int i = 0; i < courses.size(); i++) {
    			%>
       					<option><%=courses.get(i)%></option>
    			<%  
    				}
    			}
    			%>
				</select></td>
	 		</tr> <br> 
	 		<tr><td colspan="2"><input type="submit" value="Submit"/></td></tr>
  	  	</table>
  	</form>  	
  </div>
          <!-- Footer -->

        <div class="row">
            <div class="col-sm-12 copy" align="center">
                Copyright &copy; 2022 Designed by MTK
            </div>
        </div>
</body>
</html>