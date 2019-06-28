<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>森林病虫害防治系统</title>

    <%@include file="head.jsp" %>


</head>

<body class="layui-layout-body">

<div id="LAY_app">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <!-- 头部区域 -->
            <ul class="layui-nav layui-layout-left">
                <li class="layui-nav-item layadmin-flexible" lay-unselect>
                    <a href="javascript:;" layadmin-event="flexible" title="侧边伸缩">
                        <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
                    </a>
                </li>


            </ul>

        </div>

        <!-- 侧边菜单 -->
        <div class="layui-side layui-side-menu">
            <div class="layui-side-scroll">
                <div class="layui-logo" lay-href="home/console.html">
                    <span>森林病虫害防治系统</span>
                </div>

                <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu"
                    lay-filter="layadmin-system-side-menu">

                </ul>
            </div>
        </div>

        <!-- 页面标签 -->


        <!-- 主体内容 -->
        <div class="layui-body" id="LAY_app_body">
            <div class="layadmin-tabsbody-item layui-show">
                <iframe src="webpage/system/mainShow.jsp" frameborder="0" name="main" class="layadmin-iframe"></iframe>
            </div>
        </div>

        <!-- 辅助元素，一般用于移动设备下遮罩 -->
        <div class="layadmin-body-shade" layadmin-event="shade"></div>
    </div>
</div>

<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index','form'],function () {
        var $ = layui.$,
            element = layui.element,
            form = layui.form;


        var tempId=0;
        layer.ready(function () {
            <c:forEach items="${powerList}" var="power">
                tempId = ${power.roleObj.roleId};
            </c:forEach>
            var strVal="";
            if(tempId != 1){
                strVal = findPage(tempId,1)
            }else{
                strVal += findPage("1","1")
                strVal += findPage("2","2")
                strVal += findPage("3","3")
                strVal += findPage("4","4")
                strVal += findPage("5","5")
            }

            $("#LAY-system-side-menu").html(strVal);

            element.render();
            form.render()
        })
        function findPage(type,soureId) {
            var allStr = "";
            var str = "";

            <c:forEach items="${powerList}" var="power">
            var tagId = ${power.powerTag};
            if (tagId == soureId) {
                str+="<dd data-name='console' class='layui-this'>"+
                    "<a href='${power.powerSource}' target='main'>${power.powerName}</a></dd>";
            }
            </c:forEach>


            allStr += "<li  class='layui-nav-item'>" +
                "<a href='javascript:;' lay-direction='2'>" +
                "<cite>"
            if(type=="3") {
                allStr+="灾情防治";
            }else if(type=="2"){
                allStr+="资料管理";
            }else if(type=="4"){
                allStr+="专家会商";
            }else if(type=="5"){
                allStr+="药剂器械出库管理";
            }else if(type=="1"){
                allStr+="系统信息";
            }
            allStr+="</cite></a> <dl class='layui-nav-child'>"+str+"</dl></li>"
           return  allStr;
        }
    });
</script>
</body>
</html>


