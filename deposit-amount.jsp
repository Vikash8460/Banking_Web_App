<%@ include file='menu.jsp' %>
<body onload='makeActive("deposit")'>
<form action='deposit.jsp'>
<table class='ta'>
 <tr>
  <td class='la'>Enter amount:</td>
  <td><input type='text' class='tb' id="amount" name='amount'></td>
  <td><button class='bt' onclick='return checkValue("amount")'>Deposit Money</button></td>
 </tr>
</table>
</form>
</body>