

<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


<!-- ���-->
<div class="layui-card-header" style="font-size:30px">ҩ��/��еһ��</div>
<div class="layui-card-body">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>����</th>
            <th>����</th>
            <th>����ʱ��</th>
            <th>����</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>����</td>
            <td>����</td>
            <td>1989-10-14</td>
            <td>����������</td>
        </tr>
        <tr>
            <td>�Ű���</td>
            <td>����</td>
            <td>1920-09-30</td>
            <td>��ǧ����֮�����������������ˣ���ǧ����֮�У�ʱ������ĵĻ�Ұ�</td>
        </tr>
        <tr>
            <td>Helen Keller</td>
            <td>��������</td>
            <td>1880-06-27</td>
            <td> Life is either a daring adventure or nothing.</td>
        </tr>
        <tr>
            <td>����</td>
            <td>����</td>
            <td>1103-���γ�������</td>
            <td>�̿������ĸģ�ҲĨ��ȥ������Ӣ�ۡ�����ʵ</td>
        </tr>
        <tr>
            <td>����</td>
            <td>�����壨���壩</td>
            <td>��Ԫǰ-372��</td>
            <td>Գǿ�����ǿ����ǿ����Գ��ǿ�� </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="layui-col-md12">
    <div class="layui-card">

        <div class="layui-card-body">
            <div id="test-laypage-demo3"></div>
        </div>
    </div>
</div>
<!--��ҳ����-->

<!--��Ӱ�ť��ʼ-->


<!--��Ӱ�ť����-->
<!--��ѯ��ʼ-->
<div class="layui-col-md4" style="float: right;margin-top: 10px;width: 50%">
    <div class="layui-card"  style="text-align: center">
        <div class="layui-card-header">��ѯҩ����Ϣ</div>
        <div class="layui-card-body">

            <div class="layui-input-inline">
                <label class="layui-form-label">��ʼ����</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-start-cn" placeholder="yyyy-MM-dd">
                </div>
            </div>

            <div class="layui-input-inline" style="margin-top: 20px">
                <label class="layui-form-label">��������</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input"  id="test-laydate-last-cn" placeholder="yyyy-MM-dd">
                </div>
            </div>
            <br/>
            <br/>
            <!--��ť-->
            <button type="button" class="layui-btn layui-btn-primary">��ѯ</button>

        </div>
    </div>
</div>

<!--��ѯ����-->


        <div class="layui-col-md4" style="margin-top: 10px;width: 48%">

            <div class="layui-card" style="height: 40%;">

                <div class="layui-card-body">
                    <div  id="btnDivId">
                        <!--��ť-->
                        <button style="margin-left: 200px;margin-top: 20%" onclick="add()" type="button" class="layui-btn layui-btn-primary">���ҩ��</button>

                    </div>
                </div>
            </div>
        </div>


<script>
    function add() {
        location.href="webpage/warehouse/add.jsp";
    }

</script>

<script>


        layui.config({
            base: 'layuiadmin/' //��̬��Դ����·��
        }).extend({
            index: 'lib/index' //�����ģ��
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

        //�Զ�����ҳ��βҳ����һҳ����һҳ�ı�
        laypage.render({
            elem: 'test-laypage-demo3'
            ,count: 100
            ,first: '��ҳ'
            ,last: 'βҳ'
            ,prev: '<em>��</em>'
            ,next: '<em>��</em>'
        });





       

    });
</script>


</body>
</html>
