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
    <title>区域一览</title>
    <%@include file="head.jsp"%>
</head>
<body>

<div class="layui-card-header" align="center"><h2>区域一览</h2></div>
<form id="fid" action="areaServlet.lovo" method="post">
<div class="layui-card">
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
                <th>区域名</th>
                <th>林种</th>
                <th>地类</th>
                <th>优势树种</th>
                <th>负责小班</th>
            </tr>
            </thead>
            <tbody>

             <c:forEach  items="${list}" var="s">
            <tr>
                <td>${s.areaId.areaName}</td>
                <td>${s.areaId.areaTreeType}</td>
                <td>${s.areaId}</td>
                <td>${s.areaId.areaGoodTree}</td>
                <td>${s.className}</td>
            </tr>
            </c:forEach>
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
<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
    <div class="layui-card"  style="text-align: center;height: 40%">
        <div class="layui-card-header">查询区域信息</div>
        <div class="layui-card-body" >

            <!--文本框标题-->
            <div style=" position: absolute;left: 25%;top: 40px;width: 100px;"><h2>种植区域:</h2></div>
            <div style=" position: absolute;left: 27.5%;top: 100px;width: 100px;"><h2>林种:</h2></div>
            <div style=" position: absolute;left: 25%;top: 160px;width: 100px;"><h2>负责小班:</h2></div>


            <div class="layui-input-block" style="width: 200px; margin-left:50%;margin-top: 20px;">
                <input type="text" name="title" lay-verify="make" autocomplete="off" placeholder="种植区域" class="layui-input" >
            </div>
            <div class="layui-input-block" style="width: 200px; margin-left:50%;margin-top: 20px">
                <input type="text" name="title1" lay-verify="tree" autocomplete="off" placeholder="林种" class="layui-input">
            </div>

            <div class="layui-input-block" style="width: 200px; margin-left:50%;margin-top: 20px">
                <input type="text" name="title2" lay-verify="littleClass" autocomplete="off" placeholder="负责小班" class="layui-input" >
            </div>

            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 50%;margin-top: 20px" id="findId">查找</button>

        </div>
    </div>
</div>
</div>

<div class="layui-col-md4" style="float: left;margin-top: 10px;width: 48%;">
    <div class="layui-card"  style="text-align: center;height: 40%">
        <div class="layui-card-body">
            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary" style="float: left;margin-left:40%;margin-top:100px;width: 150px" id="buttonId">添加用户</button>

        </div>
    </div>
</form>
</div>

</body>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'laypage'], function(){
        var laypage = layui.laypage;

        //总页数低于页码总数
        laypage.render({
            elem: 'test-laypage-demo0'
            ,count: 50 //数据总数
        });

        //总页数大于页码总数
        laypage.render({
            elem: 'test-laypage-demo1'
            ,count: 70 //数据总数
            ,jump: function(obj){
                console.log(obj)
            }
        });

        //自定义样式
        laypage.render({
            elem: 'test-laypage-demo2'
            ,count: 100
            ,theme: '#1E9FFF'
        });
        laypage.render({
            elem: 'test-laypage-demo2-1'
            ,count: 100
            ,theme: '#FF5722'
        });
        laypage.render({
            elem: 'test-laypage-demo2-2'
            ,count: 100
            ,theme: '#FFB800'
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

        //不显示首页尾页
        laypage.render({
            elem: 'test-laypage-demo4'
            ,count: 100
            ,first: false
            ,last: false
        });

        //开启HASH
        laypage.render({
            elem: 'test-laypage-demo5'
            ,count: 500
            ,curr: location.hash.replace('#!fenye=', '') //获取hash值为fenye的当前页
            ,hash: 'fenye' //自定义hash值
        });

        //只显示上一页、下一页
        laypage.render({
            elem: 'test-laypage-demo6'
            ,count: 50
            ,layout: ['prev', 'next']
            ,jump: function(obj, first){
                if(!first){
                    layer.msg('第 '+ obj.curr +' 页');
                }
            }
        });
    });



    // //自己的js
    //页面跳转
    function buttonId() {
        location.href="webpage/prevention/addarea.jsp";
    }
//表单提交数据
//     $("#buttonId").click(function () {
//         $("#fid").submit();
//         alert(1)
//     })

</script>

</body>
</html>
