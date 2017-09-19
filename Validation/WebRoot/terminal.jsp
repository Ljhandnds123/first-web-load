<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>jquery validate验证</title>
    <link rel="stylesheet" href="css/form.css" />
    <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
    <script type="text/javascript" src="js/additional-methods.js"></script>
    <script type="text/javascript" src="js/jquery.validate.extend.js"></script>
    <script type="text/javascript">
    	$(function(){

    		//让当前表单调用validate方法，实现表单验证功能
    		$("#ff").validate({
    			debug:true,	//调试模式，即使验证成功也不会跳转到目标页面
    			onkeyup:true, //当丢失焦点时才触发验证请求
    			rules:{		//配置验证规则，key就是被验证的dom对象，value就是调用验证的方法(也是json格式)
    				sname:{
    					required:true,	//必填。如果验证方法不需要参数，则配置为true
    					rangelength:[4,12],
    					remote:{
    						url:"ajax_check.action",
    						type:"post"
    					}
    				},
    				spass:{
    					required:true,
    					rangelength:[6,16]
    				},
    				spass2:{
    					required:true,
    					equalTo:'#password' //表示和id="spass"的值相同
    				},
    				saddress:{
    					required:true
    				},
    				sphone:{
    					required:true,
    					phone:true
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
    					rangelength:$.validator.format("用户名长度为{0}-{1}个字符"),
    					remote:"该用户名已存在！"
    				},
    				spass:{
    					required:"请输入密码",
    					rangelength:$.validator.format("密码长度为{0}-{1}个字符")
    				},
    				spass2:{
    					required:"请再次输入密码",
    					equalTo:"两次密码必须一致" //表示和id="spass"的值相同
    				},
    				sphone:{
    					required:"请输入手机号"
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
  	<form action="http://www.hao123.com" method="post" id="ff">
	    <fieldset>
	        <legend>jQuery-Validate表单校验验证</legend>
	        <div class="item">
	            <label for="username" class="item-label">用户名:</label>
	            <input type="text" id="username" name="sname" class="item-text" placeholder="设置用户名"
	            autocomplete="off" tip="请输入用户名">
	        </div>
	        <div class="item">
	            <label for="password" class="item-label">密码:</label>
	            <input type="password" id="password" name="spass" class="item-text" 
	            placeholder="设置密码" tip="长度为6-16个字符">
	        </div>
	        <div class="item">
	            <label for="password" class="item-label">确认密码:</label>
	            <input type="password" name="spass2" class="item-text" placeholder="设置确认密码">
	        </div>
	        <div class="item">
	            <label for="phone" class="item-label">手机号码:</label>
	            <input type="text" id="phone" name="sphone" class="item-text" placeholder="输入手机号码" tip="请输入手机号码">
	        </div>
	        <div class="item">
	            <label for="saddress" class="item-label">所在地:</label>
	            <select name="saddress" class="item-select">
	    			<option value="">---请选择---</option>
	    			<option value="北京">北京</option>
	    			<option value="上海">上海</option>
	    			<option value="深圳">深圳</option>
	    		</select>
	        </div>
    		<div class="item">
	            <label for="slike" class="item-label">爱好：</label>
	                                   上网：<input type="checkbox" name="slike" value="上网"/>
    			唱歌：<input type="checkbox" name="slike" value="唱歌"/>
    			编程：<input type="checkbox" name="slike" value="编程"/>
    			书法：<input type="checkbox" name="slike" value="书法"/><br/>
	        </div>
	        <div class="item">
	            <label for="semail" class="item-label">邮箱:</label>
	            <input type="text" id="semail" name="semail" class="item-text" placeholder="设置邮箱" 
	            autocomplete="off" tip="请输入邮箱">
	        </div>
	        <div class="item">
	            <label for="simage" class="item-label">头像:</label>
	            <input type="file" name="simage" class="item-file">
	        </div>
	        <div class="item">
	            <input type="submit" value="提交" class="item-submit">
	        </div>
	    </fieldset>
	</form>
  </body>
</html>
