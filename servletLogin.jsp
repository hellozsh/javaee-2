
<%@page contentType="text/html; charset=UTF-8" %>
<HTML>
<HEAD><TITLE>   轻量级javaee 第二章</TITLE></HEAD>
<BODY>
116 Servlet作为控制器 <br/>
<span style="color:red;font-weight:bold">
<% 
 if(request.getAttribute("err") != null) {
   out.println(request.getAttribute("err")+"<br/>");
 }
 %>
</span>
请输入用户名和密码
<form id="login" method="post" action="login">
用户名:<input type="text" name="username" /> <br/>
密码 : <input type="password" name="pass" /> <br/>
<input type="submit" value="登录" /> <br/>
</form>
</BODY>

