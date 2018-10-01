<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'registsuccess.jsp' starting page</title>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
  </head>
  <script type="text/javascript">
  $(document).ready(function(){
     $.ajax({
       url:"<%=request.getContextPath()%>/show/info",
       data:JSON.stringify("rs"),
       contentType:"application/json",
       success:function(rs){
       alert(rs);
       }
     });
  });
  </script>
  <body>
    <h1>注册成功</h1>
     <a href="http://localhost:8080/01_schoolmate/user/gologin">立即登录</a>
  </body>
</html>
