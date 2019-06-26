

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme()+"://"+request.getServerName
            ()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>添加物品</title>
    <%@include file="head.jsp"%>
</head>
<body>
<!-- 表格-->
<form action="FindAddLeaveHouseServlet.lovo" method="post" class="layui-form" id="f2">

    <input type="text" value="${tval}" style="display: none" name="currentPage" id="tt1">
<div class="layui-card-header" style="font-size:30px">添加物品</div>
<div class="layui-card-body" style="height: 53%;width: 100%">

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
            <th>名称</th>
            <th>防治类型</th>
            <th>类别</th>
            <th>数量</th>
            <th>主要用途</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="drug">
            <tr>
                <td> <input type="checkbox" name="cName" value="${drug.drugId}"></td>
                <td>${drug.drugName}</td>
                <td>${drug.type1.typeVal}</td>
                <td>${drug.type2.typeVal}</td>
                <td>${drug.drugNum}</td>
                <td>${drug.drugUseWay}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

<div class="layui-col-md12" style="margin-top: 13%">
    <div class="layui-card">

        <div class="layui-card-body">
            <div id="test-laypage-demo3"></div>
        </div>
    </div>
</div>
<!--分页结束-->

<div class="layui-col-md4" style="margin-top: 10px;width: 48%">

    <div class="layui-card" style="height: 40%;">

        <div class="layui-card-body">
            <div  id="btnDivId">
                <!--按钮-->

                <%--<button style="margin-left: 200px;margin-top: 10%" onclick="lingQu()"--%>
                        <%--type="button" class="layui-btn layui-btn-primary">领取</button>--%>

            </div>
        </div>
    </div>
</div>

<!--查询开始-->

<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
    <div class="layui-card"  style="text-align: center">
        <div class="layui-card-header">查询药剂信息</div>
        <div class="layui-card-body">


            <div class="layui-form-item">
                <div class="layui-col-md12">
                    <input type="text" style="width: 50%;margin-left: 20%"
                           name="title" placeholder="请输入名称" autocomplete="off" class="layui-input" value="${drugName}">
                </div><br><br>
            </div>

            <div class="layui-form-item">
                <div class="layui-col-md6" style="width: 375px;padding-left: 20%">
                    <select name="city" lay-verify="" style=";width: 50%;height: 40px;">
                        <option value="">请选择一个防治类型</option>
                        <c:forEach items="${list1}" var="type">
                            <c:if test="${typeLx==type.typeKey&&typeLx!=''}">
                                <option value="${type.typeKey}" selected="selected">${type.typeVal}</option>
                            </c:if>
                            <c:if test="${typeLx!=type.typeKey||typeLx==''}">
                                <option value="${type.typeKey}">${type.typeVal}</option>
                            </c:if>

                        </c:forEach>
                    </select>
                </div>
            </div>



            <div class="layui-form-item">
                <div class="layui-col-md6" style="width: 375px;padding-left: 20%">
                    <select name="city1" lay-verify="" style="width: 267px;height: 40px;margin-left:32%">
                        <option value="">请选择一个类别</option>
                        <c:forEach items="${list2}" var="type">
                            <c:if test="${typeLb==type.typeKey&&typeLb!=''}">
                                <option value="${type.typeKey}" selected="selected">${type.typeVal}</option>
                            </c:if>
                            <c:if test="${typeLb!=type.typeKey||typeLb==''}">
                                <option value="${type.typeKey}">${type.typeVal}</option>
                            </c:if>
                        </c:forEach>
                    </select>
                </div>
            </div>


            <br/>
            <br/>
            <!--按钮-->
            <button type="submit" style="margin-top: -10%" class="layui-btn
              layui-btn-primary">查询</button>

        </div>

    </div>

</div>
</form>
<!--查询结束-->
</body>



<script src="layuiadmin/layui/layui.js"></script>
<script>
var str='';
var callbackdata = function lingQu () {
        var arr = new Array();
        var checkInfo = "";
        $("input:checked").each(function (i) {
            checkInfo += $(this).val() + ",";

        })
        str = "addLeaveHouseInfoServlet.lovo?checkInfo=" + checkInfo

            var data = str;
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index); //再执行关闭
    return data;
    }

    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index','laydate','user', 'laypage','form'], function(){
        var laydate = layui.laydate,
            laypage = layui.laypage
            , admin = layui.admin
            , element = layui.element
            , router = layui.router();
        var   form = layui.form;

        form.render();

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
                    $("#tt1").val(obj.curr)//将隐藏表单的val设置为当前页，然后提交，传给后台
                    $("#f2").submit();
                }
            }
        });

    });


</script>


</body>
</html>
