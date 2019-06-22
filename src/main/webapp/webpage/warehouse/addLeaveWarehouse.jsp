<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/18
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>

<head>
    <base href="<%=basePath%>">
    <title>添加出库信息</title>
    <%@include file="head.jsp" %>
</head>
<body>

<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" >

        <div class="layadmin-user-login-box layadmin-user-login-header" style="margin-top: -12%;margin-bottom: -4%">
            <h2>添加出库信息</h2>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
            <div>
                <div style="float:left;width: 15%">
            <b style="font-size:18px;">领用小班：</b>
                </div>


                <div class="layui-col-md6" style="width: 200px;float:left;width: 20%;margin-top: -0.5%">
                    <select name="city" lay-verify="" style="">
                        <option value="">请选择一个类别</option>
                        <option value="0">药剂</option>
                        <option value="1">器械</option>
                    </select>
                </div>

                <b style="margin-left: 20%;font-size:18px">出库人：招小宏</b>

            </div>


            <div class="layui-card-body" style="height: 35%;margin-top: 1%">
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


                <!--按钮-->
            <div class="layui-fluid" id="LAY-component-layer-list" style="height: 20%;">
            <div class="layui-btn-container layadmin-layer-demo">
            <button style="margin-left:15%;margin-top: 5% " class="layui-btn layui-btn-primary" data-type="test5">添加物品</button>
            </div>
                <!--按钮-->
                <button style="margin-left:15%;margin-top: 5%" onclick="" type="button" class="layui-btn layui-btn-primary">移除物品</button>

                <!--按钮-->
                <button style="margin-left:15%;margin-top: 5%" onclick="" type="button" class="layui-btn layui-btn-primary">出库</button>
            </div>


        </div>

</div>

<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form'], function () {
        var $ = layui.$
            , admin = layui.admin
            , element = layui.element
            , form = layui.form
            , router = layui.router()
            ,layer = layui.layer;
        element.render();

        var active = {
            test5: function () {
                layer.open({
                    title: '添加物品'
                    , type: 2
                    //,skin: 'layui-layer-rim'
                    , shadeClose: true
                    , area:['1000px','500px']
                    , content: 'webpage/warehouse/acquisition.jsp'
                });
            }
        }

        $('#LAY-component-layer-list .layadmin-layer-demo .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] && active[type].call(this);
        });



    });
</script>
</body>
</html>
