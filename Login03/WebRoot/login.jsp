<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>login</title>
	<script type="text/javascript">
           function login(form){
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
           }
       </script>  
	
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
</head>


<body class="login_bj" >
<div class="zhuce_body">
	<div class="logo"><a href="#"><img src="images/logo.png" width="114" height="54" border="0"></a></div>
    <div class="zhuce_kong login_kuang">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>登录</h3>
       	  	 
 <form action="LoginServlet" method="post" onsubmit="return login(this);">


                <input name="username" type="text" class="kuang_txt" placeholder="账号">
                <input name="password" type="password" class="kuang_txt" placeholder="密码">
                <div>
               		<a href="#">忘记密码？</a>
               		<input name="" type="checkbox" value="" checked><span>记住我</span> 
                </div>
                <input name="登录" type="submit" class="btn_zhuce" value="登录">
                
                </form>
            </div>
        	
        </div>
      
    </div>

</div>
    
</body>