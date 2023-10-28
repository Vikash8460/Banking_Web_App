<%@ include file='menu.jsp' %>
<body onload='makeActive("withdraw")'>
<form action='withdraw.jsp'>
<table class='ta'>
 <tr>
  <td class='la'>Enter amount:</td>
  <td><input type='text' class='tb' id='amount' name='amount'></td>
  <td><button class='bt' onclick='return checkValue("amount")'>Withdraw Money</button></td>
 </tr>
</table>
</form>
</body>