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
    <form action="addResultServlet.lovo" method="post" class="layui-form">
        <input type="text" style="display: none" value="" name="tttName" id="tid">
        <input type="text" style="display: none" value="" name="wName" id="tid1">
        <input type="text" style="display: none" value="${sId}" name="aaaName" id="tid3">
        <input type="text" style="display: none" value="${zjsj}" name="zjsjName" id="tid4">
        <input type="text" style="display: none" value="${jg}" name="jgName" id="tid5">
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">事件名称:${eventName}</b></span>
        <span><b style="margin-left: 20%">灾区图片:${eventImg}</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">时间:${eventDate}</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">发生位置:${eventArea}</b></span>
    </div>
    <div style="margin-top: 30px">
        <span><b style="margin-left: 35%">灾情描述:${eventInfo}</b></span>
        <span><b style="margin-left: 20%">影响面积:${eventPro}</b></span>
    </div>
    <div style="margin-top: 30px;margin-left: 30%">
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label" style="margin-left:3%"><b>会商结果:</b></label>
            <div class="layui-input-block">
                <textarea name="text" class="layui-textarea" style="width: 200px" id="tid2"></textarea>
                        <div class="layui-form-item" style="margin-top: 30px">
                            <div class="layui-col-md6" style="width: 335px;margin-left: -5%">
                               <b>会商人员:</b> <select id="sid" name="city" lay-verify="" lay-filter="aihao" class=”layui-form”>
                                    <c:forEach items="${nameList}" var="a">
                                        <option value="${a.doctorId}">${a.doctorName}</option>
                                    </c:forEach>
                                </select>
                                <div style="margin-top: 30px">
                                    <select id="nid" name="city1" lay-verify="" class=”layui-form”lay-filter="aihao2">

                                    </select>
                                </div>
                                <div style="margin-top: 30px">
                                <button type="submit" class="layui-btn layui-btn-primary" id="bid">添加会商信息</button>
                                </div>
                            </div>
                        </div>
            </div>
        </div>
    </div>
    </form>
    <form action="result.lovo" method="post">
        <div style="margin-top: 30px;margin-left: 35%">
        <button type="submit" class="layui-btn layui-btn-primary" id="bid1">返回</button>
        </div>
    </form>

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
                            <c:forEach items="${resultList}" var="a">
                                <tr><th>${a.doctorEventDate}</th><th>${a.list}</th><th>${a.doctorEventResult}</th></tr>
                            </c:forEach>
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
        alert($("#tid3").val())
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
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form;
        form.on('select(aihao)', function (data) {
            var options=$("#sid option:selected");//获取当前选择项.
            var tem= options.text();//获取当前选择项的文本
            var v=options.val();
            $("#nid").append("<option value='"+v+"'>"+tem+"</option>");
            renderForm();
        });
    });

    function renderForm(){
        layui.use('form', function(){
            var form = layui.form;
            form.render();
        });
    }

    $("#bid").click(function () {
        var tm="";
        $("#nid option").each(function () {
            tm+=$(this).val()+",";
        });
        $("#tid").val(tm);
        alert($("#tid").val());
        alert($("#tid3").val());
        $("#tid1").val($("#tid2").val());
    });

</script>
</body>
</html>
