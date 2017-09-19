<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>jquery validate验证</title>
    <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
    <script type="text/javascript" src="js/additional-methods.js"></script>
    <script type="text/javascript">
    	$(function(){
    		//让当前表单调用validate方法，实现表单验证功能
    		$("#ff").validate({
    			debug:true,	//调试模式，即使验证成功也不会跳转到目标页面
    			onkeyup:null, //关闭键盘输入时的实时校验
    			rules:{		//配置验证规则，key就是被验证的dom对象，value就是调用验证的方法(也是json格式)
    				sname:{
    					required:true,	//必填。如果验证方法不需要参数，则配置为true
    					rangelength:[6,12]
    				},
    				spass:{
    					required:true,
    					rangelength:[6,12]
    				},
    				spass2:{
    					required:true,
    					equalTo:'#spass' //表示和id="spass"的值相同
    				},
    				slike:{
    					required:true,
    				},
    				semail:{
    					required:true,
    					email:true
    				},
    				simage:{
    					required:true,
    					extension:'gif|jpe?g|png'
    				}
    			}
    		});
    	});
    </script>
  </head>
  
  <body>
  <!-- 
  	<ul>
  		<li>演示基本方法的使用</li>
  		<li>jquery.validate.js中260行有缺省的验证配置</li>
  		<li>jquery.validate.js中354行有验证方法出错的消息，即告诉我们都有哪些验证方法</li>
  	</ul>
   -->
    <form id="ff" action="http://www.hao123.com" method="post">
    	姓名：<input type="text" name="sname" /><br/>
    	密码：<input type="password" name="spass" id="spass"/><br/>
    	确认密码：<input type="password" name="spass2" /><br/>
    	爱好：
    		上网：<input type="checkbox" name="slike" value="上网"/>
    		唱歌：<input type="checkbox" name="slike" value="唱歌"/>
    		编程：<input type="checkbox" name="slike" value="编程"/>
    		书法：<input type="checkbox" name="slike" value="书法"/><br/>
    	邮箱：<input type="text" name="semail" /><br/>
    	头像：<input type="file" name="simage" /><br/>
    	<input type="submit" value="提交">
    </form>
  </body>
</html>
