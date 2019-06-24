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
    <title>添加用户信息</title>
    <%@include file="head.jsp" %>
</head>
<body>
<form action="add.lovo" method="post">
<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">
    <div class="layadmin-user-login-main">
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>添加药剂/器械</h2>
            <p>森林病虫害防治系统</p>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">

            <div class="layui-form-item">
            <div class="layui-col-md12">
                <input type="text" name="title1" placeholder="请输入名称" autocomplete="off" class="layui-input">
            </div><br><br>
            </div>
            <div class="layui-form-item">
                <div class="layui-col-md12">
                    <input type="text" name="title2" placeholder="请输入数量" autocomplete="off" class="layui-input">
                </div><br><br>
            </div>

            <div class="layui-form-item">
                <div class="layui-col-md6" style="width: 335px">
                    <select name="city" lay-verify="">
                        <option value="">请选择一个防治类型</option>
                        <c:forEach items="${list1}" var="type">
                            <option value="${type.typeKey}">${type.typeVal}</option>
                        </c:forEach>

                    </select>
                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-col-md6" style="width: 335px">
                    <select name="city2" lay-verify="">
                        <option value="">请选择一个类别</option>
                        <c:forEach items="${list2}" var="v2">
                            <option value="${v2.typeKey}">${v2.typeVal}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>

            <div class="layui-card-body layui-row layui-col-space10">
                <div class="layui-col-md12">
                    <textarea name="wby" style="width: 335px;margin-left: -5%" placeholder="请输入" class="layui-textarea"></textarea>
                </div>
            </div>


            <div class="layui-form-item">
               <!--  <button class="layui-btn layui-btn-fluid" >添加</button> -->
                <input  class="layui-btn layui-btn-fluid" type="submit"  value="添加">
            </div>
        </div>
    </div>

</div>
</form>

<script src="webpage/jQuery-2.2.2-min.js"></script>
<script>


</script>


<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'user', 'form'], function () {
        var $ = layui.$
            , admin = layui.admin
            , element = layui.element
            , form = layui.form
            , router = layui.router();

        form.render();


    });
</script>
</body>
</html>
