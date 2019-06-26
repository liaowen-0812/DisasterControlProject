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
    <title>专家一览</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <%@include file="../../head.jsp" %>

</head>
<body>

<form action="specialistServlet.lovo" method="post" id="f2">
    <input type="text" style="display: none" value="${cerPage}" name="tName" id="tid">
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header" style="font-size: 30px" align="center">专家一览</div>
                <div class="layui-card-body">
                    <table class="layui-table" id="tableId">
                        <colgroup>
                            <col width="150">
                            <col width="150">
                            <col width="200">
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>选择</th>
                            <th>姓名</th>
                            <th>工作单位</th>
                            <th>专长</th>
                            <th>职务</th>
                            <th>电话</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${doctorList}" var="a">
                            <tr><th><input value="${a.doctorId}" name="checkName" type="checkbox" lay-skin="primary"/></th><th>${a.doctorName}</th><th>${a.doctorCompany}</th><th>${a.doctorSpeciality}</th>
                                <th>${a.doctorPost}</th><th>${a.doctorTel}</th></tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
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

<!--分页结束-->
<!--查询开始-->
<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
    <div class="layui-card"  style="text-align: center">
        <div class="layui-card-header">查询专家信息</div>
        <div class="layui-card-body">

            <div class="layui-input-inline">
                <label class="layui-form-label">专家姓名</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value="${sName}" id="test-laydate-start-cn1" name="sName">
                </div>
            </div>
            <br/>

            <div class="layui-input-inline" style="margin-top: 20px">
                <label class="layui-form-label">专长</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value="${pName}" id="test-laydate-last-cn3" name="pName">
                </div>
            </div>
            <br/>
            <br/>

            <div class="layui-input-inline">
                <label class="layui-form-label">工作单位</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value="${hName}" id="test-laydate-start-cn2" name="hName">
                </div>
            </div>
            <br/>
            <br/>
            <!--按钮-->
            <button type="submit" class="layui-btn layui-btn-primary" id="bid">查询</button>

        </div>
    </div>
</div>
</form>
<!--查询结束-->
<div class="layui-col-md4" style="margin-top: 10px;width: 48%">

    <div class="layui-card" style="height: 40%;">
        <div class="layui-card-header" style="text-align: center;">按钮</div>
        <div class="layui-card-body">
            <div  id="btnDivId" style="margin-left: 150px">
                <!--按钮-->
                <button type="button" class="layui-btn layui-btn-primary" style="width: 120px" id="bid1">添加专家</button>
                <form style="display: initial;" class="layui-form" id="findId" action="find.lovo" method="post">
                <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 100px" id="bid2">查看专家信息</button>
                    <input type="hidden" value="" name="idStr" id="findInput"/>
                </form>
                <br/><br/><br/><br/>
                <form style="display: initial;" class="layui-form" id="updateformId" action="update.lovo" method="post">
                <button type="button"  class="layui-btn layui-btn-primary" id="bid3">修改专家信息</button>
                    <input type="hidden" value="" name="idStr" id="updateInput"/>
                </form>
                <form style="display: initial;" class="layui-form" id="delformId" action="del.lovo" method="post">
                <button type="button"  class="layui-btn layui-btn-primary" style="margin-left: 100px;width: 120px" id="bid4">删除专家</button>
                    <input type="hidden" value="" name="idStr" id="delInput"/>
                </form>
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
        var s=$("#test-laydate-start-cn1").val();
        alert(s)
    });

    $("#bid1").click(function () {
        location.href="webpage/specialistPage/addSpecialistPage.jsp";
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

    $("#bid3").click(function () {
        var checkId = $("#tableId input:checked").length;
        alert(checkId)
        if(checkId==1){
            var tem="";
            $("#tableId input:checked").each(function () {
                tem+=$(this).val();
            });
            $("#updateInput").val(tem);
            $("#updateformId").submit();
        }else {
            layer.msg('请选择1行')
        }
    });

    $("#bid4").click(function () {
        var checkId = $("#tableId input:checked").length;
        alert(checkId)
        if(checkId==1){
            var tem="";
            $("#tableId input:checked").each(function () {
                tem+=$(this).val();
            });
            $("#delInput").val(tem);
            $("#delformId").submit();
        }else {
            layer.msg('请选择1行')
        }
    });
</script>
</body>
</html>
