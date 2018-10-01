<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css">
  </head>
  <body>
<div id="formwrapper"> 
 
<h3>已注册用户登录</h3> 
    <form id="userlogin" action="<%=request.getContextPath() %>/user/login" > 
    <fieldset> 
        <legend>用户登录</legend> 
        <div> 
            <label for="Name">用户名</label> 
            <input type="text" name="userName" id="userName" size="18" maxlength="30" /><br /> 
        </div> 
        <div> 
            <label for="password">密码</label> 
            <input type="password" name="userPassword" id="userPassword" size="18" maxlength="15" /><br /> 
        </div> 
        <div class="cookiechk"> 
            <label><input type="checkbox" name="CookieYN" id="CookieYN" value="1" /> <a href="#" title="选择是否记录您的信息">记住我</a></label> 
            <input name="login791" type="submit" class="buttom" value="登录" /> 
        </div>     
        <div class="forgotpass"><a href="http://localhost:8080/01_schoolmate/user/goregist">立即注册</a></div>     
    </fieldset> 
    </form>
    </div>
  </body>
</html>
