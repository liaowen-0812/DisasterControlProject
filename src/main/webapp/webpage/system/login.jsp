<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/18
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>

<head>
    <base href="<%=basePath%>">
    <title>森林病虫害防治系统</title>
    <%@include file="head.jsp" %>
</head>
<style type="text/css">
    #login-center {
        width: 300px;
        position: absolute;
        top: 52%;
        left: 50%;
        background-color: white;
        transform: translate(-50%, -50%);
        padding: 50px;
        box-shadow: 0px 3px 20px 3px rgba(0, 0, 0, 0.15);
    }

    #login-box-title {
        text-align: center;
    }
</style>
<body>
<div style="background-color: rgba(0,150,136,0.04)">
    <div style="height: 50%;background-color: #009688">
    </div>
</div>
<div id="login-center">

    <h1 id="login-box-title">
        <i class="layui-icon " style="font-size: 30px;">&#xe66f;</i>
        登陆
    </h1>
    <form  class="layui-form" id="formId" action="login" method="post">
    <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
        <div class="layui-form-item">
            <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                   for="LAY-user-login-username"></label>
            <input type="text" name="username" id="LAY-user-login-username" lay-verify="username" placeholder="用户名"
                   class="layui-input">
        </div>
        <div class="layui-form-item">
            <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                   for="LAY-user-login-pass"></label>
            <input type="password" name="passWord" id="LAY-user-login-pass" lay-verify="pass" placeholder="密码"
                   class="layui-input">
        </div>

        <div class="layui-form-item">
            <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit">登 入</button>
        </div>
    </div>
    </form>
</div>
<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'user'], function(){
        var $ = layui.$
            ,form = layui.form;
        form.render();

        form.verify({
            pass: [/(.+){1,12}$/, '必填项'],
            username: function(value){
                if(value.length < 2){
                    alert(value)
                    return '姓名至少得2个字符';
                }
            }

        });
        //提交
        form.on('submit(LAY-user-login-submit)', function(obj){
            $("#formId").submit();
        });


    });
</script>
</body>
</html>

