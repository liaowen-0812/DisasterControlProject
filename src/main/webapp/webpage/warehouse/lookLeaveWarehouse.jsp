

<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>

<div class="layui-card-header" style="font-size:30px;margin-bottom: 3%" align="center">查看出库信息</div>
<b style="margin-left: 15%;font-size:18px">领用小班：雅琳一班</b> <b style="margin-left: 15%;font-size:18px">出库人：招小宏</b>
<b style="margin-left: 15%;font-size:18px">领用日期   2019-6-21</b>
<div class="layui-card-body" style="height: 35%;margin-top: 3%">
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







            <div  id="btnDivId" style="margin-top: -10%;margin-left: 20%">
                <!--按钮-->
                <button style="margin-left: 200px;margin-top: 20%" onclick="ret()" type="button" class="layui-btn layui-btn-primary">确定</button>

            </div>


<script>
    function ret() {
       location.href="webpage/warehouse/leaveWarehouse.jsp" ;
    }
</script>

</body>
</html>
