

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
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>

<div class="layui-card-header" style="font-size:30px;margin-bottom: 3%" align="center">查看出库信息</div>
<b style="margin-left: 15%;font-size:18px">领用小班：${className}</b> <b style="margin-left: 15%;font-size:18px">出库人：${leaveHouseMan}</b>
<b style="margin-left: 15%;font-size:18px">领用日期 :  ${date1}</b>
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
            <th>物品名称</th>
            <th>防治类型</th>
            <th>类型</th>
            <th>领用数量</th>
        </tr>
        </thead>
        <tbody>
           <c:forEach items="${list}" var="dto">
              <tr>
                  <td>${dto.sysDrug.drugName}</td>
                  <td>${dto.sysDrug.type1.typeVal}</td>
                  <td>${dto.sysDrug.type2.typeVal}</td>
                  <td>${dto.leaveHouseNum}</td>
              </tr>
           </c:forEach>

        </tbody>
    </table>
</div>

<form>
<div style="margin-top: -2%">
    <div class="layui-col-md12">
        <div class="layui-card">

            <div class="layui-card-body">
                <div id="test-laypage-demo3"></div>
            </div>

        </div>
    </div>
</div>

<input type="text" name="currentPage" style="display:none;" value="${currentPage}" id="tt1">

<input type="text" name="checkInfo" style="display:none;" value="${className},${leaveHouseMan},${date1}">

</form>
            <div  id="btnDivId" style="margin-top: -10%;margin-left: 20%">
                <!--按钮-->
                <button style="margin-left: 200px;margin-top: 20%" onclick="ret()" type="button" class="layui-btn layui-btn-primary">确定</button>

            </div>

<script src="layuiadmin/layui/layui.js"></script>
<script>
    function ret(){
    location.href="leaveHouse.lovo";
    }
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'laydate', 'laypage', 'form'], function () {
        var laypage = layui.laypage;
        var $ = layui.$
            , admin = layui.admin
            , element = layui.element
            , form = layui.form
            , router = layui.router();

        form.render();



        //自定义首页、尾页、上一页、下一页文本
        laypage.render({
            elem: 'test-laypage-demo3'
            , count:${allCount} //设置总行数，从后台传
            , limit:${countPage} //每页显示行数，后台传
            , first: '首页'
            , last: '尾页'
            , curr: $("#tt1").val()
            , prev: '<em>←</em>'
            , next: '<em>→</em>'
            , jump: function (obj, first) { // 跳转页数
                if (!first) {
                    $("#tt1").val(obj.curr)//将隐藏表单的val设置为当前页，然后提交，传给后台
                    $("#f2").submit();
                }
            }


        });

    });
</script>

</body>
</html>
