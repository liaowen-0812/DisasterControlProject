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
    <title>日志一览</title>
    <%@include file="head.jsp" %>
</head>
<body>
<form class="layui-form" id="formId" action="log" method="post">
    <div class="layui-col-md12">
        <div class="layui-card">
            <div class="layui-card-header" style="text-align:center;font-size: 30px">日志信息</div>
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
                        <th>选择</th>
                        <th>日志内容</th>
                        <th>日期</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${logList}" var="log">
                        <tr>
                            <td style="width: 4%"><input value="${log.logId}" type="checkbox" lay-skin="primary"/></td>
                            <td>${log.logInfo}</td>
                            <td>${log.logDate}</td>
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

    <!--分页结束-->
    <!--查询开始-->
    <div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
        <div class="layui-card" style="text-align: center;height: 40%">
            <div class="layui-card-header">查询日志信息</div>
            <div class="layui-card-body">

                <div class="layui-input-inline">
                    <label class="layui-form-label">起始日期</label>
                    <div class="layui-input-inline">
                        <input type="text" value="${startDay}" name="startDay" class="layui-input" id="test-laydate-start-cn" placeholder="yyyy-MM-dd">
                    </div>
                </div>
                <br/><br/>
                <div class="layui-input-inline">
                    <label class="layui-form-label">结束日期</label>
                    <div class="layui-input-inline">
                        <input type="text" value="${lastDay}" name="lastDay" class="layui-input" id="test-laydate-last-cn" placeholder="yyyy-MM-dd">
                    </div>
                </div>
                <br/>
                <br/>
                <br/>
                <input type="hidden" name="currentPage" value="${newPage}" id="inputId"/>
                <!--按钮-->
                <input type="submit" class="layui-btn layui-btn-primary" name="btnId" value="查询">

            </div>
        </div>
    </div>
</form>
<!--查询结束-->


<!--查询结束-->
<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'laydate', 'laypage'], function () {
        var laydate = layui.laydate,
            laypage = layui.laypage
            , form = layui.form;
        form.render();
        laydate.render({
            elem: '#test-laydate-start-cn'
            , trigger: 'click'
        });

        laydate.render({
            elem: '#test-laydate-last-cn'
            , trigger: 'click'
        });
        //自定义首页、尾页、上一页、下一页文本
        laypage.render({
            elem: 'test-laypage-demo3'
            , count: ${allCount}
            <%--${allCount}--%>
            , first: '首页'
            , last: '尾页'
            , limit: ${countPage}
            , curr: $("#inputId").val()
            , jump: function (obj, first) {
                $("#inputId").val(obj.curr);
                if (!first) {
                    $("#formId").submit();
                }

            }
            , prev: '<em>←</em>'
            , next: '<em>→</em>'
        });
    });
</script>
</body>
</html>
