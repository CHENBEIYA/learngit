<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>我在测试GIT呀~~~</title>
<script language="JavaScript" type="text/javascript">

  function custCheck(){

    var custName = document.getElementById("custName");

    var email = document.getElementById("email");

    var phone = document.getElementById("phone");

    if(custName.value==""){

      alert("客户名不能为空!");

      return false;

    }else if(email.value.indexOf("@")==-1){

       alert("电子邮件中应包含@字符!");

       return false;

    }else if(phone.value.length!=8){

       alert("电话号码应是8位数字!");

       return false;

    }

  }

</script>

<style type="text/css">

     *,input {font-size:11pt;color:black}

</style>

</head>
<body>
<form action="/helloweb/inputCustomer" 

      method="post" onSubmit="return custCheck()">

请输入客户信息：

<table>

<tr><td>客户名:</td>

          <td><input type="text" name="custName" id="custName"></td>

</tr>

<tr><td>Email地址:</td>

          <td><input type="text" name="email" id="email"></td>

</tr>

<tr><td>电话:</td>

    <td><input type="text" name="phone" id="phone"></td>

</tr>

</table>

<input type="submit" value="确定">

<input type="reset" value="重置">

</form>

</body>
</html>