<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/JavaScript">
 function countDown(secs) {
  document.getElementById("jump").innerHTML = secs;
  if (--secs > 0){
   setTimeout("countDown(" + secs + " )", 1000);
   }else{
  <%-- 填写跳转地址--%>
        location.href="login.jsp";
				
   }
 }
 </script>
 <title>register prompt</title>
  </head>
  
 <body style="overflow: auto;" onload="javascript:countDown(3);">
			<%
				String info = (String) request.getAttribute("info");
				out.print(info);
			%>
		<div align="center">页面将在<span id="jump"></span>秒后自动跳转......</div>

			    </body>
  </body>
</html>
