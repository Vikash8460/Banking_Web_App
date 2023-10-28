<%@ include file='conn.jsp' %>
<%@ include file='menu.jsp' %>
<%
String sql="update accountinfo set amount=amount+? where accountno=?";
PreparedStatement ps=cn.prepareStatement(sql);
String amt=request.getParameter("amount");
ps.setString(1,amt);
ps.setString(2,(String)session.getAttribute("accountno"));
ps.executeUpdate();
%>
<body onload='makeActive("deposit")'>
<div class='dv'>
 <h2>Dear <%=session.getAttribute("username")%>,amount &#8377;<%=amt%> credited into your account</h2>
</div>
</body>