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
    <style type="text/css">
        body{
            font-size: 20px;
            color: #828080;
        }
        .divClass{
            text-align: center;
            padding-top: 20px;
        }
    </style>
</head>
<body style="background-color: rgba(0,150,136,0.04)">
    <h3 style="color: #666;text-align: center;margin-bottom: 50px;padding-top: 150px">森林病虫害防治系统</h3>
    <div class="divClass">
        林鸟丛鸣山河美，
        万木幽深景翠微。<br>
    </div>
    <div class="divClass">
        但惜植护百年计，
        福泽子孙莫荒颓。
    </div>

    <i class="layui-icon layui-icon-tree" style="font-size: 300px; color: rgba(0,150,136,0.1);margin-left: 20%"></i>
</body>
<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'user'], function(){

        })
</script>
</html>
