

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

<div class="layui-card-header" style="font-size:30px;margin-bottom: 3%" align="center">�鿴������Ϣ</div>
<b style="margin-left: 15%;font-size:18px">����С�ࣺ����һ��</b> <b style="margin-left: 15%;font-size:18px">�����ˣ���С��</b>
<b style="margin-left: 15%;font-size:18px">��������   2019-6-21</b>
<div class="layui-card-body" style="height: 35%;margin-top: 3%">
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







            <div  id="btnDivId" style="margin-top: -10%;margin-left: 20%">
                <!--��ť-->
                <button style="margin-left: 200px;margin-top: 20%" onclick="ret()" type="button" class="layui-btn layui-btn-primary">ȷ��</button>

            </div>


<script>
    function ret() {
       location.href="webpage/warehouse/leaveWarehouse.jsp" ;
    }
</script>

</body>
</html>
