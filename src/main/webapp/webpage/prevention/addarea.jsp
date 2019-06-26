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
    <title>添加区域</title>
    <%@include file="head.jsp"%>
</head>
<body>
<form action="addAreaServlet" method="post" class="layui-form">
<div class="layui-card" style="height: 100%">
    <div class="layui-card-header" align="center" style="height: 8%" ><h1>添加区域</h1></div>
    <div class="layui-card-body" style="padding: 15px;">
        <%--<form class="layui-form" action="" lay-filter="component-form-group" >--%>


            <div class="layui-form-item" style="margin-top: 5%;">
                <label class="layui-form-label" style="margin-left: 30%">名称</label>
                <div class="layui-input-inline" style="width: 25%;" >
                    <input type="text" name="areaName" lay-verify="pass" placeholder="名称" autocomplete="off" class="layui-input">
                </div>
            </div>


            <div class="layui-form-item" style="margin-top: 5%" >
                <label class="layui-form-label" style="margin-left: 30%">林种</label>
                <div class="layui-input-inline" style="width: 25%">
                    <input type="text" name="treeType" lay-verify="pass" placeholder="林种" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item" style="margin-top: 5%" >
                <label class="layui-form-label" style="margin-left: 30%">优势树种</label>
                <div class="layui-input-inline" style="width: 25%">
                    <input type="text" name="goodTree" lay-verify="pass" placeholder="优势树种" autocomplete="off" class="layui-input">
                </div>
            </div>


            <!--下拉-->
            <div class="layui-form-item" style="margin-top: 7%;">
                <div class="layui-inline" style="width: 50%;margin-left: 25%">
                    <label class="layui-form-label" style=";margin-left:10%">地类</label>
                    <div class="layui-input-inline" style="width:50%;" >
                        <select name="quiz">
                            <c:forEach var="s" items="${list}">
                            <option value="${s.typeKey}">${s.typeVal}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                </div>
            </div>

            <!--按钮-->
            <div style="margin-top: 8%">
                <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 42.5%;width: 15%"  id="buttonId" onclick="buId()" >添加</button>
            </div>

    </div>
</div>

</form>

<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'laydate'], function(){
        var $ = layui.$
            ,admin = layui.admin
            ,element = layui.element
            ,layer = layui.layer
            ,laydate = layui.laydate
            ,form = layui.form;

        form.render(null, 'component-form-group');

        laydate.render({
            elem: '#LAY-component-form-group-date'
        });
    });

 //js
    function buId() {
        location.href="webpage/prevention/area.jsp";
    }

</script>

</body>
</html>
