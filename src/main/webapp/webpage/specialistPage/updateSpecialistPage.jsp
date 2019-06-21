<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>修改专家信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <%@include file="../../head.jsp" %>
</head>
<body>

<div><h2 align="center">修改专家信息</h2>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">姓名:</b></span>
        <span><b style="margin-left: 20%">头像:</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">出生年月:</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">性别:</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">专长:</b></span>
        <label><b  style="margin-left: 17%">职务:</b></label>
        <div class="layui-input-inline">
            <input type="text" class="layui-input"  id="test-laydate-start-cn3">
        </div>
    </div>
    <div style="margin-top: 30px;margin-left: 30%">
        <label class="layui-form-label"><b>电话:</b></label>
        <div class="layui-input-inline">
            <input type="text" class="layui-input"  id="test-laydate-start-cn1">
        </div>
        <label><b  style="margin-left: 5%">工作单位:</b></label>
        <div class="layui-input-inline">
            <input type="text" class="layui-input"  id="test-laydate-start-cn2">
        </div>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">通讯地址:</b></span>
        <label><b  style="margin-left: 15%">邮箱:</b></label>
        <div class="layui-input-inline">
            <input type="text" class="layui-input"  id="test-laydate-start-cn4">
        </div>
    </div>

    <div class="layui-card-body" style="margin-left: 37%;margin-top: 70px">
        <div  id="btnDivId" style="margin-left: 150px">
            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary" id="bid">修改</button>
        </div>
    </div>


</div>

</body>
</html>
