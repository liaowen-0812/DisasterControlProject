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
    <title>修改事件信息</title>
    <%@include file="head.jsp"%>
</head>
<body>

<div class="layui-col-md4" style="float: right;width: 100%;">
    <div class="layui-card"  style="height: 10%;">
        <h2 style="padding-top: 1.6%" align="center">查看事件信息</h2>
    </div>
</div>



<div class="layui-col-md4" style="float: left;width: 50%;">
    <div class="layui-card"  style="text-align: center;height: 82%">


        <!--文本框2个-->
        <div class="layui-card-body" style="padding: 15px;">
            <form class="layui-form" action="" lay-filter="component-form-group">
                <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                    <label class="layui-form-label">事件名称</label>
                </div>

                <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                    <label class="layui-form-label">时间</label>
                </div>


                <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                    <label class="layui-form-label">灾情阶段</label>
                    <div class="layui-input-inline" style="width:50%;" >
                        <select name="quiz">
                            <option value="">已经得到控制</option>
                            <option value="你工作的第一个城市">防治中</option>
                            <option value="你的工号">无法解决，申请专家会商</option>
                        </select>
                    </div>
                </div>


                <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                    <label class="layui-form-label">灾情描述</label>
                </div>


                <div class="layui-form-item" style="margin-top: 8%;margin-left: 15%">
                    <label class="layui-form-label">灾害类型</label>
                </div>


                <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                    <label class="layui-form-label">初步损失</label>
                </div>




                <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                    <label class="layui-form-label">专家建议</label>
                </div>



            </form>
        </div>
    </div>
</div>




<div class="layui-col-md4" style="float: left;width: 50%;">
    <div class="layui-card"  style="text-align: center;height: 82%">


        <!--文本框2个-->
        <div class="layui-card-body" style="padding: 15px;">
            <form class="layui-form" action="" lay-filter="component-form-group">
                <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">

                    <!--图片上传-->

                    <style>
                        .layui-upload-img{width: 92px; height: 92px; margin: 0 10px 10px 0;}
                    </style>



                    <label class="layui-form-label" style="margin-top: 5%">灾害图片</label>
                    <%--<div class="layui-upload">--%>
                    <div class="layui-upload-list" style="float: top">
                        <img class="layui-upload-img" id="test-upload-normal-img" style="float: left;margin-left: 30%">
                        <p id="test-upload-demoText"></p>

                    </div>


                </div>


                <!--下拉框-->


                <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                    <label class="layui-form-label">发现途径</label>
                </div>

                <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                    <label class="layui-form-label">发生位置</label>
                </div>

                <div class="layui-form-item" style="margin-top: 8%;margin-left: 15%">
                    <label class="layui-form-label">所在小班</label>
                </div>

                <div class="layui-form-item" style="margin-top: 8%;margin-left: 15%">
                    <label class="layui-form-label">影响面积</label>
                </div>

                <div class="layui-form-item" style="margin-top: 8%;margin-left: 15%">
                    <label class="layui-form-label">防治方案</label>
                </div>


            </form>
        </div>
    </div>
</div>




<!--按钮-->
<div class="layui-col-md4" style="float: right;width: 100%;">
    <div class="layui-card"  style="text-align: center;height: 10%;">
        <button type="button" class="layui-btn layui-btn-primary" style="width: 15%;margin-top: 2%" id="outId">修改</button>
    </div>
</div>

<script>
    //下拉框
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
    });

//js
    //返回主页面
    $("#outId").click(function () {
        location.href="webpage/prevention/incidentRcord.jsp";
    })


</script>

</body>
</html>
