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
    <title>添加用户信息</title>
    <%@include file="head.jsp" %>
</head>
<body>

<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">
    <div class="layadmin-user-login-main">
        <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>添加用户信息</h2>
            <p>森林病虫害防治系统</p>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                       for="LAY-user-login-userName"></label>
                <input type="text" name="userName" id="LAY-user-login-userName" lay-verify="userName" placeholder="用户名"
                       class="layui-input">
            </div>

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

            <div class="layui-form-item">
                <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                       for="LAY-user-login-realName"></label>
                <input type="text" name="realName" id="LAY-user-login-realName" lay-verify="realName" placeholder="真实姓名"
                       class="layui-input">
            </div>

            <div class="layui-form-item">
                    <div class="layui-col-md6" style="width: 335px">
                        <select name="city" lay-verify="roleType">
                            <option value="">用户等级</option>
                            <c:forEach items="${rolelist}" var="role">
                                <option id="option${role.roleId}" value="${role.roleId}">${role.roleName}</option>
                            </c:forEach>
                        </select>
                    </div>
            </div>




            <div class="layui-form-item">
                <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-reg-submit">添加</button>
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

        form.render();
        var tag="";
        $("#LAY-user-login-userName").change(function () {
            $.post("findName", {"userName":$("#LAY-user-login-userName").val()},function (data) {
                tag=data;
            })
        })
        form.verify({
            userName: function(value){
                if(value.length < 2){
                    return '姓名至少得2个字符';
                }
                if(tag=="true"){
                    return '用户名已被注册';
                }
            },
            realName: function(value){
                if(value.length < 2){
                    return '登陆至少得2个字符';
                }
            }
            ,passWord: [/(.+){3,12}$/, '密码必须3到12位']
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
                return layer.msg('两次密码输入不一致', {icon: 5, anim: 6});
            }
            $.post("addUser", obj.field,function (data) {
                if(data == 'true'){
                    layer.msg('添加成功', {
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
