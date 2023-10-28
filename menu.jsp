<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
	return;
}
%>
<script src='js/validation.js'></script>
<link href='css/st1.css' rel='stylesheet'>
<img src="images/bank.jpg" height="29%" width="100%">
<hr style='border:2px dashed red'>
<%
String name=(String)session.getAttribute("username");
String an=(String)session.getAttribute("accountno");
%>
<table class='tamn'>
 <tr>
  <td align='center'><label class='lamn'>Account holder name:</label><label class='lana'><%=name%></label></td>
  <td align="center"><label class='lamn'>Account number:</label><label class='lana'><%=an%></label></td>
 </tr>
</table>
<hr style='border:2px dashed red'>
<hr>
 <table class='tamenu'>
  <tr>
   <td align='center'><a id='home' class='at' href='/bank-app2'>Home</a></td>
   <td align='center'><a id='balance' class='at' href='show-balance.jsp'>View Balance</a></td>
   <td align='center'><a id='deposit' class='at' href='deposit-amount.jsp'>Deposit Money</a></td>
   <td align='center'><a id='withdraw' class='at' href='withdraw-amount.jsp'>Withdraw Money</a></td>
   <td align='center'><a id='transfer' class='at' href='transfer-amount.jsp'>Transfer Money</a></td>
   <td align='center'><a class='at' href='#'>Change Password</a></td>
   <td align='center'><a class='at' href='logout.jsp'>Logout</a></td>
  </tr>
 </table>
<hr>