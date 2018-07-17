<%-- 
    Document   : logout
    Created on : 27-Mar-2018, 20:59:33
    Author     : shubh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession session1=request.getSession(false); 
session1.invalidate();
response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
    </body>
</html>
