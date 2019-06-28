<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/6/19
  Time: 15:43
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
    <title>虫害一览</title>
    <%@include file="head.jsp"%>
</head>
<body>
<form action="wormsListServlet.lovo" method="post" id="f2">
    <input type="text" style="display: none" value="${cerPage}" name="tName" id="tid">
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-header" style="font-size: 30px">虫害一览</div>
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
                    <th>寄主</th>
                    <th>主要危害</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${wormsList}" var="a">
                    <tr><td><input value="${a.wormsId}" name="checkName" type="checkbox" lay-skin="primary"/></td><td>${a.wormsName}</td><td>${a.host}</td><td>${a.wormsHarm}</td>
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
                <button type="button" class="layui-btn layui-btn-primary" id="bid1" onclick="addEnter()">添加新虫害</button>

                <button type="button" class="layui-btn layui-btn-primary" id="bid2" style="margin-left: 100px" onclick="see()">查看详细信息</button>
                    <input type="hidden" value="" name="idStr" id="findInput"/>

            </div>
        </div>
    </div>
</div>
<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
    <div class="layui-card"  style="text-align: center;height: 40%">
        <div class="layui-card-header">查询虫害信息</div>
        <div class="layui-card-body">

            <div class="layui-inline">
                <label class="layui-form-label">害虫名</label>
                <div class="layui-input-inline">
                    <input type="text" name="wName" lay-verify="url" autocomplete="off" class="layui-input" value="${wName}"id="test-laydate-start-cn1">
                </div>
            </div>
            <br/><br/>
            <div class="layui-inline">
                <label class="layui-form-label">寄主</label>
                <div class="layui-input-inline">
                    <input type="text" name="hName" lay-verify="url" autocomplete="off" class="layui-input"value="${hName}"id="test-laydate-start-cn2">
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

    $("#bid").click(function () {
        $("#f2").submit();
    })

    function addEnter(){
        location.href="webpage/PDM/addworms.jsp";
    }
    function see(){
        var idStr=$(":checked").val();
        var checkId = $("input:checked").length;
        if(checkId==0){
            layer.msg('请选择1行', {icon: 5, anim: 6});
            return;
        }else if(checkId>1){
            layer.msg('请选择1行', {icon: 5, anim: 6});
            return;
        }
        location.href="findWormsServlet.lovo?idStr="+idStr;
    }

</script>


</body>
</html>
