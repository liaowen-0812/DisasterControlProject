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
    <title>修改用户信息</title>
    <%@include file="head.jsp" %>
    <style type="text/css">
        span{
            font-size: 18px;
            margin-left: 10px;
        }
    </style>
</head>
<body>

<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">
    <div class="layadmin-user-login-main">
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>修改用户信息</h2>
            <p>森林病虫害防治系统</p>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
            <div class="layui-form-item">
                <span>用户名:</span>
                <span style="margin-left: 25%">${userObj.userName}</span>
                <input type="hidden" name="userId" value="${userObj.userId}"/>
            </div>
            <br/>


            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                       for="LAY-user-login-password"></label>
                <input type="password" name="passWord" id="LAY-user-login-passWord" lay-verify="passWord" placeholder="密码"
                       class="layui-input">
            </div>
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                       for="LAY-user-login-passWord2"></label>
                <input type="password" name="passWord2" id="LAY-user-login-passWord2" lay-verify="passWord2" placeholder="确认密码"
                       class="layui-input">
            </div>
            <br/>
            <div class="layui-form-item">
                <span>真实姓名:</span>
                <span style="margin-left: 25%">${userObj.userTrueName}</span>
            </div>
            <br/>

            <div class="layui-form-item">
                <div class="layui-col-md6" style="width: 335px">
                    <select name="city" lay-verify="">
                        <option value="">用户等级</option>
                        <c:forEach items="${rolelist}" var="role">
                            <option id="option${role.roleId}" value="${role.roleId}">${role.roleName}</option>
                        </c:forEach>
                    </select>
                    <input type="hidden"  value="${userObj.roleObj.roleId}" id="inputSelectId"/>
                </div>
            </div>




            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-reg-submit">修改</button>
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
    }).use(['index', 'user', 'form'], function () {
        var $ = layui.$
            , admin = layui.admin
            , element = layui.element
            , form = layui.form
            , router = layui.router();

        layer.ready(function () {

            var inputSelectId = $("#inputSelectId").val();
            var v = "#option" + inputSelectId;
            $(v).attr("selected", "selected");
        })
        form.render();

        form.verify({
            passWord: [/(.+){3,12}$/, '密码必须3到12位']
            ,roleType: function (value) {
                if(value == ""){
                    return '请选择用户等级';
                }
            }
        });
        //提交
        form.on('submit(LAY-user-reg-submit)', function (obj) {
            var field = obj.field;
            //确认密码
            if (field.passWord !== field.passWord2) {
                return layer.msg('两次密码输入不一致');
            }
            $.post("updateUser", obj.field,function (data) {
                if(data == 'true'){
                    layer.msg('修改成功', {
                        offset: '15px'
                        ,icon: 1
                        ,time: 1000
                    }, function(){
                        location.href = 'user'; //跳转到登入页
                    });
                }
            })
            //请求接口

            return false;
        });

    });
</script>
</body>
</html>
