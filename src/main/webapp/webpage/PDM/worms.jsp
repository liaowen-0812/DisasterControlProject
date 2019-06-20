<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/6/19
  Time: 15:43
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
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<div class="layui-card-header" style="font-size:30px ">虫害一览</div>
<div class="layui-card-body">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="150">
            <col width="200">

        </colgroup>
        <thead>
        <tr>
            <th>名称</th>
            <th>寄主</th>
            <th>主要危害</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>贤心</td>
            <td>汉族</td>
            <td>1989-10-14</td>

        </tr>
        <tr>
            <td>张爱玲</td>
            <td>汉族</td>
            <td>1920-09-30</td>

        </tr>
        <tr>
            <td>Helen Keller</td>
            <td>拉丁美裔</td>
            <td>1880-06-27</td>

        </tr>
        <tr>
            <td>岳飞</td>
            <td>汉族</td>
            <td>1103-北宋崇宁二年</td>

        </tr>
        <tr>
            <td>孟子</td>
            <td>华夏族（汉族）</td>
            <td>公元前-372年</td>

        </tr>
        </tbody>
    </table>
</div>
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-body">
            <div id="test-laypage-demo3"></div>
        </div>
    </div>
</div>

<div class="layui-card">
    <div class="layui-btn-container" style="padding-left: 200px">
        <button class="layui-btn layui-btn-primary">添加新虫害</button>
        <button class="layui-btn layui-btn-primary" >查看详细信息</button>
    </div>
    <div class="layui-card-header" style="padding-left: 1000px ">查询虫害信息</div>
    <div class="layui-card-body">
        <form class="layui-form" action="" lay-filter="component-form-element">
            <div class="layui-row layui-col-space10 layui-form-item">
                <div class="layui-col-lg5"style="padding-left: 1000px">
                    <label class="layui-form-label">害虫名</label>
                    <div class="layui-input-block">
                        <input type="text"  class="layui-form-text">
                    </div>
                    <br>
                    <label class="layui-form-label">寄主</label>
                    <div class="layui-input-block">
                        <input type="text" class="layui-form-text" >
                    </div>
                    <button class="layui-btn layui-btn-primary">查询</button>
                </div>

<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'laypage'], function(){
        var laypage = layui.laypage;
        //自定义首页、尾页、上一页、下一页文本
        laypage.render({
            elem: 'test-laypage-demo3'
            ,count: 100
            ,first: '首页'
            ,last: '尾页'
            ,prev: '<em>←</em>'
            ,next: '<em>→</em>'
        });
    });
</script>


</body>
</html>
