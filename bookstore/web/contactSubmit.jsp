<%@page language="java" import="java.sql.*"%>
<%
try
{
	String email=request.getParameter("email");
	String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String subject=request.getParameter("subject");
	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3307/bookstore","root","");
	String sql="insert into contact (email,firstname,lastname,subject) values(?,?,?,?)";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1,email);
	ps.setString(2,firstname);
        ps.setString(3,lastname);
        ps.setString(4,subject);
        
	ps.executeUpdate();
	cn.close();
                    response.sendRedirect("query.jsp");
}
catch(Exception ex)
{
	out.println("Error : "+ex.getMessage());
}
%>

