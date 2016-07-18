<%-- 
    Document   : Welcome
    Created on : Jul 5, 2016, 1:07:24 PM
    Author     : NIC
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
   <style>

 
 
  </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<li class="active"> <a href="index.html">Home</a></li>
<li><a href="events.jsp"> Events</a></li>
<li><a href="sponsors.html"> Sponsors</a></li>
<li><a href="live.jsp"> Live</a></li>
<li><a href="contact.jsp"> Contact</a></li>
<li><a href="signin.html"><span class="glyphicon glyphicon-log-in"></span> Sign in</a></li>
<li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Register</a></li>
</ul>
</div>
</nav><br><br><br><br><br><br>

<div class="jumbotron">
<h1><center>Welcome</center></h1>
</div>
<% try{
          String email=request.getParameter("email");
          String password=request.getParameter("pass");
          Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
          Connection con = DriverManager.getConnection("jdbc:sqlserver://ANI;databaseName=zeal;user=sa;password=sa123");
          PreparedStatement ps,qs;
          qs=con.prepareStatement("select * from EVENTS where Eventname=?");
          ps = con.prepareStatement("select * from REGRECORD where Email=? and Password=?");
          ps.setString(1,email );
          ps.setString(2,password);
          ResultSet rs=ps.executeQuery();
          rs.next();
       
              String name=rs.getString("Name");
              String rollno=rs.getString("RollNo");
              String branch=rs.getString("Branch");
              String event=rs.getString("Events");
              String sex=rs.getString("Sex");
              session.setAttribute("Name",name);
              session.setAttribute("RollNo",rollno);
              session.setAttribute("Branch",branch);
              session.setAttribute("Email",email);
              session.setAttribute("Password",password);
              session.setAttribute("Sex",sex);
              qs.setString(1,event);
              ResultSet rrs=qs.executeQuery();
              
%><center>NAME:<%=name%><br>Roll No:<%=rollno%><br>BRANCH:<%=branch%><br><br>
    <table align="center" border="1" cellpadding="2" cellspacing="2">
<tr>
<th colspan="4" ><center>Events Participated<center></th>
</tr>
<tr>
<th>SPORT</th>
<th>VENUE</th>
<th>DATE</th>
<th>TIME</th>
</tr>
<%if(rrs.next())
{
    String eventname=rrs.getString("Eventname");
    String eventvenue=rrs.getString("Eventvenue");
    String eventdate=rrs.getString("Eventdate");
    String eventtime=rrs.getString("Eventtime");
    
%>
<tr>
    <td><%=eventname%></td>
    <td><%=eventvenue%></td>
    <td><%=eventdate%></td>
    <td><%=eventtime%></td>
</tr>

<%
    while(rs.next())
    {
        event=rs.getString("Events");
 qs.setString(1,event);
               rrs=qs.executeQuery();
               if(rrs.next()){
                 eventname=rrs.getString("Eventname");
     eventvenue=rrs.getString("Eventvenue");
     eventdate=rrs.getString("Eventdate");
    eventtime=rrs.getString("Eventtime");
%>
        
        <tr>
    <td><%=eventname%></td>
    <td><%=eventvenue%></td>
    <td><%=eventdate%></td>
    <td><%=eventtime%></td>
</tr>

  <%  }}%></table><%
                
              
          }
          
          
         
            
}
catch(Exception e)
{
    
}
%>      
      <form action="signin.html">
  <div class="form-group"> 
    
       <button class="btn btn-default"> <a href="signup.jsp">Re-Register</a></button>
      <button type="submit" class="btn btn-default">Log Out!</button>
    
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
