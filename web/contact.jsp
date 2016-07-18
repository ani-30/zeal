<%-- 
    Document   : Contact
    Created on : Jul 8, 2016, 2:19:23 AM
    Author     : NIC
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <title>Zeal</title>
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
p{font-weight:bold;} 
 
  </style>
  <script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(28.8432494,77.1049614),
    zoom:16,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
  
  var marker=new google.maps.Marker({
  position:new google.maps.LatLng(28.8432494,77.1049614),
  animation:google.maps.Animation.BOUNCE
  });
  
  marker.setMap(map);
  
  var infowindow = new google.maps.InfoWindow({
  content:"WE ARE HERE!"
  });

infowindow.open(map,marker);

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>
<body>

<!--Navigation bar-->
<nav class="navbar navbar-fixed-top navbar-inverse">
<div class="container-fluid" >
<div class="navbar-header">
<div class="container">
<a class="navbar-brand" href="http://www.nitdelhi.ac.in" ><img src="NITD logo.png"><img>NIT DELHI</a>
</div></div>
<ul class="nav navbar-nav navbar-right">
<li> <a href="index.html">Home</a></li>
<li><a href="events.jsp"> Events</a></li>
<li><a href="sponsors.html"> Sponsors</a></li>
<li><a href="live.jsp"> Live</a></li>
<li class="active"><a href="contact.jsp"> Contact</a></li>
<li><a href="signin.html"><span class="glyphicon glyphicon-log-in"></span> Sign in</a></li>
<li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Register</a></li>
</ul>
</div>
</nav>
<br><br><br>
<div class="jumbotron">
<h1><center>Spot Us Here</center></h1>
</div>
<div class="container">
<center><div id="googleMap" style="width:500px;height:380px;"></div><center>
</div>
<div class="jumbotron">
<h1><center>Contact</center></h1>
</div>

<center><div class="container">
  <div id="Contact">
       <h2><u>Our Team</u></h2> 
       <br><br><br>
       <%try
       {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          Connection con = DriverManager.getConnection("jdbc:sqlserver://ANI;databaseName=zeal;user=sa;password=sa123");
           PreparedStatement ps=con.prepareStatement("Select * from CONTACTS");
           ResultSet rs=ps.executeQuery();
           rs.next();
               String contactname=rs.getString("Contactname");
               String phoneno=rs.getString("Phoneno");
               String designation=rs.getString("Designation");
               String photoname=rs.getString("Photoname");
          
           %>
           
           
           
           
           
           
       
       
         <div class="row">
  <div class="col-sm-4">
      <p><strong><%=contactname%></strong></p><br>
	  	  <a href="#demo" data-toggle="collapse">
              <img src=<%=photoname%> class="img-circle person" alt="Random Name">
	  </a>
	  <div id="demo" class="collapse">
	  <p><%=contactname%></p>
      <p><%=phoneno%></p>
      <p><%=designation%></p>
	  </div>
          <%  rs.next();
              contactname=rs.getString("Contactname");
               phoneno=rs.getString("Phoneno");
               designation=rs.getString("Designation");
               photoname=rs.getString("Photoname");
          
              %>
  </div>
    
  <div class="col-sm-4">
	  <p><strong><%=contactname%></strong></p><br>
      <a href="#demo2" data-toggle="collapse">
      <img src=<%=photoname%> class="img-circle person" alt="Random Name">
    </a>
    <div id="demo2" class="collapse">
       <p><%=contactname%></p>
      <p><%=phoneno%></p>
      <p><%=designation%></p>
    </div>
        <%  rs.next();
              contactname=rs.getString("Contactname");
               phoneno=rs.getString("Phoneno");
               designation=rs.getString("Designation");
               photoname=rs.getString("Photoname");
          
              %>
  </div>
  <div class="col-sm-4">
	  <p><strong><%=contactname%></strong></p><br>
      <a href="#demo3" data-toggle="collapse">
      <img src=<%=photoname%> class="img-circle person" alt="Random Name">
    </a>
    <div id="demo3" class="collapse">
       <p><%=contactname%></p>
      <p><%=phoneno%></p>
      <p><%=designation%></p>
    </div>
         <%  rs.next();
              contactname=rs.getString("Contactname");
               phoneno=rs.getString("Phoneno");
               designation=rs.getString("Designation");
               photoname=rs.getString("Photoname");
          
              %>
  </div>
  </div>
  <br><br><br>
        <div class="row">
  <div class="col-sm-4">
	  <p><strong><%=contactname%></strong></p><br>
	  <a href="#demo_" data-toggle="collapse">
      <img src=<%=photoname%> class="img-circle person" alt="Random Name">
	  </a>
	  <div id="demo_" class="collapse">
	  <p><%=contactname%></p>
      <p><%=phoneno%></p>
      <p><%=designation%></p>
	  </div>
               <%  rs.next();
              contactname=rs.getString("Contactname");
               phoneno=rs.getString("Phoneno");
               designation=rs.getString("Designation");
               photoname=rs.getString("Photoname");
          
              %>
  </div>
  <div class="col-sm-4">
	  <p><strong><%=contactname%></strong></p><br>
      <a href="#demo_2" data-toggle="collapse">
      <img src=<%=photoname%> class="img-circle person" alt="Random Name">
    </a>
    <div id="demo_2" class="collapse">
       <p><%=contactname%></p>
      <p><%=phoneno%></p>
      <p><%=designation%></p>
    </div>
         <%  rs.next();
              contactname=rs.getString("Contactname");
               phoneno=rs.getString("Phoneno");
               designation=rs.getString("Designation");
               photoname=rs.getString("Photoname");
          
              %>
  </div>
  <div class="col-sm-4">
	  <p><strong><%=contactname%></strong></p><br>
      <a href="#demo_3" data-toggle="collapse">
      <img src=<%=photoname%> class="img-circle person" alt="Random Name">
    </a>
    <div id="demo_3" class="collapse">
       <p><%=contactname%></p>
      <p><%=phoneno%></p>
      <p><%=designation%></p>
    </div>
       
  </div>
  </div>
  </div>  <%    }
       catch(Exception e)
{
    
}%>
    </center>
<div class="container-fluid text-center">
<div class="jumbotron">
<h4>Proudly Presented by:<h4>
<p> NIT DELHI</p>
  <a href="https://www.facebook.com/zealnitdelhi/?fref=ts"><i class="fa fa-facebook"></i></a>

</div>
</div>
</div>
</body>
</html>
