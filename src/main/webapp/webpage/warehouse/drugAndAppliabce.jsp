

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
        <div class="layui-card-header">�Զ�����ҳ��βҳ����һҳ����һҳ�ı�</div>
        <div class="layui-card-body">
            <div id="test-laypage-demo3"></div>
        </div>
    </div>
</div>



</div>
</div>
</div>


<script src="layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: 'layuiadmin/' //��̬��Դ����·��
    }).extend({
        index: 'lib/index' //�����ģ��
    }).use(['index', 'laypage'], function(){
        var laypage = layui.laypage;



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
