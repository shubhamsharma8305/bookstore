<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String email=request.getParameter("email");
        String psw=request.getParameter("psw");
        String sql="Select * from users where email=? and psw=?";
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore","root","");
        PreparedStatement ps=cn.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, psw);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
            response.sendRedirect("main.jsp");
        else
            response.sendRedirect("loginPage.jsp");
        
 %>