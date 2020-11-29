<%@page contentType="text/html; charset=UTF-8" %>
<HTML>
<HEAD><TITLE>轻量级javaee 第二章 62页</TITLE> </HEAD>
<BODY>
 second.jsp 每个jsp页面就是一个Servlet实例
<br/>
<%for(int i = 0; i < 7; i++){
  out.println("<font size='"+i+"'>");
%>
疯狂java (Wild java)</font>
<br/>
<%}%>
</BODY>
</HTML>
