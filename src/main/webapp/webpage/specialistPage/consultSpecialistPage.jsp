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
<form action="result.lovo" method="post" id="f2">
    <input type="text" style="display: none" value="${cerPage}" name="tName" id="tid">
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header" style="font-size: 30px" align="center">事件记录</div>
                <div class="layui-card-body">
                    <table class="layui-table" id="tid2">
                        <colgroup>
                            <col width="150">
                            <col width="150">
                            <col width="200">
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>选择</th>
                            <th>事件名称</th>
                            <th>日期</th>
                            <th>发生位置</th>
                            <th>防治方案</th>
                            <th>灾情状态</th>
                        </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${eventList}" var="a">
                                <tr><th><input value="${a.eventId}" name="checkName" type="checkbox" lay-skin="primary"/></th>
                                    <th>${a.eventName}</th><th>${a.eventDate}</th><th>${a.eventArea}</th>
                                    <th>${a.eventMethod}</th><th>${a.eventType}</th></tr>
                            </c:forEach>
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
</form>
<form action="specialistResultServlet.lovo" method="post" id="fid">
<div class="layui-col-md4" style="margin-top: 10px;width: 48%">

        <div class="layui-card-body">
                <!--按钮-->
                <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 90%" id="bid">专家会商</button>
            <input type="text" style="display: none" value="" name="textName" id="tid3">
        </div>
</div>
</form>


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
            ,count: ${allCount}
            ,limit:5
            ,first: '首页'
            ,last: '尾页'
            , curr: $("#tid").val()
            , prev: '<em>←</em>'
            , next: '<em>→</em>'
            , jump: function (obj, first) { // 跳转页数
                if (!first) {
                    $("#tid").val(obj.curr); //将隐藏表单的val设置为当前页，然后提交，传给后台
                    $("#f2").submit();
                }
            }
        });
    });
    
    $("#bid").click(function () {
       var checkId= $("#tid2 input:checked").length;
       if(checkId==1){
           var tem="";
           $("#tid2 input:checked").each(function () {
               tem+=$(this).val();
           });
           $("#tid3").val(tem);
           $("#fid").submit();
       }
       else {
           layer.msg('请选择1行');
       }
    });
</script>
</body>
</html>
