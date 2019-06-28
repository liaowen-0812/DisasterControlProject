<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String basePathIMG = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";
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
<form action="update.lovo" method="post">
    <input type="text" style="display: none" value="" id="tt1" name="ttName">
    <input type="text" style="display: none" value="${idStr}" id="tt2" name="idStr">
<div><h2 align="center">修改专家信息</h2>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">姓名:${sName}</b></span>
        <span><b style="margin-left: 20%">头像:<img style="width: 50px;height: 80px" src="<%=basePathIMG%>${tName}"></b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">出生年月:${cName}</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">性别:${xName}</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">专长:${zName}</b></span>
        <label><b  style="margin-left: 17%">职务:</b></label>
        <div class="layui-input-inline">
            <input type="text" class="layui-input" value="${wName}" id="test-laydate-start-cn3" name="wName">
        </div>
    </div>
    <div style="margin-top: 30px;margin-left: 30%">
        <label class="layui-form-label"><b>电话:</b></label>
        <div class="layui-input-inline">
            <input type="text" class="layui-input" value="${dName}" id="test-laydate-start-cn1" name="dName">
        </div>
        <label><b  style="margin-left: 5%">工作单位:</b></label>
        <div class="layui-input-inline">
            <input type="text" class="layui-input" value="${gName}" id="test-laydate-start-cn2" name="gName">
        </div>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">通讯地址:${txName}</b></span>
        <label><b  style="margin-left: 15%">邮箱:</b></label>
        <div class="layui-input-inline">
            <input type="text" class="layui-input" value="${yName}" id="test-laydate-start-cn4" name="yName">
        </div>
    </div>

    <div class="layui-card-body" style="margin-left: 37%;margin-top: 70px">
        <div  id="btnDivId" style="margin-left: 150px">
            <!--按钮-->
            <button type="submit" class="layui-btn layui-btn-primary" id="bid">修改</button>
        </div>
    </div>
</div>
</form>

<script>
    $("#bid").click(function () {
        $("#tt1").val("tag");
    });
</script>
</body>
</html>
