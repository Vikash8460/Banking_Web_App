<%@ include file='conn.jsp' %>
<%
String uid=request.getParameter("uid");
String pa=request.getParameter("pass");
String sql="select * from accountinfo where userid=? and password=?";
PreparedStatement ps=cn.prepareStatement(sql);
ps.setString(1,uid);
ps.setString(2,pa);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	//session.setMaxInactiveInterval(20);
	String name=rst.getString(3);
	String an=rst.getString(4);
	session.setAttribute("username",name);//storing username into session object
	session.setAttribute("accountno",an);//storing account number into session object
	response.sendRedirect("/bank-app2");//home page will be sent
}
else
{
	%>
	<jsp:include page="login.jsp" />
	<div class='dv'>
	 <h2 style='color:red'>User id or password is incorrect</h2>
	</div>
	<%
}
%>