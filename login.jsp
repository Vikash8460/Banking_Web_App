<link href='css/st1.css' rel='stylesheet'>
<img src="images/bank.jpg" height="29%" width="100%">
<hr style='border:2px dashed red'>
<form action='user-authentication.jsp' method='post'>
  <table align="center" cellpadding="8" height="34%" style="margin-top:20px;font-size:20px;border-radius:0.8em;border-color:green" bgcolor='#AACCBB'>
    <tr>
         <td colspan="2"><div align="center" style="height:32px;font-size:22px;color:White;background-color:#0000FF">
             User Login Form</div></td>
    </tr>
    <tr>
     <td style='font-size:1.1em'><b>User Login Id</b></td>
     <td><input type='text' name='uid' required style='width:300px;height:30;font-size:1em'></td>
    </tr>
    <tr>
     <td style='font-size:1.1em'><b>User Password</b></td>
     <td><input type='password' name='pass' required  style='width:300px;height:30;font-size:1em'></td>
    </tr> 
    <tr>
     <td colspan="2" align="right">
      <input type="submit" value="Login" style="width:80px;height:30px;border-color:black;border-radius:0.3em;font-size:1.1em">
     </td>
    </tr>  
  </table>
</form>