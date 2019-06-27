

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


<!-- 表格-->
<form action="leaveHouse.lovo" method="post" id="f2" class="layui-form">

    <input type="text" name="text1" value="${currentPage}" id="tt1" style="display: none">
<div class="layui-card-header" style="font-size:30px" align="center">药剂器械出库管理</div>
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
            <th></th>
            <th>日期</th>
            <th>领用小班</th>
            <th>出库人</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${list}" var="a" varStatus="status">
            <tr>
                <td><input type="checkbox" name="rName"  value="${a.className},${a.stockpileDate},${a.leaveHouseMan},${a.leaveHouseNum}" lay-skin="primary" ></td>
                <td>${a.stockpileDate}</td>
                <td>${a.className}</td>
                <td>${a.leaveHouseMan}</td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div class="layui-col-md12" style="margin-top: 8%">
    <div class="layui-card">

        <div class="layui-card-body">
            <div id="test-laypage-demo3"></div>
        </div>
    </div>
</div>
<!--分页结束-->

<!--添加按钮开始-->


<!--添加按钮结束-->
<!--查询开始-->
<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
    <div class="layui-card"  style="text-align: center">
        <div class="layui-card-header">查询药剂信息</div>
        <div class="layui-card-body">

            <div class="layui-input-inline">
                <label class="layui-form-label">起始日期</label>
                <div class="layui-input-inline">
                    <input type="text"  class="layui-input" name="name1"  id="test-laydate-start-cn" placeholder="yyyy-MM-dd" value="${date1}">
                </div>
            </div>

            <div class="layui-input-inline" style="margin-top: 20px">
                <label class="layui-form-label">结束日期</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" name="name2"   id="test-laydate-last-cn" placeholder="yyyy-MM-dd"  value="${date2}">
                </div>
            </div>
            <br><br>

                <div class="layui-col-md12">
                    <input type="text"  style="width: 35%;margin-left: 43%" name="className" placeholder="领用小班" value="${drugName}"
                           autocomplete="off" class="layui-input">
                </div>





            <!--按钮-->
            <button type="submit" onclick="c()" class="layui-btn layui-btn-primary">查询</button>

        </div>
    </div>
</div>
</form>
<!--查询结束-->


<div class="layui-col-md4" style="margin-top: 10px;width: 48%">

    <div class="layui-card" style="height: 40%;">

        <div class="layui-card-body">
            <div  id="btnDivId">
                <!--按钮-->
                <button style="margin-left: 200px;margin-top: 20%" onclick="add()" type="button" class="layui-btn layui-btn-primary">添加出库信息</button>

                <br><br><button style="margin-left: 200px;" onclick="look()" type="button" class="layui-btn layui-btn-primary">查看出库信息</button>

            </div>
        </div>
    </div>
</div>


<script src="layuiadmin/layui/layui.js"></script>
<script>

    function c() {
        $("#tt1").val("1")
    }
    function add() {
        location.href="addLeaveHouseInfoServlet.lovo"
    }

    function look() {
        if ($("input:checked").length == 0) {
            layer.msg('请选择行', {icon: 5, anim: 6});
            return;
        }else if($("input:checked").length>1){
            layer.msg('请选择单行', {icon: 5, anim: 6});
            return;
        }
            var checkInfo = $(":checked").val();
            var str = "LookLeaveHouse.lovo?checkInfo=" + checkInfo
            location.href = str;
        }

</script>

<script src="layuiadmin/layui/layui.js"></script>
<script>


    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index','laydate', 'laypage','form'], function(){
        var laydate = layui.laydate,
            laypage = layui.laypage;
        var  form=layui.form,
            element = layui.element;
        form.render();
         element.render();
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
            , count: ${allCount} //设置总行数，从后台传
            , limit:${countPage} //每页显示行数，后台传
            , first: '首页'
            , last: '尾页'
            , curr: $("#tt1").val()
            , prev: '<em>←</em>'
            , next: '<em>→</em>'
            , jump: function (obj, first) { // 跳转页数
                if (!first) {
                    $("#tt1").val(obj.curr) //将隐藏表单的val设置为当前页，然后提交，传给后台
                    $("#f2").submit();
                }
            }
        });

    });
</script>


</body>
</html>
