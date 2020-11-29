
<%@page contentType="text/html; charset=UTF-8" %>
<HTML>
<HEAD><TITLE>   轻量级javaee 第二章</TITLE></HEAD>
<BODY>
 75页 jsp的7个动作指令<br/>
 1.jsp:forward: 页面转向 <br/>
 <!-- 页面转向
 jsp:forward page="forward-result.jsp"
    jsp:param name="age" value="29"  
 jsp:forward
  -->
 <!-- 页面转向可以获得forward指定的参数，也可以获取表单里的参数 ,不会丢失请求参数 -->
 <form id="login" method="post" action="forward-result.jsp">
  <input type="text" name="username">
  <input type="submit" value="页面转向"> 
</form>
 2.jsp:param: 传递参数<br/>
  
 3.jsp:include: 动态倒入jsp页面 <br/>
  
  生成的Servlet的对应代码是不同的
  静态倒入被导入的编译指令也会起作用
  动态包含可以增加额外的参数 <br/>

  <jsp:include page="forward-result.jsp">
    <jsp:param name="age" value="32" />
  </jsp:include>
 <br/>

 4.jsp:plugin: 下载JavaBean或Applet到客户端执行<br/>
 以下都与JavaBean有关 <br/>
  如果多个jsp页面中需要重复使用某段代码，则可以把这段代码定义成java类的方法，达>到复用效果</br> 
5.jsp:useBean: 创建一个JavaBean的实例<br/>
 6.jsp:setProperty: 设置JavaBean实例的属性值 <br/>
 7.jsp:getProperty: 获取JavaBean实例的属性值 <br/>

 <!-- 还有问题，这是没解决的代码 -->  
 <jsp:useBean id="p1" class="zhou.Person" scope="page"/>


 <jsp:setProperty name="p1" property="name" value="zhouzhou" />
 <jsp:setProperty name="p1" property="age" value="23" />
 <jsp:getProperty name="p1" property="name" /> </br>
 <jsp:getProperty name="p1" property="age" />
</BODY>
