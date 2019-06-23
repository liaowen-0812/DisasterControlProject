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
    <title>添加小班</title>
    <%@include file="head.jsp"%>
</head>
<body>

<%--<div class="layui-fluid">--%>
    <div class="layui-card" style="height: 100%">
        <div class="layui-card-header" align="center" style="height: 8%"><h1>添加小班</h1></div>
        <div class="layui-card-body" style="padding: 15px;">
            <form class="layui-form" action="" lay-filter="component-form-group">


                <div class="layui-form-item" style="margin-top: 5%" >
                    <label class="layui-form-label" style="margin-left: 5%">名称</label>
                    <div class="layui-input-inline" style="width: 25%">
                        <input type="password" name="password" lay-verify="pass" placeholder="名称" autocomplete="off" class="layui-input" >
                    </div>

                    <label class="layui-form-label" style="margin-left: 20%">负责人</label>
                    <div class="layui-input-inline" style="width: 25%">
                        <input type="password" name="password" lay-verify="pass" placeholder="负责人" autocomplete="off" class="layui-input">
                    </div>


                </div>


                <div class="layui-form-item" style="margin-top: 10%" >
                    <label class="layui-form-label" style="margin-left: 5%">负责人电话</label>
                    <div class="layui-input-inline" style="width: 25%">
                        <input type="password" name="password" lay-verify="pass" placeholder="负责人电话" autocomplete="off" class="layui-input" >
                    </div>

                    <label class="layui-form-label" style="margin-left: 20%">人员数量</label>
                    <div class="layui-input-inline" style="width: 25%">
                        <input type="password" name="password" lay-verify="pass" placeholder="人员数量" autocomplete="off" class="layui-input">
                    </div>


                </div>


                <div class="layui-form-item" style="margin-top: 10%;">
                    <div class="layui-inline" style="width: 50%;">
                        <label class="layui-form-label" style=";margin-left:10%">负责区域</label>
                        <div class="layui-input-inline" style="width:50%;" >
                            <select name="quiz">
                                <option value="">宜宾一号地区</option>
                                    <option value="你工作的第一个城市">攀枝花一号地区</option>

                                    <option value="你的工号">双流一号地区</option>

                            </select>
                        </div>
                    </div>
                    <div class="layui-inline">
                    </div>
                </div>


              <div style="margin-top: 8%">
                  <button type="button" class="layui-btn layui-btn-primary" style="margin-left: 42.5%;width: 15%" onclick="outClass()">添加</button>
              </div>


            </form>
        </div>
    </div>
<%--</div>--%>


<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'laydate'], function(){
        var $ = layui.$
            ,admin = layui.admin
            ,element = layui.element
            ,layer = layui.layer
            ,laydate = layui.laydate
            ,form = layui.form;

        form.render(null, 'component-form-group');

        laydate.render({
            elem: '#LAY-component-form-group-date'
        });

        /* 自定义验证规则 */
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        /* 监听指定开关 */
        form.on('switch(component-form-switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        /* 监听提交 */
        form.on('submit(component-form-demo1)', function(data){
            parent.layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });
    });


    //js
    //返回到主页面
    function outClass() {
        location.href="webpage/prevention/littleClass.jsp";
    }

</script>

</body>
</html>
