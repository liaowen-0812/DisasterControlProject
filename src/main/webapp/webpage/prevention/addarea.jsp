

<!DOCTYPE html>
<html>
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
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<div class="layui-fluid" align="center">
        <div class="layui-card-header">表单组合</div>
        <div class="layui-card-body" >
            <form class="layui-form" action="" lay-filter="component-form-group">

                <div class="layui-form-item" style="width: 800px;margin-top:30px">
                    <label class="layui-form-label" style="width: 100px"><h3>名称:</h3></label>
                    <div class="layui-input-block">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input" style="width: 500px;">
                    </div>
                </div>

                <div class="layui-form-item" style="width: 800px;margin-top: 80px">
                    <label class="layui-form-label" style="width: 100px"><h3>林种:</h3></label>
                    <div class="layui-input-block">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input" style="width: 500px;">
                    </div>
                </div>

                <div class="layui-form-item" style="width: 800px;margin-top: 80px">
                    <label class="layui-form-label" style="width: 100px"><h3>优势树种:</h3></label>
                    <div class="layui-input-block">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input" style="width: 500px;">
                    </div>
                </div>

                    <!--下拉框标题文字-->
                <div style=" position: absolute;left: 26%;top: 62%;width: 100px;"><h3>地类:</h3></div>

                <div class="layui-form-item" ; style="margin-top: 80px;width: 33%;margin-left:10%">
                    <div class="layui-col-md6" style="width: 500px;float: right">
                        <select name="city" lay-verify="">
                            <option value="">林地</option>
                            <option value="010">疏林地</option>
                            <option value="021">灌木林</option>
                            <option value="0571">苗圃地</option>
                        </select>
                    </div>
                </div>
                <!--按钮-->
                <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 5%;margin-top: 150px;">添加用户</button>
            </form>
        </div>
</div>

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

        //提交
        form.on('submit(LAY-user-reg-submit)', function (obj) {
            var field = obj.field;
            //确认密码
            if (field.password !== field.repass) {
                return layer.msg('两次密码输入不一致');
            }

            //请求接口

            return false;
        });

    });
</script>
</body>
</html>
