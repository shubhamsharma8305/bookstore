<%@page language="java" import="java.sql.*"%>
<%
try
{
	String email=request.getParameter("email");
	String psw=request.getParameter("psw");
	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore","root","");
	String sql="insert into users (email,psw) values(?,?)";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1,email);
	ps.setString(2,psw);
	ps.executeUpdate();
	cn.close();
                    response.sendRedirect("loginPage.jsp");
}
catch(Exception ex)
{
	out.println("Error : "+ex.getMessage());
}
%>

