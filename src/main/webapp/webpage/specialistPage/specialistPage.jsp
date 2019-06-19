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
    <title>专家一览</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <%@include file="../../head.jsp" %>

</head>
<body>


<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header" style="font-size: 30px">专家一览</div>
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
                            <th>姓名</th>
                            <th>工作单位</th>
                            <th>专长</th>
                            <th>职务</th>
                            <th>电话</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>贤心</td>
                            <td>汉族</td>
                            <td>1989-10-14</td>
                            <td>人生似修行</td>
                        </tr>
                        <tr>
                            <td>张爱玲</td>
                            <td>汉族</td>
                            <td>1920-09-30</td>
                            <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
                        </tr>
                        <tr>
                            <td>Helen Keller</td>
                            <td>拉丁美裔</td>
                            <td>1880-06-27</td>
                            <td> Life is either a daring adventure or nothing.</td>
                        </tr>
                        <tr>
                            <td>岳飞</td>
                            <td>汉族</td>
                            <td>1103-北宋崇宁二年</td>
                            <td>教科书再滥改，也抹不去“民族英雄”的事实</td>
                        </tr>
                        <tr>
                            <td>孟子</td>
                            <td>华夏族（汉族）</td>
                            <td>公元前-372年</td>
                            <td>猿强，则国强。国强，则猿更强！ </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
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

<!--分页结束-->
<!--查询开始-->
<div class="layui-col-md4" style="float: right;margin-top: 10px">
    <div class="layui-card"  style="text-align: center">
        <div class="layui-card-header">查询日志信息</div>
        <div class="layui-card-body">

            <div class="layui-input-inline">
                <label class="layui-form-label">起始日期</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-start-cn" placeholder="yyyy-MM-dd">
                </div>
            </div>

            <div class="layui-input-inline" style="margin-top: 20px">
                <label class="layui-form-label">结束日期</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-last-cn" placeholder="yyyy-MM-dd">
                </div>
            </div>
            <br/>
            <br/>
            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary">查询</button>

        </div>
    </div>
</div>

<!--查询结束-->

<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index','laydate', 'laypage'], function(){
        var laydate = layui.laydate,
            laypage = layui.laypage;

        laydate.render({
            elem: '#test-laydate-start-cn'
            ,trigger: 'click'
        });

        laydate.render({
            elem: '#test-laydate-last-cn'
            ,trigger: 'click'
        });
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
