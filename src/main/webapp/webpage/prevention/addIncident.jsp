<%--
  Created by IntelliJ IDEA.
  User: 24849
  Date: 2019/6/19
  Time: 15:49
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
    <title>添加事件信息</title>
    <%@include file="head.jsp"%>
</head>
<body>

<div class="layui-col-md4" style="float: right;width: 100%;">
    <div class="layui-card"  style="height: 10%;">
        <h2 style="padding-top: 1.6%" align="center">添加事件信息</h2>
    </div>
</div>



<div class="layui-col-md4" style="float: left;width: 50%;">
    <div class="layui-card"  style="text-align: center;height: 82%">


                    <!--文本框2个-->
                <div class="layui-card-body" style="padding: 15px;">
                    <form class="layui-form" action="" lay-filter="component-form-group">
                        <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                            <label class="layui-form-label">事件名称</label>
                            <div class="layui-input-block" style="width: 50%;">
                                <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="事件名称" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                            <label class="layui-form-label">时间</label>
                            <div class="layui-input-block" style="width: 50%;">
                                <input type="text" name="username" lay-verify="required" placeholder="时间" autocomplete="off" class="layui-input">
                            </div>
                        </div>

                    <!--下拉框-->
                        <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                            <label class="layui-form-label">灾情阶段</label>
                                <div class="layui-input-inline" style="width:50%;" >
                                    <select name="quiz">
                                        <option value="">已经得到控制</option>
                                        <option value="你工作的第一个城市">防治中</option>

                                        <option value="你的工号">无法解决，申请专家会商</option>

                                    </select>
                                </div>

                            <!--文本域-->
                                <div class="layui-col-md12" style="margin-top: 5%;">
                                    <label class="layui-form-label">灾情描述</label>
                                    <textarea name="" placeholder="请输入" class="layui-textarea" style="width: 50%"></textarea>
                                </div>
                            </div>






                        <!--下拉框-->
                        <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                        <label class="layui-form-label" >发生位置</label>
                        <div class="layui-input-inline" style="width:50%;" >
                            <select name="quiz">
                                <option value="">雅安一号地区</option>
                                <option value="你工作的第一个城市">宜宾二号地区</option>

                                <option value="你的工号">攀枝花三号地区</option>
                            </select>
                        </div>
                        </div>



                        <!--文本框-->
                        <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                            <label class="layui-form-label">初步损失</label>
                            <div class="layui-input-block" style="width: 50%;">
                                <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="初步损失（万元）" class="layui-input">
                            </div>
                        </div>


                        <!--文本框-->
                        <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">
                            <label class="layui-form-label">防治方案</label>
                            <div class="layui-input-block" style="width: 50%;">
                                <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="防治方案" class="layui-input">
                            </div>
                        </div>

                    </form>
                </div>
    </div>
</div>




<div class="layui-col-md4" style="float: left;width: 50%;">
    <div class="layui-card"  style="text-align: center;height: 82%">


        <!--文本框2个-->
        <div class="layui-card-body" style="padding: 15px;">
            <form class="layui-form" action="" lay-filter="component-form-group">
                <div class="layui-form-item" style="margin-top: 5%;margin-left: 15%">

                    <!--图片上传-->

                    <style>
                        .layui-upload-img{width: 92px; height: 92px; margin: 0 10px 10px 0;}
                    </style>

                    <div class="layui-card layadmin-header">
                        <div class="layui-breadcrumb" lay-filter="breadcrumb">
                            <a lay-href="">主页</a>
                            <a><cite>组件</cite></a>
                            <a><cite>上传组件</cite></a>
                            <a><cite>功能演示一</cite></a>
                        </div>
                    </div>


                    <label class="layui-form-label" style="margin-top: 5%">灾害图片</label>
                                        <%--<div class="layui-upload">--%>
                                            <div class="layui-upload-list" style="float: top">
                                                <img class="layui-upload-img" id="test-upload-normal-img" style="float: left;margin-left: 30%">
                                                <button type="button" class="layui-btn" id="test-upload-normal" style="float: left">浏览</button>
                                                <p id="test-upload-demoText"></p>

                                            </div>







                </div>


                <!--下拉框-->
                <div class="layui-form-item" style="margin-top: 8%;margin-left: 15%">
                    <label class="layui-form-label">灾害类型</label>
                    <div class="layui-input-inline" style="width:50%;" >
                        <select name="quiz">
                            <option value="">病害</option>
                            <option value="你工作的第一个城市">虫害</option>

                            <option value="你的工号">鼠害</option>
                        </select>
                    </div>
                </div>


                <!--下拉框-->
                <div class="layui-form-item" style="margin-top: 8%;margin-left: 15%">
                    <label class="layui-form-label">发现途径</label>
                    <div class="layui-input-inline" style="width:50%;" >
                        <select name="quiz">
                            <option value="">小班巡逻发现</option>
                            <option value="你工作的第一个城市">公众发现</option>

                            <option value="你的工号">上级部门通报</option>

                        </select>
                    </div>
                </div>


                <!--文本框-->
                <div class="layui-form-item" style="margin-top: 8%;margin-left: 15%">
                    <label class="layui-form-label">所在小班</label>
                </div>


                <!--文本框-->
                <div class="layui-form-item" style="margin-top: 8%;margin-left: 15%">
                    <label class="layui-form-label">影响面积</label>
                    <div class="layui-input-block" style="width: 50%;">
                        <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="影响面积" class="layui-input">
                    </div>
                </div>



            </form>
        </div>
    </div>
</div>


<!--按钮-->
<div class="layui-col-md4" style="float: right;width: 100%;">
    <div class="layui-card"  style="text-align: center;height: 10%;">
        <button type="button" class="layui-btn layui-btn-primary" style="width: 15%;margin-top: 2%" id="outId">添加</button>
    </div>
</div>

<script src="layuiadmin/layui/layui.js"></script>
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

        });
    });

    //js
    $("#outId").click(function () {
        location.href="webpage/prevention/incidentRcord.jsp";
    })

</script>

</body>
</html>
