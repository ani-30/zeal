<%-- 
    Document   : events
    Created on : Jul 10, 2016, 12:34:05 AM
    Author     : NIC
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<li class="active"><a href="events.jsp"> Events</a></li>
<li><a href="sponsors.html"> Sponsors</a></li>
<li><a href="live.jsp"> Live</a></li>
<li><a href="contact.jsp"> Contact</a></li>
<li><a href="signin.html"><span class="glyphicon glyphicon-log-in"></span> Sign in</a></li>
<li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Register</a></li>
</ul>
</div>
</nav>
<br>
<br>
<br>
<div class="jumbotron">
<center>
<h1><center>Events</center></h1>
</div>
<%try{
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          Connection con = DriverManager.getConnection("jdbc:sqlserver://ANI;databaseName=zeal;user=sa;password=sa123");
PreparedStatement ps;
          ps=con.prepareStatement("select * from EVENTS");
           ResultSet rs=ps.executeQuery();
          rs.next();
              String eventname=rs.getString("Eventname");
              String eventphoto=rs.getString("Eventphoto");

%>
<!--image gallery-->
<div class="row">
<div class="col-md-4">
    <h3>
        <%=eventname%>
    </h3>
    <img src=<%=eventphoto%> alt="Basketball "></img>
</div>
<div class="col-md-4">
    <%rs.next();
               eventname=rs.getString("Eventname");
              eventphoto=rs.getString("Eventphoto");
    %>
<h3><%=eventname%></h3>
<img src=<%=eventphoto%> alt="Football"></img>
</div>
<div class="col-md-4">
    <%rs.next();
               eventname=rs.getString("Eventname");
              eventphoto=rs.getString("Eventphoto");
    %>
    <h3><%=eventname%></h3>
<img src=<%=eventphoto%> alt="VOlleyball"></img>
</div>
</div>

<div class="row">
<div class="col-md-4">
    <%rs.next();
               eventname=rs.getString("Eventname");
              eventphoto=rs.getString("Eventphoto");
    %>
<h3><%=eventname%></h3><img src=<%=eventphoto%> alt="Chess"></img>
</div>
<div class="col-md-4">
      <%rs.next();
               eventname=rs.getString("Eventname");
              eventphoto=rs.getString("Eventphoto");
    %>
    <h3><%=eventname%></h3>
<img src=<%=eventphoto%> alt="Kabaddi"></img>
</div>
<div class="col-md-4">
      <%rs.next();
               eventname=rs.getString("Eventname");
              eventphoto=rs.getString("Eventphoto");
    %>
<h3><%=eventname%></h3>
<img src=<%=eventphoto%> alt="Cricket"></img>
</div>
</div>

<div class="row">
<div class="col-md-4">
    <%rs.next();
               eventname=rs.getString("Eventname");
              eventphoto=rs.getString("Eventphoto");
    %>
    <h3><%=eventname%></h3>
<img src=<%=eventphoto%> alt="Athletics"></img>
</div>
<div class="col-md-4">
    <%rs.next();
               eventname=rs.getString("Eventname");
              eventphoto=rs.getString("Eventphoto");
    %>
<h3><%=eventname%></h3>
<img src=<%=eventphoto%> alt="Badminton"></img>
</div>
<div class="col-md-4">
    <%rs.next();
               eventname=rs.getString("Eventname");
              eventphoto=rs.getString("Eventphoto");
    %>
    <h3><%=eventname%></h3>
<img src=<%=eventphoto%> alt="Table Tennis"></img>
</div>
</div>
<center>
<%
}
catch(Exception e)
{
}
%>


<div class="container-fluid text-center">
<div class="jumbotron">
<h4>Proudly Presented by:<h4>
<p> NIT DELHI</p>
  <a href="https://www.facebook.com/zealnitdelhi/?fref=ts"><i class="fa fa-facebook"></i></a>

</div>
</div>

</body>
</html>
