<%@page contentType="text/html; charset=UTF-8" info = "jsp page info" %>
<%@page errorPage="error.jsp"%>
<HTML>
<HEAD>
<TITLE>
    轻量级javaee 第二章
</TITLE>
</HEAD>
<BODY>
 70页 jsp的三个编译指令 %@ 关键字<br/>
 1.page 用于针对当前页面的指令<br/>
 <%
  int a = 0;
  int b = 10;
 %>
 <%-- 获取page设置的info信息 --%>
 <%=getServletInfo()%>
 2.include 将外部文件嵌入<br/>
 <%@include file="scriptlet.jsp"%>
 3.taglib 用于定义访问自定义标签
</BODY>
