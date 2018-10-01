<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
  <script type="text/javascript">
  $(document).ready(function(){
  $("a[name='go']").click(function(){
     $.ajax({
       type:"POST",
       url:"<%=request.getContextPath()%>/show/info",
       success:function(rs){
       var jsondata = JSON.parse(rs);
       var item="";
       $.each(jsondata,function(index,element){
       item+=
       "<tr><td>"+element.userName+"</td><td>"+element.userInfo+"</td></tr>";
       });
       $('.table').append(item);
       }
     });
  });
  });
  </script>
</head>
<body>
   <div id="lose">
        <table class="table">
  		<tr><td>userName</td><td>userInfo</td></tr>
        </table>
   </div>
   <a name="go" href="javascript:;">点击</a>
</body>
</html>