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
    <meta charset="utf-8">
    <title>添加专家</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <%@include file="../../head.jsp" %>
</head>

<body>
<form action="addSpecialistServlet.lovo" method="post" enctype="multipart/form-data">
    <div class="layui-card"  style="text-align: center">
        <div class="layui-card-header"><h2>添加专家信息</h2></div>
        <div class="layui-card-body">

            <div class="layui-input-inline">
                <label class="layui-form-label">专家姓名</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="test-laydate-start-cn1" name="zName" >
                </div>
                <div class="layui-card layui-form" lay-filter="component-form-element">
                    <div class="layui-card-body layui-row layui-col-space10">
                        <div class="layui-col-md12">
                            <span><h3>性别</h3></span><input type="radio" name="sex" value="男" title="男">
                            <input type="radio" name="sex" value="女" title="女" checked>
                        </div>
                    </div>
                </div>
            </div>
            <br/>

            <div class="layui-input-inline" style="margin-top: 20px">
                <label class="layui-form-label">出生年月</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-last-cn" name="cName">
                </div>
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body">
                            <div class="layui-upload">
                                <input type="file" id="test-upload-normal" name="txName" value="上传头像">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br/>
            <br/>

            <div class="layui-input-inline">
                <label class="layui-form-label">专长</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-start-cn2" name="sName">
                </div>
            </div>
            <div class="layui-input-inline">
                <label class="layui-form-label">职务</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-start-cn5" name="wName">
                </div>
            </div>
            <br/>
            <br/>

            <div class="layui-input-inline">
                <label class="layui-form-label">电话</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-start-cn3" name="fName">
                </div>
            </div>
            <div class="layui-input-inline">
                <label class="layui-form-label">工作单位</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-start-cn6" name="gName">
                </div>
            </div>
            <br/>
            <br/>

            <div class="layui-input-inline">
                <label class="layui-form-label">通讯地址</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-start-cn4" name="xName">
                </div>
            </div>
            <div class="layui-input-inline">
                <label class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-start-cn7" name="yName">
                </div>
            </div>
            <br/>
            <br/>
            <input type="submit"  class="layui-btn layui-btn-primary" value="添加">
        </div>
    </div>
</form>

<script src="layuiadmin/layui/layui.js"></script>
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
    }).use(['index', 'upload'], function(){
        var $ = layui.jquery
            ,upload = layui.upload;



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

    $("#test-laydate-start-cn1").blur(function () {
        var name= $(this).val();
        if(null==name || ""==name){
            layer.msg('姓名不能为空');
        }
    });
    $("#test-laydate-last-cn").blur(function () {
        var name= $(this).val();
        if(null==name || ""==name){
            layer.msg('出生年月不能为空');
        }
    });
    $("#test-laydate-start-cn2").blur(function () {
        var name= $(this).val();
        if(null==name || ""==name){
            layer.msg('专长不能为空');
        }
    });
    $("#test-laydate-start-cn5").blur(function () {
        var name= $(this).val();
        if(null==name || ""==name){
            layer.msg('职务不能为空');
        }
    });
    $("#test-laydate-start-cn3").blur(function () {
        var name= $(this).val();
        if(null==name || ""==name){
            layer.msg('电话不能为空');
        }
    });
    $("#test-laydate-start-cn6").blur(function () {
        var name= $(this).val();
        if(null==name || ""==name){
            layer.msg('工作单位不能为空');
        }
    });
    $("#test-laydate-start-cn4").blur(function () {
        var name= $(this).val();
        if(null==name || ""==name){
            layer.msg('通讯地址不能为空');
        }
    });
    $("#test-laydate-start-cn7").blur(function () {
        var name= $(this).val();
        if(null==name || ""==name){
            layer.msg('邮箱不能为空');
        }
    });

</script>

</body>
</html>
