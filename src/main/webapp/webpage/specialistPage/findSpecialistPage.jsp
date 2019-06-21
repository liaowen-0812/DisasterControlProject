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
    <title>查看专家信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <%@include file="../../head.jsp" %>
</head>
<body>
<div><h2 align="center">查看专家信息</h2>
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
        <span><b style="margin-left: 20%">职务:</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">电话:</b></span>
        <span><b style="margin-left: 20%">工作单位:</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">通讯地址:</b></span>
        <span><b style="margin-left: 18%">邮箱:</b></span>
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
        location.href="webpage/specialistPage/specialistPage.jsp";
    });
</script>

</body>
</html>
