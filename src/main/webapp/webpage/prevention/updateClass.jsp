<%--
  Created by IntelliJ IDEA.
  User: 24849
  Date: 2019/6/19
  Time: 15:49
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
    <title>修改小班信息</title>
    <%@include file="head.jsp"%>
</head>
<body>

<div class="layui-card" style="height: 100%">
    <div class="layui-card-header" align="center" style="height: 8%"><h1>修改小班信息</h1></div>
    <div class="layui-card-body" style="padding: 15px;">
        <form class="layui-form" action="" lay-filter="component-form-group">


            <div class="layui-form-item" style="margin-top: 3%" >

                <label class="layui-form-label" style="margin-left: 22.5%;width: 10%">名称：</label>
                <label class="layui-form-label" style="margin-left: 25%">负责人：</label>
                <div class="layui-input-inline" style="width: 25%">
                    <input type="password" name="password" lay-verify="pass" placeholder="负责人名称" autocomplete="off" class="layui-input" style="width: 80%">
                </div>

            </div>

            <div class="layui-form-item" style="margin-top: 3%;" >
                <label class="layui-form-label" style="margin-left: 22.5%;width: 10%">负责人电话：</label>
                <div class="layui-input-inline" style="width: 25%">
                    <input type="password" name="password" lay-verify="pass" placeholder="负责人电话" autocomplete="off" class="layui-input" style="width: 80%">
                </div>
                <label class="layui-form-label">人员数量：</label>

            </div>

            <div class="layui-form-item" style="margin-top: 5%" >

                <label class="layui-form-label" style="margin-left: 22.5%;width: 10%">负责区域：</label>
                <label class="layui-form-label" style="margin-left: 25%">林种：</label>

            </div>

            <div class="layui-form-item" style="margin-top: 3%" >

                <label class="layui-form-label" style="margin-left: 22.5%;width: 10%">地类：</label>
                <label class="layui-form-label" style="margin-left: 25%">优势树种：</label>

            </div>

            <div class="layui-form-item" style="margin-top: 3%" >

                <label class="layui-form-label" style="margin-left: 22.5%;width: 10%">创建时间：</label>

            </div>


            <div style="margin-top: 8%">
                <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 42.5%;width: 15%" id="updateId">修改</button>
            </div>


        </form>
    </div>
</div>


<script>
    $("#updateId").click(function () {
        location.href="webpage/prevention/littleClass.jsp";
    })

</script>
</body>
</html>
