<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <%@include file="head.jsp" %>
</head>
<body>

<div align="center">

    <div class="layui-col-md12">
        <input type="text" name="title" placeholder="请输入名称" autocomplete="off" style="width: 300px;
height: 35px;margin-left: 33px">

    </div>

    <div class="layui-form">



        <div class="layui-fluid">
                            <div class="layui-card-body layui-row layui-col-space10" style="margin-left:
                             31%;width:57% ">
                                <div class="layui-col-md6">
                                <select name="city" lay-verify="">
                                 <option value="">请选择一个类别</option>
                                        <option value="010">器械</option>
                                        <option value="021">药剂</option>
                                    </select>
                                </div>
                            </div>
        </div>

        <div class="layui-fluid" style="margin-top: -300px">
            <div class="layui-card-body layui-row layui-col-space10" style="margin-left:
                             31%;width:57% ">
                <div class="layui-col-md6">
                     <select name="city" lay-verify="">
                 <option value="">请选择一个防治类型</option>
                        <option value="010">病害</option>
                        <option value="021">虫害</option>
                        <option value="021">鼠害</option>
                    </select>
                </div>
            </div>
        </div>

    </div>


</div>

<span style="margin-left:350px">主要用途 ：</span>
<div class="layui-card-body layui-row layui-col-space10" align="center">
    <div class="layui-col-md12">
        <textarea name="" placeholder="请输入" style="width:300px;height: 80px;margin-left: 30px "></textarea>
    </div>
</div>


<div class="layui-col-md4" style="margin-top: 10px;width: 48%">
    <div class="layui-card-body">
        <div id="btnDivId">
            <!--按钮-->
            <button style="margin-left: 500px" onclick="add()" type="button"
                    class="layui-btn layui-btn-primary">添加药剂
            </button>

        </div>
    </div>
</div>




<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form'], function(){
        var $ = layui.$
            ,admin = layui.admin
            ,element = layui.element
            ,form = layui.form;

        form.render(null, 'component-form-element');
        element.render('breadcrumb', 'breadcrumb');

        form.on('submit(component-form-element)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });

    });
</script>


</body>
</html>
