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
    <title>病害详细信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <%@include file="../../head.jsp" %>
</head>
<body>
<div><h2 align="center">病害详细信息</h2>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">名称</b></span>
        <span><b style="margin-left: 20%">图片</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">病原</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">发病症状</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">发病规律</b></span>
        <span><b style="margin-left: 20%">防治措施</b></span>

    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">主要危害</b></span>

    </div>

    <div class="layui-card-body" style="margin-left: 37%;margin-top: 70px">
        <div  id="btnDivId" style="margin-left: 150px">
            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary" id="bid">返回</button>
        </div>
    </div>


</div>

<script>
    $("#bid").click(function () {
        location.href="webpage/PDM/disease.jsp";
    });
</script>

</body>
</html>
