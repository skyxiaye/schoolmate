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
		  data:$('infoform').serialize(),
		  success: function(result){
			  alert("SUCCESSS");
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
