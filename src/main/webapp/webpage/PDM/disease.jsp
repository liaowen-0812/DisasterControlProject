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
    <title>病害一览</title>
    <%@include file="head.jsp"%>
</head>
<body>
<form action="diseaseListServlet.lovo" method="post" id="f2">
    <input type="text" style="display: none" value="${cerPage}" name="tName" id="tid">
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-header" style="font-size: 30px">病害一览</div>
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
                    <th>选择</th>
                    <th>名称</th>
                    <th>主要危害</th>
                    <th>发病规律</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${diseaseList}" var="a">
                    <tr><th><input value="${a.diseaseId}" name="checkName" type="checkbox" lay-skin="primary"/></th><th>${a.diseaseName}</th><th>${a.diseaseHarm}</th><th>${a.rule}</th>
                    </tr>
                </c:forEach>
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
                <button type="button" class="layui-btn layui-btn-primary"id="bid1" onclick="addEnter()">添加新病害</button>
                <form style="display: initial;" class="layui-form" id="findId" action="finddiseaseServlet.lovo" method="post">
                <button type="button" class="layui-btn layui-btn-primary"id="bid2" style="margin-left: 100px" onclick="see()">查看详细信息</button>
                    <input type="hidden" value="" name="idStr" id="findInput"/>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
    <div class="layui-card"  style="text-align: center;height: 40%">
        <div class="layui-card-header">查询病害信息</div>
        <div class="layui-card-body">

            <div class="layui-inline">
                <label class="layui-form-label">病害名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="url" lay-verify="url" autocomplete="off" class="layui-input"value="${dName}" id="test-laydate-start-cn1">
                </div>
            </div>
            <br/><br/>
            <div class="layui-inline">
                <label class="layui-form-label">发病症状</label>
                <div class="layui-input-inline">
                    <input type="text" name="url" lay-verify="url" autocomplete="off" class="layui-input"value="${sName}"id="test-laydate-start-cn2">
                </div>
            </div>
            <br/>
            <br/>
            <br/>
            <!--按钮-->
            <button type="button" class="layui-btn layui-btn-primary" id="bid">查询</button>

        </div>
    </div>
</div>
</form>
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
            ,count:${allCount}
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

    function addEnter(){
        location.href="webpage/PDM/adddisease.jsp";
    }
    function see(){
        location.href="webpage/PDM/diseaseInformation.jsp";
    }
    $("#bid").click(function () {
        var s=$("#test-laydate-start-cn1").val();
        alert(s)
    });
    $("#bid2").click(function () {
        var checkId = $("#tableId input:checked").length;
        alert(checkId)
        if(checkId==1){
            var tem="";
            $("#tableId input:checked").each(function () {
                tem+=$(this).val();
            });
            $("#findInput").val(tem);
            $("#findId").submit();
        }else {
            layer.msg('请选择1行')
        }
    });
</script>

</body>
</html>
