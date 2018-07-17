

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books</title>
    </head>
    <body>
     <%
     try{
         String book_name = request.getParameter("sbook");
          Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore","root","");
            
         
          Statement stmt = con.createStatement();
           ResultSet rs = stmt.executeQuery("select bname,bdes,bloc from books where bname = '"+book_name+"'");
         
         while(rs.next())
         {
             String book = rs.getString("bname");
             String book_des = rs.getString("bdes");
             String bloc = rs.getString("bloc");
             %>
             <h1 style="width: 800px"> <%
              out.print( " "+book_des);
             %>
             
             <br><a href="http://localhost:8080/bookstore<%out.println(bloc);%>"><img src="download.jpg" class="img-responsive" style="width:100%" alt="Image"></a></h1>
             
            <%
         }
        }catch(Exception e){
            
        }
     %>
    </body>
</html>

