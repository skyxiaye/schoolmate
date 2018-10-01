<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>SchoolMate</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/mainHeader.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/mainjsp.js"></script>
</head>
<body>
<input type="hidden" value="<%=request.getSession().getAttribute("userName") %>" id="a"/>
<script type="text/javascript">
 $(document).ready(function(){
  $("a[name='lose']").click(function(){
     document.getElementById("loserinfo").style.display="block";
     $.ajax({
       type:"POST",
       url:"<%=request.getContextPath()%>/show/info",
       success:function(rs){
       var jsondata = JSON.parse(rs);
       var item="";
       $.each(jsondata,function(index,element){
       item+=
       "<div><ul><li>"+element.userName+"</li></br><li>"+element.userInfo+"</li></ul></div>";
       });
       $('.loser').html(item);
       }
     });
  });
  });
  function lose_click(){
   var a = document.getElementById("a").value;
   var b = document.getElementById("userInfo");
   if(a=="null"||b.value==""){
   alert("请先登录或者内容不能为空");
  }else{
	  $ajax({
		  type:"POST",
		  dataType:"json",
		  url:"<%=request.getContextPath()%>/insert/info",
		  data:$('userinfo').value,
		  success: function(result){
			  alert("SUCCESSS");
		  },
		  error: function(){
		      alert("发生异常");
		  }
	  });
  }
 }
 window.onload = function(){
    function isLogin(){
    var a = document.getElementById("a").value;
    if(a=="null"){
        document.getElementById("registandlogin").style.display="block";
        document.getElementById("usernameandexit").style.display="none";
        
    }else{
       document.getElementById("registandlogin").style.display="none";
        document.getElementById("usernameandexit").style.display="block";
    }
 }
  isLogin();
 }
</script>
<div >
   <div class="back">

       <div class="head">
          <div class="headtitle"><h2>SchoolMate</h2></div>
           <div class="headlead">
               <ul id="headleft">
                  <li class="actived"><a href="http://localhost:8080/01_schoolmate/use/main">首页</a></li>
                   <li><a href="#">校园动态</a></li>
                   <li><a href="#">答疑解惑</a></li>
                   <li><a name="lose" href="javascript:;">失物招领</a></li>
               </ul>
           </div>
           <div id="registandlogin" >
               <ul id="headright1">
                   <li><a href="http://localhost:8080/01_schoolmate/user/gologin">登录</a></li>
                   <li><a href="http://localhost:8080/01_schoolmate/user/goregist">注册</a></li>
               </ul>
           </div>
           <div id="usernameandexit" style="display:none">
                <ul id="headright2">
                  <li><a href="#"><%=request.getSession().getAttribute("userName") %></a></li>
                  <li><a href="http://localhost:8080/01_schoolmate/user/outlogin">退出登录</a></li>
                </ul>
           </div>
      </div>
      <div class="loser">
         
     </div>
     <div id="loserinfo" style="display:none">
       <h3>发布失物招领信息</h3>
       <form action="#" id="infoform">
        <textarea rows="5" cols="40" name="userInfo" id="userInfo"></textarea><br />
        <input  type="button" value="发布" onclick="lose_click()"/>
       </form>
     </div>
    </div>
   </div>
</body>
</html>
