<body onload='makeActive("transfer")'>
<%@ include file='conn.jsp' %>
<%@ include file='menu.jsp' %>
<%
String acn=request.getParameter("acn");
String useracn=(String)session.getAttribute("accountno");
if(acn.equals(useracn))
{
	%>
	<div class='dv'>
 		<h2 style='color:red'>Dear <%=session.getAttribute("username")%>,Given account number(<%=acn%>) is your own</h2>
	</div>
	<%
	return;
}
String sql="select * from accountinfo where accountno=?";
PreparedStatement ps=cn.prepareStatement(sql);
ps.setString(1,acn);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	session.setAttribute("racn",acn);
	session.setAttribute("rname",rst.getString(3));
	%>
	<form action='transfer.jsp'>
	<table class='ta'>
	 <tr>
	  <td class='la'>Enter amount:</td>
	  <td><input type='text' class='tb' name='amount'></td>
	  <td><button class='bt'>Transfer Money</button></td>
	 </tr>
	</table>
	</form>
	<%
	return;
}
%>
<div class='dv'>
 <h2 style='color:red'>Dear <%=session.getAttribute("username")%>,Given account number(<%=acn%>) does not exist</h2>
</div>
</body>