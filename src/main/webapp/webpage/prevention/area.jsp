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
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<div class="layui-card-header" align="center"><h2>区域一览</h2></div>
<div class="layui-card-body" align="center">
    <table class="layui-table">
        <colgroup>
            <col width="250">
            <col width="250">
            <col width="250">
            <col width="250">
        </colgroup>
        <thead>
        <tr>
            <th>区域名称</th>
            <th>林种</th>
            <th>地类</th>
            <th>优势树种</th>
            <th>负责小班 </th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>贤心</td>
            <td>汉族</td>
            <td>1989-10-14</td>
            <td>人生似修行</td>
            <td></td>
        </tr>

        </tbody>
    </table>
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
        <div class="layui-card-header">查询日志信息</div>
        <div class="layui-card-body">
            <div class="layui-input-block" style="width: 200px; margin-left:50%;margin-top: 20px">
                <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="种植区域" class="layui-input">
            </div>
            <div class="layui-input-block" style="width: 200px; margin-left:50%;margin-top: 20px">
                <input type="text" name="title1" lay-verify="title" autocomplete="off" placeholder="林种" class="layui-input">
            </div>

            <div class="layui-input-block" style="width: 200px; margin-left:50%;margin-top: 20px">
                <input type="text" name="title2" lay-verify="title" autocomplete="off" placeholder="负责小班" class="layui-input">
            </div>

            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 50%;margin-top: 20px">添加用户</button>

        </div>
    </div>
</div>
</div>

<div class="layui-col-md4" style="float: left;margin-top: 10px;width: 48%;">
    <div class="layui-card"  style="text-align: center;height: 40%">
        <div class="layui-card-body">
            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary" style="float: left;margin-left:40%;margin-top:100px;width: 150px">添加用户</button>

        </div>
    </div>
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
</script>
</body>
</html>
