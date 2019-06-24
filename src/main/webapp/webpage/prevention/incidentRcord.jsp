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
    <title>事件记录</title>
    <%@include file="head.jsp"%>
</head>
<body>
<div class="layui-card" style="height: 100%">
<div class="layui-card">
    <div class="layui-card-header" style="font-size: 30px;height: 70px" align="center">事件记录</div>
    <div class="layui-card-body">
        <table class="layui-table">
            <colgroup>
                <col width="150">
                <col width="150">
                <col width="200">
                <col width="250">
                <col width="200">
            </colgroup>
            <thead>
            <tr>
                <th>人物</th>
                <th>民族</th>
                <th>出场时间</th>
                <th>格言</th>
                <th>faj</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>贤心</td>
                <td>汉族</td>
                <td>1989-10-14</td>
                <td>人生似修行</td>
                <td>111</td>
            </tr>
            <tr>
                <td>张爱玲</td>
                <td>汉族</td>
                <td>1920-09-30</td>
                <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
                <td>111</td>
            </tr>
            <tr>
                <td>Helen Keller</td>
                <td>拉丁美裔</td>
                <td>1880-06-27</td>
                <td> Life is either a daring adventure or nothing.</td>
                <td>111</td>
            </tr>
            <tr>
                <td>岳飞</td>
                <td>汉族</td>
                <td>1103-北宋崇宁二年</td>
                <td>教科书再滥改，也抹不去“民族英雄”的事实</td>
                <td>111</td>
            </tr>
            <tr>
                <td>孟子</td>
                <td>华夏族（汉族）</td>
                <td>公元前-372年</td>
                <td>猿强，则国强。国强，则猿更强！ </td>
                <td>111</td>
            </tr>

            </tbody>
        </table>
    </div>
</div>

<!--分页-->
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-body">
            <div id="test-laypage-demo3"></div>
        </div>
    </div>
</div>


<!--按钮-->
<div class="layui-col-md4" style="float: left;margin-top: 20px;width: 50%;">
    <div class="layui-card"  style="text-align: center;height: 57%;">
        <div class="layui-card-body" >
            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary" style="float: left;margin-left:10%;margin-top:30px;width: 150px;" id="addId">添加事件</button>
            <button type="button" class="layui-btn layui-btn-primary" style="float: left;margin-left:10%;margin-top:30px;width: 150px;" id="findId">查看事件信息</button>
        </div>

        <div class="layui-card-body" style="margin-top: 120px">
            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary" style="float: left;margin-left:10%;margin-top:60px;width: 150px;">申请专家会审</button>
            <button type="button" class="layui-btn layui-btn-primary" style="float: left;margin-left:10%;margin-top:60px;width: 150px;" id="updateId">修改事件信息</button>
        </div>

    </div>
</div>




<!--查询开始-->
<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%;">
    <div class="layui-card"  style="text-align: center;height: 58%;">
        <div class="layui-card-header"><h2 style="margin-right: 70%">查询日志信息</h2></div>
        <div class="layui-card-body" >

            <div class="layui-input-inline">
                <label class="layui-form-label">事件名称</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"   placeholder="事件名称">
                </div>
            </div>
            <br/>
            <br/>

            <div class="layui-input-inline">
                <label class="layui-form-label">灾情状态</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"   placeholder="灾情状态">
                </div>
            </div>
            <br/>
            <br/>


            <div class="layui-input-inline">
                <label class="layui-form-label">发生位置</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"   placeholder="发生位置">
                </div>
            </div>
            <br/>
            <br/>

            <div class="layui-input-inline">
                <label class="layui-form-label">起始日期</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-start-cn" placeholder="yyyy-MM-dd">
                </div>
            </div>
            <br/><br/>
            <div class="layui-input-inline">
                <label class="layui-form-label">结束日期</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-last-cn" placeholder="yyyy-MM-dd">
                </div>
            </div>
            <br/>
            <br/>
            <br/>
            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary">查找</button>

        </div>
    </div>
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
            ,count: 100
            ,first: '首页'
            ,last: '尾页'
            ,prev: '<em>←</em>'
            ,next: '<em>→</em>'
        });


    });
    function addUser() {
        location.href='webpage/system/addUser.jsp';
    }
    function update() {
        location.href='webpage/system/updateUser.jsp';
    }


    //js
    //添加事件
    $("#addId").click(function () {
        location.href="webpage/prevention/addIncident.jsp";
    })

    //查看事件信息
    $("#findId").click(function () {
        location.href="webpage/prevention/findIncident.jsp";
    })

    //修改事件信息
    $("#updateId").click(function () {
        location.href="webpage/prevention/updateIncident.jsp";
    })

</script>

</body>
</html>
