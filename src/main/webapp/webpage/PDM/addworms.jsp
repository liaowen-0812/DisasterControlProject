<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/6/21
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
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
    <title>添加虫害</title>
    <%@include file="head.jsp"%>
</head>
<body>
<form action="addWormsServlet.lovo"method="post" id="f1">
<div class="layui-fluid" align="center">
<div class="layui-card-header" style="font-size: 30px">添加虫害</div>
    <br/><br/>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">名称</label>
            <div class="layui-input-inline">
                <input type="text"  class="layui-input" id="1">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">寄主</label>
            <div class="layui-input-inline">
                <input type="text"  class="layui-input" id="2">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">繁殖</label>
            <div class="layui-input-inline">
                <input type="text"  class="layui-input"id="3">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">天敌</label>
            <div class="layui-input-inline">
                <input type="text"  class="layui-input" id="4">
            </div>
        </div>
    </div>

    <input type="file" id="test-upload-normal" value="上传头像" >
    <input type="file" id="test-upload-norma2" value="上传头像" >
    </div>




    <div class="layui-form-item"align="center">
    <div class="layui-inline">
        <label class="layui-form-label">防治措施</label>

            <div class="layui-input-inline">
                <textarea name="" placeholder="请输入" class="layui-textarea"id="5"></textarea>
            </div>
    </div>
        <div class="layui-inline">
            <label class="layui-form-label">主要危害</label>

            <div class="layui-input-inline">
                <textarea name="" placeholder="请输入" class="layui-textarea"id="6"></textarea>
            </div>
        </div>
    </div>


        <!--按钮-->
    <div align="center">
        <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 5%;margin-top: 150px;" id="addId" onclick="add()">添加</button>
    </div>
</form>
        <script>
            layui.config({
                base: 'layuiadmin/' //静态资源所在路径
            }).extend({
                index: 'lib/index' //主入口模块
            }).use(['index', 'form'], function(){
                var $ = layui.$
                    ,admin = layui.admin
                    ,element = layui.element
                    ,form = layui.form;

                form.render(null, 'component-form-element');
                element.render('breadcrumb', 'breadcrumb');

                form.on('submit(component-form-element)', function(data){
                    layer.msg(JSON.stringify(data.field));
                    return false;
                });
            });

            layui.config({
                base: 'layuiadmin/' //静态资源所在路径
            }).extend({
                index: 'lib/index' //主入口模块
            }).use(['index','laydate', 'laypage'], function(){
                var laydate = layui.laydate,
                    laypage = layui.laypage;

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
                    ,count: 100
                    ,first: '首页'
                    ,last: '尾页'
                    ,prev: '<em>←</em>'
                    ,next: '<em>→</em>'
                });

            });

            layui.config({
                base: 'layuiadmin/' //静态资源所在路径
            }).extend({
                index: 'lib/index' //主入口模块
            }).use(['index', 'upload'], function() {
                var $ = layui.jquery
                    , upload = layui.upload;
            }

        function add(){
            var posPattern = /^\d+$/;
            if($("#1").val().trim().length==0){
                layer.msg('不能为空', {icon: 5, anim: 6});
                return;
            }else  if($("#2").val().trim().length==0){
                layer.msg('不能为空', {icon: 5, anim: 6});
                return;
            }else if($("#3").val().trim().length==0){
                layer.msg('不能为空', {icon: 5, anim: 6});
                return;
            }else if($("#4").val().trim().length==0){
                layer.msg('不能为空', {icon: 5, anim: 6});
                return;
            }else if($("#5").val().trim().length==0){
                layer.msg('不能为空', {icon: 5, anim: 6});
                return;
            }else if($("#6").val().trim().length==0){
                layer.msg('不能为空', {icon: 5, anim: 6});
                return;
            }
            $("#f1").submit();
        }
    </script>

</div>
</div>
</body>
</html>
