<body onload='makeActive("transfer")'>
<%@ include file='conn.jsp' %>
<%@ include file='menu.jsp' %>
<%
String sql="select amount from accountinfo where accountno=?";
PreparedStatement ps1=cn.prepareStatement(sql);
ps1.setString(1,(String)session.getAttribute("accountno"));
ResultSet rst=ps1.executeQuery();
rst.next();
int total=rst.getInt(1);
int wamount=Integer.parseInt(request.getParameter("amount"));
if(wamount>total)
{
	%>
	<div class='dv'>
 	  <h2 style='color:red'>Dear <%=session.getAttribute("username")%>, You do not have sufficient amount(<%=wamount%>) into your account</h2>
	</div>
	<%
	return;
}
sql="update accountinfo set amount=amount-? where accountno=?";
PreparedStatement ps2=cn.prepareStatement(sql);
ps2.setInt(1,wamount);
ps2.setString(2,(String)session.getAttribute("accountno"));
ps2.executeUpdate();

sql="update accountinfo set amount=amount+? where accountno=?";
PreparedStatement ps3=cn.prepareStatement(sql);
ps3.setInt(1,wamount);
ps3.setString(2,(String)session.getAttribute("racn"));
ps3.executeUpdate();
%>
<div class='dv'>
 <h2>Dear <%=session.getAttribute("username")%>,Amount &#8377;<%=wamount%> transfered from your account to <%=session.getAttribute("rname")%></h2>
</div>
</body>