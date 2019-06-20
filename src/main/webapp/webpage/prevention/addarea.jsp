

<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<div class="layui-fluid" align="center">
    <div class="layui-card" >
        <div class="layui-card-header">表单组合</div>
        <div class="layui-card-body" >
            <form class="layui-form" action="" lay-filter="component-form-group">

                <div class="layui-form-item" style="background: black;width: 800px">
                    <label class="layui-form-label" style="width: 100px">单行输入框</label>
                    <div class="layui-input-block">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input" style="width: 500px;">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">单行输入框</label>
                    <div class="layui-input-block" >
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">单行输入框</label>
                    <div class="layui-input-block">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
                    </div>
                </div>



                <%--<div class="layui-form-item">--%>
                    <%--<label class="layui-form-label">单行选择框</label>--%>
                    <%--<div class="layui-input-block">--%>
                        <%--<select name="interest" lay-filter="aihao">--%>
                            <%--<option value=""></option>--%>
                            <%--<option value="0">写作</option>--%>
                            <%--<option value="1" selected="">阅读</option>--%>
                            <%--<option value="2">游戏</option>--%>
                            <%--<option value="3">音乐</option>--%>
                            <%--<option value="4">旅行</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                <%--</div>--%>

            </form>
        </div>
    </div>
</div>


</body>
</html>
