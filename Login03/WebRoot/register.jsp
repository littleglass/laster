<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
      <script type="text/javascript" src="js/jquery.min.js"></script>
    <title>register</title>
     <script type="text/javascript">
           function reg(form){
               if(form.username.value == ""){
                   alert("用户不能为空！");
                   return false;
               }
               if(form.password.value == ""){
                   alert("密码不能为空！");
                   return false;
               }
               if(form.repassword.value == ""){
                   alert("确认密码不能为空！");
                   return false;
               }
               if(form.password.value != form.repassword.value){
                   alert("两次密码输入不一致！");
                   return false;
               }
             
              
           }
       </script>  
    <meta charset="UTF-8">
	<title>register</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">

 
    
  </head>
  <body class="login_bj" >
<div class="zhuce_body">
	<div class="logo"><a href="#"><img src="images/logo.png" width="114" height="54" border="0"></a></div>
    <div class="zhuce_kong login_kuang">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>注册</h3>
            
 <form action="RegServlet" method="post" onsubmit="return reg(this);">
                           
<input name="username" type="text" class="kuang_txt" placeholder="账号">
                <input name="password" type="password" class="kuang_txt" placeholder="密码">
                <input name="repassword" type="password" class="kuang_txt" placeholder="密码">
               
                <input name="登录" type="submit" class="btn_zhuce" value="登录">
                
                </form>
	我已经有该网站的账号，
	<a href="login.jsp" ><strong ><font color="red">
	直接登录</font></strong></a>
            </div>
  
        	
        	
        </div>

    </div>

  </body>
</html>
