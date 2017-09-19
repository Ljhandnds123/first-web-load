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
    				saddress:{
    					required:true
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
    			},
    			messages:{
    				sname:{
    					required:"请输入用户名",
    					rangelength:$.validator.format("用户名长度在必须为：{0}-{1}之间")
    				},
    				spass:{
    					required:"请输入密码",
    					rangelength:$.validator.format("字段长度必须为：{0}-{1}之间")
    				},
    				spass2:{
    					required:"请再次输入密码",
    					equalTo:"两次密码必须一致" //表示和id="spass"的值相同
    				},
    				saddress:{
    					required:"请选择地址"
    				},
    				slike:{
    					required:"请选择爱好",
    				},
    				semail:{
    					required:"请填写邮件",
    					email:"邮箱格式不正确"
    				},
    				simage:{
    					required:"请选择要上传的头像",
    					extension:"文件后缀名必须为jpg,jpeg,gif,png"
    				}
    			}
    		});
    	});
    </script>
  </head>
  
  <body>
  <!-- 
  	<ul>
  		<li>实现错误消息的本地化</li>
  		<li>260行有缺省的验证配置</li>
  		<li>354行有验证方法出错的消息，即告诉我们都有哪些验证方法</li>
  	</ul>
   -->
    <form id="ff" action="http://www.hao123.com" method="post">
    	姓名：<input type="text" name="sname" /><br/>
    	密码：<input type="password" name="spass" id="spass"/><br/>
    	确认密码：<input type="password" name="spass2" /><br/>
    	所在地：
    		<select name="saddress">
    			<option value="">---请选择---</option>
    			<option value="北京">北京</option>
    			<option value="上海">上海</option>
    			<option value="深圳">深圳</option>
    		</select><br/>
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
