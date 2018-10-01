<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户注册</title>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/regist.css">
  </head>
  
  <body>
    <div id="formwrapper">
        <form id="userRegist" action="<%=request.getContextPath() %>/user/regist"> 
    <fieldset> 
        <legend>用户注册</legend> 
        <div>
        <label for="Name">用户名</label> 
        <input type="text" name="userName" id="userName" value="" size="20" maxlength="30" />       
        </div> 
        <div>
        <label for="Password">密 码</label> 
        <input type="password" name="userPassword" id="userPassword" value="" size="20" maxlength="30" />  
            
        </div>
        <div>
        <label for="Major">专业</label> 
        <input type="text" name="userMajor" id="userMajor" value="" size="20" maxlength="30" />  
            
        </div>
        <div>
        <label for="Garde">年级</label> 
        <input type="text" name="userGarde" id="userGarde" value="" size="20" maxlength="30" />  
            
        </div>
        <div class="enter"> 
        <input name="create791" type="submit" class="buttom" value="提交" /> 
        <input name="Submit" type="reset" class="buttom" value="重置" /> 
        </div> 
         <div class="forgotpass"><a href="http://localhost:8080/01_schoolmate/user/gologin">立即登录</a></div>  
    </fieldset> 
    </form> 
</div>
  </body>
</html>
