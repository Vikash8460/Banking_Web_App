<body onload='makeActive("withdraw")'>
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
%>
<div class='dv'>
 <h2>Dear <%=session.getAttribute("username")%>,Amount &#8377;<%=wamount%> debited from your account</h2>
</div>
</body>