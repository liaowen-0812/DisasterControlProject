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
        width: 250px;
        position: absolute;
        top: 50%;
        left: 50%;
        background-color: white;
        transform: translate(-50%, -50%);
        padding: 40px;
        padding-top: 32px;
        padding-bottom: 20px;
        box-shadow: 0px 3px 20px 3px rgba(0, 0, 0, 0.15);
    }

    #login-box-title {
        text-align: center;
    }
</style>
<body>
<div>
    <div style="height: 50%;background-color: #009688">
    </div>
</div>
<div id="login-center">

    <h1 id="login-box-title">
        <i class="layui-icon " style="font-size: 30px;">&#xe66f;</i>
        登陆
    </h1>
    <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
        <div class="layui-form-item">
            <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                   for="LAY-user-login-username"></label>
            <input type="text" name="username" id="LAY-user-login-username" lay-verify="required" placeholder="用户名"
                   class="layui-input">
        </div>
        <div class="layui-form-item">
            <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                   for="LAY-user-login-password"></label>
            <input type="password" name="password" id="LAY-user-login-password" lay-verify="required" placeholder="密码"
                   class="layui-input">
        </div>

        <div class="layui-form-item">
            <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit">登 入</button>
        </div>

        <div class="layui-form-item" style="margin-bottom: 20px;">
            <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">
        </div>
    </div>
</div>
<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'user'], function(){
        var $ = layui.$
            ,setter = layui.setter
            ,admin = layui.admin
            ,form = layui.form
            ,router = layui.router()
            ,search = router.search;

        form.render();

        //提交
        form.on('submit(LAY-user-login-submit)', function(obj){

            //请求登入接口
            admin.req({
                url: layui.setter.base + 'json/user/login.js' //实际使用请改成服务端真实接口
                ,data: obj.field
                ,done: function(res){

                    //请求成功后，写入 access_token
                    layui.data(setter.tableName, {
                        key: setter.request.tokenName
                        ,value: res.data.access_token
                    });

                    //登入成功的提示与跳转
                    layer.msg('登入成功', {
                        offset: '15px'
                        ,icon: 1
                        ,time: 1000
                    }, function(){
                        location.href = '../'; //后台主页
                    });
                }
            });

        });

    });
</script>
</body>
</html>

