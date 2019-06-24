

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
    <title>药剂/器械一览</title>
    <%@include file="head.jsp"%>
</head>
<body >


<!-- 表格-->
<div class="layui-card-header" style="font-size:30px"align="center">药剂/器械一览</div>
<div class="layui-card-body" style="height: 35%">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>名称</th>
            <th>防治类型</th>
            <th>类别</th>
            <th>数量</th>
            <th>主要用途</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="drug">
            <tr><td>${drug.drugName}</td><td>${drug.type1.typeVal}</td><td>${drug.type2.typeVal}</td>
                <td>${drug.drugNum}</td><td>${drug.drugUseWay}</td>
            </tr>
        </c:forEach>

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



<!--查询开始-->

<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
    <div class="layui-card"  style="text-align: center">
        <div class="layui-card-header">查询药剂信息</div>
        <div class="layui-card-body">

<form action="showDrug.lovo" method="post">
            <div class="layui-form-item">
                <div class="layui-col-md12">
                    <input type="text" style="width: 50%;margin-left: 20%" name="title" placeholder="请输入名称" autocomplete="off" class="layui-input">
                </div><br><br>
            </div>

            <div class="layui-form-item">
                <div class="layui-col-md6" style="width: 335px">
                    <select name="city" lay-verify="" style="width: 267px;height: 40px;margin-left:32%">
                        <option value="">请选择一个防治类型</option>
                        <c:forEach items="${list1}" var="type">
                            <option value="${type.typeKey}">${type.typeVal}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>



            <div class="layui-form-item">
                <div class="layui-col-md6" style="width: 335px">
                    <select name="city1" lay-verify="" style="width: 267px;height: 40px;margin-left:32%">
                        <option value="">请选择一个类别</option>
                        <c:forEach items="${list2}" var="v2">
                            <option value="${v2.typeKey}" >${v2.typeVal}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>



            <br/>
            <br/>
            <!--按钮-->
       <!--     <button type="button" class="layui-btn layui-btn-primary">查询</button>-->
    <input type="submit" class="layui-btn layui-btn-primary" value="查询">
</form>
        </div>

            </div>

</div>

<!--查询结束-->


        <div class="layui-col-md4" style="margin-top: 10px;width: 48%">

            <div class="layui-card" style="height: 40%;">

                <div class="layui-card-body">
                    <div  id="btnDivId">
                        <!--按钮-->
                       <!-- <button style="margin-left: 200px;margin-top: 20%" onclick="add()" id="b1" type="button" class="layui-btn layui-btn-primary">
                       添加药剂</button> -->
                        <form action="showAddDrug.lovo" method="post">
                         <input style="margin-left: 200px;margin-top: 20%" type="submit" class="layui-btn layui-btn-primary" value="添加药剂">
                        </form>
                    </div>
                </div>
            </div>
        </div>

<script src="webpage/jQuery-2.2.2-min.js"></script>
<script>


</script>


<script src="layuiadmin/layui/layui.js"></script>
<script>
        layui.config({
            base: 'layuiadmin/' //静态资源所在路径
        }).extend({
            index: 'lib/index' //主入口模块
        }).use(['index','laydate', 'laypage','user','form'], function(){
            var laydate = layui.laydate,
                laypage = layui.laypage;
            var $ = layui.$
                , admin = layui.admin
                , element = layui.element
                , form = layui.form
                , router = layui.router();

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
            ,count: ${list.size()}
            ,first: '首页'
            ,last: '尾页'
            ,prev: '<em>←</em>'
            ,next: '<em>→</em>'
        });

        });


</script>


</body>
</html>
