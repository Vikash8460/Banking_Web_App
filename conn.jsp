<%@ page import="java.sql.*" %>
<%
Connection cn=null;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	cn=DriverManager.getConnection("jdbc:mysql://localhost/adv2_4","root","mysql");
}
catch(Exception ex)
{
	out.println(ex);
}
%>
