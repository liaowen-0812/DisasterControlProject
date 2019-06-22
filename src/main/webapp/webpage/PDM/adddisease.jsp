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
<div class="layui-fluid" align="center">
    <div class="layui-card-header" style="font-size: 30px">添加虫害</div>
    <br/><br/>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">名称</label>
            <div class="layui-input-inline">
                <input type="text" name="name" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">病原</label>
            <div class="layui-input-inline">
                <input type="text" name="name" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">发病症状</label>

            <div class="layui-input-inline">
                <textarea name="" placeholder="请输入" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">发病规律</label>

            <div class="layui-input-inline">
                <textarea name="" placeholder="请输入" class="layui-textarea"></textarea>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">幼虫图片</label>
            <div class="layui-upload" style="padding-right: 200px">
                <img class="layui-upload-img" id="test-upload-normal-img" style="width: 100px;height: 100px">
                <p id="test-upload-demoText"></p><br/>
                <button type="button" class="layui-btn" id="test-upload-normal">上传图片</button>
            </div>
        </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">防治措施</label>

            <div class="layui-input-inline">
                <textarea name="" placeholder="请输入" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">主要危害</label>

            <div class="layui-input-inline">
                <textarea name="" placeholder="请输入" class="layui-textarea"></textarea>
            </div>
        </div>
    </div>


    <!--按钮-->
    <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 5%;margin-top: 150px;">添加</button>
    <script>
        layui.config({
            base: 'layuiadmin/' //静态资源所在路径
        }).extend({
            index: 'lib/index' //主入口模块
        }).use(['index', 'upload'], function(){
            var $ = layui.jquery
                ,upload = layui.upload;

            //普通图片上传
            var uploadInst = upload.render({
                elem: '#test-upload-normal'
                ,url: '/upload/'
                ,before: function(obj){
                    //预读本地文件示例，不支持ie8
                    obj.preview(function(index, file, result){
                        $('#test-upload-normal-img').attr('src', result); //图片链接（base64）
                    });
                }
                ,done: function(res){
                    //如果上传失败
                    if(res.code > 0){
                        return layer.msg('上传失败');
                    }
                    //上传成功
                }
                ,error: function(){
                    //演示失败状态，并实现重传
                    var demoText = $('#test-upload-demoText');
                    demoText.html('<span style="color: #FF5722;">上传失败</span> ');
                }
            });

            //多图片上传
            upload.render({
                elem: '#test-upload-more'
                ,url: '/upload/'
                ,multiple: true
                ,before: function(obj){
                    //预读本地文件示例，不支持ie8
                    obj.preview(function(index, file, result){
                        $('#test-upload-more-list').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">')
                    });
                }
                ,done: function(res){
                    //上传完毕
                }
            });

            //指定允许上传的文件类型
            upload.render({
                elem: '#test-upload-type1'
                ,url: '/upload/'
                ,accept: 'file' //普通文件
                ,done: function(res){
                    console.log(res)
                }
            });
            upload.render({ //允许上传的文件后缀
                elem: '#test-upload-type2'
                ,url: '/upload/'
                ,accept: 'file' //普通文件
                ,exts: 'zip|rar|7z' //只允许上传压缩文件
                ,done: function(res){
                    console.log(res)
                }
            });
            upload.render({
                elem: '#test-upload-type3'
                ,url: '/upload/'
                ,accept: 'video' //视频
                ,done: function(res){
                    console.log(res)
                }
            });
            upload.render({
                elem: '#test-upload-type4'
                ,url: '/upload/'
                ,accept: 'audio' //音频
                ,done: function(res){
                    console.log(res)
                }
            });

            //设定文件大小限制
            upload.render({
                elem: '#test-upload-size'
                ,url: '/upload/'
                ,size: 60 //限制文件大小，单位 KB
                ,done: function(res){
                    console.log(res)
                }
            });

            //同时绑定多个元素，并将属性设定在元素上
            upload.render({
                elem: '.test-upload-demoMore'
                ,before: function(){
                    layer.tips('接口地址：'+ this.url, this.item, {tips: 1});
                }
                ,done: function(res, index, upload){
                    var item = this.item;
                    console.log(item); //获取当前触发上传的元素，layui 2.1.0 新增
                }
            })

        });
    </script>
</div>
</div>
</body>
</html>
