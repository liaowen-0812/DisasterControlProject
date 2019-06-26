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
    <title>事件记录</title>
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
                <div class="layui-card-header" style="font-size: 30px" align="center">事件记录</div>
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
                            <th>事件名称</th>
                            <th>日期</th>
                            <th>发生位置</th>
                            <th>防治方案</th>
                            <th>灾情状态</th>
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
            <!--分页开始-->
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body">
                        <div id="test-laypage-demo3"></div>
                    </div>
                </div>
            </div>

            <!--分页结束-->
        </div>
    </div>
</div>

<div class="layui-col-md4" style="margin-top: 10px;width: 48%">

        <div class="layui-card-body">
                <!--按钮-->
                <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 90%">专家会商</button>
        </div>
</div>


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
            ,count: 10
            ,limit:5
            ,first: '首页'
            ,last: '尾页'
            , curr: $("#tid").val()
            , prev: '<em>←</em>'
            , next: '<em>→</em>'
            , jump: function (obj, first) { // 跳转页数
                if (!first) {
                    $("#tid").val(obj.curr) //将隐藏表单的val设置为当前页，然后提交，传给后台
                    $("#f2").submit();
                }
            }
        });
    });
</script>
</body>
</html>
