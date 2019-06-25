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
    <title>专家会商</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <%@include file="../../head.jsp" %>
</head>
<body>

<div><h2 align="center">专家会商</h2>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">事件名称:</b></span>
        <span><b style="margin-left: 20%">灾区图片:</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">时间:</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">发生位置:</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">灾情描述:</b></span>
        <span><b style="margin-left: 20%">影响面积:</b></span>
    </div>
    <div style="margin-top: 30px;margin-left: 30%">
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label" style="margin-left:3%"><b>会商结果:</b></label>
            <div class="layui-input-block">
                <textarea name="text" class="layui-textarea" style="width: 200px"></textarea>
                        <div class="layui-form-item" style="margin-top: 30px">
                            <div class="layui-col-md6" style="width: 335px;margin-left: -5%">
                               <b>会商人员:</b> <select name="city" lay-verify="" class="layui-form">
                                    <option value="">会商人员</option>
                                    <option value="010">超级管理员</option>
                                    <option value="021">资料管理员</option>
                                    <option value="0571">灾情管理员</option>
                                    <option value="0571">专家管理员</option>
                                    <option value="0571">库房管理员</option>
                                </select>
                                <div style="margin-top: 30px">
                                <button type="submit" class="layui-btn layui-btn-primary" id="bid">添加会商信息</button>
                                <button type="submit" class="layui-btn layui-btn-primary" id="bid1">返回</button>
                                </div>
                            </div>
                            <textarea name="text" class="layui-textarea" style="width: 100px;height: 50px"></textarea>
                        </div>
            </div>
        </div>
    </div>

    <div class="layui-fluid">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="layui-card">
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
                                <th>日期</th>
                                <th>会商人员</th>
                                <th>会商结果</th>
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
        </div>
    </div>
</div>




<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'user', 'form'], function () {
        var $ = layui.$
            , admin = layui.admin
            , element = layui.element
            , form = layui.form
            , router = layui.router();

        form.render();

    });


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
    });
</script>
</body>
</html>
