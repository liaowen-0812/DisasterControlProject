<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <%@include file="head.jsp" %>
</head>
<body>

<div align="center">

    <div class="layui-col-md12">
        <input type="text" name="title" placeholder="����������" autocomplete="off" style="width: 300px;
height: 35px;margin-left: 33px">

    </div>

    <div class="layui-form">



        <div class="layui-fluid">
                            <div class="layui-card-body layui-row layui-col-space10" style="margin-left:
                             31%;width:57% ">
                                <div class="layui-col-md6">
                                <select name="city" lay-verify="">
                                 <option value="">��ѡ��һ�����</option>
                                        <option value="010">��е</option>
                                        <option value="021">ҩ��</option>
                                    </select>
                                </div>
                            </div>
        </div>

        <div class="layui-fluid" style="margin-top: -300px">
            <div class="layui-card-body layui-row layui-col-space10" style="margin-left:
                             31%;width:57% ">
                <div class="layui-col-md6">
                     <select name="city" lay-verify="">
                 <option value="">��ѡ��һ����������</option>
                        <option value="010">����</option>
                        <option value="021">�溦</option>
                        <option value="021">��</option>
                    </select>
                </div>
            </div>
        </div>

    </div>


</div>

<span style="margin-left:350px">��Ҫ��; ��</span>
<div class="layui-card-body layui-row layui-col-space10" align="center">
    <div class="layui-col-md12">
        <textarea name="" placeholder="������" style="width:300px;height: 80px;margin-left: 30px "></textarea>
    </div>
</div>


<div class="layui-col-md4" style="margin-top: 10px;width: 48%">
    <div class="layui-card-body">
        <div id="btnDivId">
            <!--��ť-->
            <button style="margin-left: 500px" onclick="add()" type="button"
                    class="layui-btn layui-btn-primary">���ҩ��
            </button>

        </div>
    </div>
</div>




<script>
    layui.config({
        base: 'layuiadmin/' //��̬��Դ����·��
    }).extend({
        index: 'lib/index' //�����ģ��
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
</script>


</body>
</html>
