

<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme()+"://"+request.getServerName
            ()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>药剂/器械一览</title>
    <%@include file="head.jsp"%>
</head>
<body>


<!-- 表格-->
<div class="layui-card-header" style="font-size:30px">药剂/器械一览</div>
<div class="layui-card-body" style="height: 53%;width: 100%">
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
            <th>格言</th>
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

<div class="layui-col-md12">
    <div class="layui-card">

        <div class="layui-card-body">
            <div id="test-laypage-demo3"></div>
        </div>
    </div>
</div>
<!--分页结束-->

<div class="layui-col-md4" style="margin-top: 10px;width: 48%">

    <div class="layui-card" style="height: 40%;">

        <div class="layui-card-body">
            <div  id="btnDivId">
                <!--按钮-->
                <button style="margin-left: 66px;margin-top: 10%" onclick=""
                        type="button" class="layui-btn layui-btn-primary">查询</button>
                <button style="margin-left: 200px;margin-top: 10%" onclick=""
                        type="button" class="layui-btn layui-btn-primary">领取</button>
            </div>
        </div>
    </div>
</div>

<!--查询开始-->

<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
    <div class="layui-card"  style="text-align: center">
        <div class="layui-card-header">查询药剂信息</div>
        <div class="layui-card-body">


            <div class="layui-form-item">
                <div class="layui-col-md12">
                    <input type="text" style="width: 50%;margin-left: 20%"
                           name="title" placeholder="请输入名称" autocomplete="off" class="layui-input">
                </div><br><br>
            </div>

            <div class="layui-form-item">
                <div class="layui-col-md6" style="width: 335px">
                    <select name="city" lay-verify="" style="width: 267px;height:
40px;margin-left:32%">
                        <option value="">请选择一个防治类型</option>
                        <option value="0">病害</option>
                        <option value="1">虫害</option>
                        <option value="2">鼠害</option>

                    </select>
                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-col-md6" style="width: 335px">
                    <select name="city" lay-verify="" style="width: 267px;height:40px;margin-left:32%">
                        <option value="">请选择一个类别</option>
                        <option value="0">药剂</option>
                        <option value="1">器械</option>
                    </select>
                </div>
            </div>


            <br/>
            <br/>
            <!--按钮-->
            <button type="button" style="margin-top: -10%" class="layui-btn
layui-btn-primary">查询</button>

        </div>
    </div>

</div>

<!--查询结束-->





<script>


</script>


<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index','laydate','user', 'laypage','form'], function(){
        var laydate = layui.laydate,
            laypage = layui.laypage
            , admin = layui.admin
            , element = layui.element
            , router = layui.router();
        var   form = layui.form;

        form.render();

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
