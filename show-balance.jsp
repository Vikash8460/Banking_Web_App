<%@ include file='conn.jsp' %>
<%@ include file='menu.jsp' %>
<%
String sql="select amount from accountinfo where accountno=?";
PreparedStatement ps=cn.prepareStatement(sql);
ps.setString(1,(String)session.getAttribute("accountno"));
ResultSet rst=ps.executeQuery();
rst.next();
String amount=rst.getString(1);
%>
<body onload='makeActive("balance")'>
<div class='dv'>
 <h2>Dear <%=session.getAttribute("username")%>,your total balance amount is:&#8377;<%=amount%></h2>
</div>
</body>