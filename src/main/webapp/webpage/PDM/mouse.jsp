<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/6/19
  Time: 15:45
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
    <title>鼠害一览</title>
    <%@include file="head.jsp"%>
</head>
<body>
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-header" style="font-size: 30px">鼠害一览</div>
        <div class="layui-card-body">
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="150">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>人物</th>
                    <th>民族</th>
                    <th>出场时间</th>

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
    </div>
</div>
<!--分页开始-->
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-body">
            <div id="test-laypage-demo3"></div>
        </div>
    </div>
</div>

<div class="layui-col-md4" style="margin-top: 10px;width: 48%">

    <div class="layui-card" style="height: 40%;">
        <div class="layui-card-header" style="text-align: center;"></div>
        <div class="layui-card-body">
            <div  id="btnDivId">
                <!--按钮-->
                <button type="button" class="layui-btn layui-btn-primary">添加新鼠害</button>
                <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 100px">查看详细信息</button>

            </div>
        </div>
    </div>
</div>
<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
    <div class="layui-card"  style="text-align: center;height: 40%">
        <div class="layui-card-header">查询鼠害信息</div>
        <div class="layui-card-body">

            <div class="layui-inline">
                <label class="layui-form-label">病害名称</label>
                <div class="layui-input-inline">
                    <input type="tel" name="url" lay-verify="url" autocomplete="off" class="layui-input">
                </div>
            </div>
            <br/>
            <br/>
            <br/>
            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary">查询</button>

        </div>
    </div>
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
