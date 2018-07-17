<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/png" href="favicon.ico"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
    </head>
    <body>
        <%
         try{
        HttpSession session1=request.getSession(false);  
        if(session1.isNew()){  
        String email=(String)session1.getAttribute("email");  
        out.println(email);
        }
             
             Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore","root","");
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("select * from users");
          rs.next();
          String email = rs.getString("email");
          %>
           <div class="jumbotron">
  <div class="container text-center">
    <h1>Online Book Store</h1>      
    <p>Books are your best friend</p>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Book Store</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>`1`
        <li><a href="#">Categories</a></li>
        <li><a href="contactPage.jsp">Contact Us</a></li>
   <form class="navbar-form navbar-left" method="post" action="books.jsp">
      <div class="form-group">
        <input type="text" name="sbook" class="form-control" placeholder="Search" name="search">
      </div>
      <button type="submit" class="btn btn-default">Search</button>
    </form>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.jsp"><span class="glyphicon glyphicon-user"></span><%out.println(email);%><form method="link" action="logout.jsp">
    <input type="submit" value="Logout"/>
</form></a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Your Books</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Book1</div>
        <div class="panel-body"><img src="cd.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer"><a href="cd.pdf"><button type="button" class="btn btn-info">Read</button></a></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Book2</div>
        <div class="panel-body"><img src="se.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer"><a href="se.pdf"><button type="button" class="btn btn-info">Read</button></a></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Book3</div>
        <div class="panel-body"><img src="cn.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer"><a href="cn.pdf"><button type="button" class="btn btn-info">Read</button></a></div>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
 <div class="container">                  
  <ul class="pager">
  <li><a href="#">Previous</a></li>
  <li><a href="#">Next</a></li>
</ul>
</div>
  <p>&copy Online Book Store</p>
  </form>
</footer>
           <%
         }catch(Exception e){
          out.println(e);
         }
     
          
       
        %>
        
 
    </body>
</html>
