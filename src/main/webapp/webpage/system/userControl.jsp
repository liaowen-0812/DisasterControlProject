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

<style type="text/css">
    #btnDivId button {
        width: 150px;
    }

    #btnDivId {
        margin-left: 20%;
    }
</style>
<head>
    <base href="<%=basePath%>">
    <title>用户管理</title>
    <%@include file="head.jsp" %>
    <style type="text/css">
        #btnDivId button {
            width: 150px;
        }

        #btnDivId {
            margin-left: 20%;
        }
    </style>
</head>
<body>

<form class="layui-form" id="formId" action="user" method="post">
    <div class="layui-card">
        <div class="layui-card-header" style="text-align:center;font-size: 30px">用户管理</div>
        <div class="layui-card-body" style="height: 35%">
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
                    <th>用户名</th>
                    <th>密码</th>
                    <th>等级</th>
                    <th>真实姓名</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${userList}" var="user">
                    <tr>
                        <td style="width: 4%"><input value="${user.userId}"  type="checkbox" lay-skin="primary"></td>
                        <td>${user.userName}</td>
                        <td>${user.userPwd}</td>
                        <td>${user.roleObj.roleName}</td>
                        <td>${user.userTrueName}</td>
                    </tr>
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
    <!--查询开始-->
    <div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
        <div class="layui-card" style="text-align: center;height: 40%">
            <div class="layui-card-header">查询用户信息</div>
            <div class="layui-card-body">
                <div class="layui-col-md6" style="width: 480px;padding-left: 30%">
                    <select name="type" lay-verify="" id="selectId">
                        <option value="">用户等级</option>
                        <c:forEach items="${rolelist}" var="role">
                            <option id="option${role.roleId}" value="${role.roleId}">${role.roleName}</option>
                        </c:forEach>
                        <input type="hidden" id="inputSelectId" value="${type}"/>
                    </select>
                </div>
                <br/>
                <br/>
                <br/>
                <input type="hidden" name="currentPage" value="${newPage}" id="inputId"/>
                <!--按钮-->
                <input type="submit" class="layui-btn layui-btn-primary" name="btnId" value="查询">
</form>
</div>
</div>
</div>

<!--查询结束-->

<div class="layui-col-md4" style="margin-top: 10px;width: 48%">

    <div class="layui-card" style="height: 40%;">
        <div class="layui-card-header" style="text-align: center;">按钮</div>
        <div class="layui-card-body">
            <div id="btnDivId">
                <!--按钮-->
                <form style="display: initial;" class="layui-form" id="addformId" action="addUser" method="post">
                    <button type="button" onclick="addUser()" class="layui-btn layui-btn-primary">添加用户</button>
                </form>
                <form style="display: initial;padding-left:100px" class="layui-form" id="delformId" action="delUser"
                      method="post">
                    <button type="button" onclick="delUser()" class="layui-btn layui-btn-primary">删除用户</button>
                    <input type="hidden" value="" name="idStr" id="delInput"/>
                </form>
                <br/><br/><br/><br/>
                <form style="display: initial;" class="layui-form" id="updateformId" action="findId" method="post">
                    <button type="button" class="layui-btn layui-btn-primary" onclick="update()">修改用户信息</button>
                    <input type="hidden" value="" name="idStr" id="updateInput"/>
                </form>
            </div>
        </div>
    </div>
</div>
</form>

<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'laydate', 'laypage'], function () {
        var $ = layui.$
            , laydate = layui.laydate
            , laypage = layui.laypage
            , form = layui.form;


        layer.ready(function () {

            var inputSelectId = $("#inputSelectId").val();
            var v = "#option" + inputSelectId;
            $(v).attr("selected", "true");
        })
        form.render();
        laydate.render({
            elem: '#test-laydate-start-cn'
            , trigger: 'click'
        });

        //自定义首页、尾页、上一页、下一页文本
        laypage.render({
            elem: 'test-laypage-demo3'
            , count: ${allCount}
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

    function addUser() {
        location.href = 'webpage/system/addUser.jsp';
    }

    function update() {
        var checkId = $("#tableId input:checked").length;
        if (checkId == 1) {
            var tempId = "";
            $("#tableId input:checked").each(function () {
                tempId += $(this).val();
            })
            $("#updateInput").val(tempId);
            $("#updateformId").submit();
        } else {
            layer.msg('请选择1行')
        }
        //location.href = 'webpage/system/updateUser.jsp';
    }

    function delUser() {
        var str = "";
        $("#tableId input:checked").each(function () {
            str += $(this).val() + ","
        })
        if (str == "") {
            layer.msg('请选择行');
            return;
        }
        $("#delInput").val(str);
        $("#delformId").submit();
    }
</script>
</body>
</html>
