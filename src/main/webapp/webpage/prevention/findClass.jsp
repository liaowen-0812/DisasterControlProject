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
    <title>查看小班信息</title>
    <%@include file="head.jsp"%>
    <script src="js/jquery.min.js"></script>
</head>
<body>

<div class="layui-card" style="height: 100%">
    <div class="layui-card-header" align="center" style="height: 8%"><h1>查看小班信息</h1></div>
    <div class="layui-card-body" style="padding: 15px;">
        <form class="layui-form" action="" lay-filter="component-form-group">


            <div class="layui-form-item" style="margin-top: 3%" >

                <label class="layui-form-label" style="margin-left: 20%">名称：</label>
                <label class="layui-form-label" style="margin-left: 30%">负责人：</label>

            </div>

            <div class="layui-form-item" style="margin-top: 3%" >

                <label class="layui-form-label" style="margin-left: 20%">负责人电话：</label>
                <label class="layui-form-label" style="margin-left: 30%">人员数量：</label>

            </div>

            <div class="layui-form-item" style="margin-top: 5%" >

                <label class="layui-form-label" style="margin-left: 20%">负责区域：</label>
                <label class="layui-form-label" style="margin-left: 30%">林种：</label>

            </div>

            <div class="layui-form-item" style="margin-top: 3%" >

                <label class="layui-form-label" style="margin-left: 20%">地类：</label>
                <label class="layui-form-label" style="margin-left: 30%">优势树种：</label>

            </div>

            <div class="layui-form-item" style="margin-top: 3%" >

                <label class="layui-form-label" style="margin-left: 20%">创建时间：</label>

            </div>


            <div style="margin-top: 8%">
                <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 42.5%;width: 15%" id="outId">返回</button>
            </div>


        </form>
    </div>
</div>


<script>
    //返回主页面
    $("#outId").click(function () {
        location.href="webpage/prevention/littleClass.jsp";
    })

</script>
</body>
</html>
