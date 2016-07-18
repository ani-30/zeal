<%-- 
    Document   : signup
    Created on : Jul 12, 2016, 8:49:45 AM
    Author     : NIC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>LOG IN</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<style>
h1{font-weight:bold;
text-decoration:underline;}
</style>
</head>
<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
<div class="container-fluid" >
<div class="navbar-header">
<div class="container">
<a class="navbar-brand" href="http://www.nitdelhi.ac.in" ><img src="NITD logo.png"><img>NIT DELHI</a>
</div></div>
<ul class="nav navbar-nav navbar-right">
<li> <a href="index.html">Home</a></li>
<li ><a href="events.jsp"> Events</a></li>
<li><a href="sponsors.html"> Sponsors</a></li>
<li><a href="live.jsp"> Live</a></li>
<li><a href="contact.jsp"> Contact</a></li>
<li><a href="signin.html"><span class="glyphicon glyphicon-log-in"></span> Sign in</a></li>
<li class="active"><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Register</a></li>
</ul>
</div>
</nav>
<br><br><br>
<div class="jumbotron">
<h1><center>Register</center></h1>
</div>
<form class="form-horizontal" role="form" action="Reregisteration" method="post">
<div class="container">
<h5><label >Select your Sports:</label></h5>
<div class="checkbox">
  <label ><input type="checkbox" name="sports" value="Cricket">Cricket</label>
</div>
<div class="checkbox">
  <label ><input type="checkbox" name="sports" value="Kabaddi">Kabaddi</label>
</div>
<div class="checkbox">
  <label class=><input type="checkbox"name="sports" value="Volleyball" >Volleyball</label>
</div>
<div class="checkbox">
  <label><input type="checkbox" name="sports" value="Football">Football</label>
</div>
<div class="checkbox">
  <label><input type="checkbox" name="sports" 
                value="Basketball">Basketball</label>
</div>
<div class="checkbox ">
  <label ><input type="checkbox" name="sports" value="Table Tennis" >Table Tennis</label>
</div>
<div class="checkbox">
  <label ><input type="checkbox" name="sports" value="Chess">Chess</label>
</div>
<div class="checkbox">
  <label ><input type="checkbox" name="sports" value="Athletics">Athletics</label>
</div>
<div class="checkbox">
  <label ><input type="checkbox" name="sports" value="Badminton" >Badminton</label>
</div>
</div>




  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form>



<div class="container-fluid text-center">
<div class="jumbotron">
<h4>Proudly Presented by:<h4>
<p> NIT DELHI</p>
  <a href="https://www.facebook.com/zealnitdelhi/?fref=ts"><i class="fa fa-facebook"></i></a>

</div>
</div>





</body>
</html>
