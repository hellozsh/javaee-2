
<%@page contentType="text/html; charset=UTF-8" %>
<HTML>
<HEAD><TITLE>轻量级java 第二章</TITLE></HEAD>
<%!
public int count;
public String info(){
  return "hello";
}
%>
<BODY>
65页 jsp的四种基本语法
<br/>
1.JSP注释 在浏览器查看页面源代码不会看到 %-- %<br/>
<%-- 注释内容 --%>
<!-- HTML注释 -->
<br/>
2.JSP声明 会转变成Servlet的成员变量或成员方法 %! %<br/>
<%out.println(info());%>
<%out.println(count++);%>
<br/>
3.JSP表达式 %= <br/> 
<%=count++%>
<%=info()%>
<br/>
4.jsp 脚本 会转换成Servlet的_jspServlet里的java代码；
而html会由输出语句来输出 %
<table bgcolor="#9999dd" border="1" width="300px">
<%
for(int i=0; i < 10; i++) {%>
    <tr>
     <td>循环值:</td>
     <td><%=i%></td>
  </tr>
<%}%>
<table>
</BODY>
</HTML>
