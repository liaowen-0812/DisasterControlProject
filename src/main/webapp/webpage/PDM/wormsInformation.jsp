<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/6/21
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>虫害详细信息</title>
    <%@include file="head.jsp"%>
</head>
<body>
<div class="layui-fluid" align="center">
    <div class="layui-card-header" style="font-size: 30px">虫害详细信息</div>
    <br/><br/>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">名称</label>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">寄主</label>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">繁殖</label>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">天敌</label>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">幼虫图片</label>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">成虫图片</label>
        </div>
    </div>




    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">防治措施</label>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">主要危害</label>
        </div>
    </div>


    <!--按钮-->
    <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 5%;margin-top: 150px;">返回</button>

</div>
</div>
</body>
</html>
