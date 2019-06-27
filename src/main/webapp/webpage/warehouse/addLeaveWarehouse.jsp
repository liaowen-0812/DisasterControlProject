<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/18
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//http://ip+port+projectName
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>

<head>
    <base href="<%=basePath%>">
    <title>添加出库信息</title>
    <%@include file="head.jsp" %>
</head>
<body>

<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" >

        <div class="layadmin-user-login-box layadmin-user-login-header" style="margin-top: -12%;margin-bottom: -4%">
            <h2>添加出库信息</h2>
        </div>
        <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
            <div>
                <div style="float:left;width: 15%">
            <b style="font-size:18px;">领用小班：</b>
                </div>

                <div class="layui-col-md6" style="width: 200px;float:left;width: 20%;margin-top: -0.5%">
                    <select name="city" lay-verify="" style="">
                        <option value="">请选择一个班级</option>
                        <c:forEach items="${list}" var="l1">
                            <c:if test="${classId==l1.sclassId&&classId!=''}">
                                <option value="${l1.sclassId}" selected="selected">${l1.sclassName}</option>
                            </c:if>
                            <c:if test="${classId!=l1.sclassId||classId==''}">
                                <option value="${l1.sclassId}">${l1.sclassName}</option>
                            </c:if>

                        </c:forEach>
                    </select>
                </div>

                <b style="margin-left: 20%;font-size:18px">出库人：${userRealName}</b>

            </div>

<form action="addLeaveHouseInfoServlet.lovo" method="post" id="f2">
    <input type="text" id="tt1" val="${currentPage}" name="currentPage" style="display: none">
            <div class="layui-card-body" style="height: 50%;margin-top: 1%">
                <table class="layui-table">
                    <colgroup>
                        <col width="150">
                        <col width="150">
                        <col width="200">
                        <col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th></th>
                        <th>物品名称</th>
                        <th>防治类型</th>
                        <th>类型</th>
                        <th>领用数量</th>
                    </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${list2}" var="drug2">
                          <tr>
                              <td><input type="checkbox" value="${drug2.drugId}" lay-skin="primary"></td>
                              <td>${drug2.drugName}</td>
                              <td>${drug2.type1.typeVal}</td>
                              <td>${drug2.type2.typeVal}</td>
                              <td><input style="width: 10%" onchange="leaveNum(this)" type="text" name="tVal" class="num" value="${tVal}">
                              <input type="text" value="${drug2.drugNum}" style="display: none"></td>
                          </tr>
                          </c:forEach>



                    </tbody>
                </table>
            </div>


            <div class="layui-col-md12" style="margin-top: 7%">
                <div class="layui-card">

                    <div class="layui-card-body">
                        <div id="test-laypage-demo3"></div>
                    </div>
                </div>
            </div>

</form>

                <!--按钮-->
            <div class="layui-fluid" id="LAY-component-layer-list" style="height: 20%;">
            <div class="layui-btn-container layadmin-layer-demo">
            <button style="margin-left:15%;margin-top: 5% " onclick="" class="layui-btn layui-btn-primary" data-type="test5">添加物品</button>

            </div>
                <!--按钮-->
                <button style="margin-left:15%;margin-top: 5%" onclick="del()" type="button" class="layui-btn layui-btn-primary">移除物品</button>

                <!--按钮-->
                <button style="margin-left:15%;margin-top: 5%" onclick="chuKu()" type="button" class="layui-btn layui-btn-primary">出库</button>
            </div>


        </div>

</div>


<script src="layuiadmin/layui/layui.js"></script>
<script>

    function chuKu() {
        var checked1="";
        var classId1="";
        var leaveNum="";
            $("input:checkbox").each(function () {
                checked1 += $(this).val() + ",";
            });

        classId1=$(":selected").val();

        if(classId1==''){
            layer.msg('请选班级', {icon: 5, anim: 6});
            return;
        }
         $(".num").each(function () {
             leaveNum+= $(this).val()+","
         })

        location.href="goAwayServlet.lovo?checked1="+checked1+"&classId1="+classId1+"&leaveNum="+leaveNum;

    }


    //删除
    function del() {
        var notChecked="";
        if($("input:checkbox").not("input:checked").length!=0) {
            $("input:checkbox").not("input:checked").each(function () {
                notChecked += $(this).val() + ",";
            })
        }else if($("input:checked").length==0){

            layer.msg('请选择行', {icon: 5, anim: 6});
            return;
        }
        var selectId=$(":selected").val();
        location.href="delDrugServlet.lovo?notChecked="+notChecked+"&selectId="+selectId;
    }

    //加载
    <%--function loa() {--%>
        <%--<c:forEach items="tVal" var="text1">--%>
        <%--$("input[name='tVal']").each(function(){--%>
            <%--$(this).val(text1);--%>
        <%--})--%>
        <%--</c:forEach>--%>
    <%--}--%>

    //判断领取的库存是否合理
    function leaveNum(obj){
  maxNum=parseInt($(obj).next().val())
        Num= parseInt($(obj).val())

        if (Num<0){
            layer.msg('请输入大于零的数', {icon: 5, anim: 6});
            $(obj).val(0);
        }else if(Num>maxNum){
            layer.msg('库存不足', {icon: 5, anim: 6});
            $(obj).val(maxNum);
        }

    }


    // function tianjia(){
    //    location.href="FindAddLeaveHouseServlet.lovo";
    // }


    layui.config({
        base: 'layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form','laypage'], function () {
        var $ = layui.$
            , admin = layui.admin
            , element = layui.element
            , form = layui.form
            , laypage = layui.laypage
            , router = layui.router()
            ,layer = layui.layer;
        form.render();


        var active = {
            test5: function () {
                //获取页面存在数据
                var notChecked="";
                if($("input:checkbox").not("input:checked").length!=0) {
                    $("input:checkbox").not("input:checked").each(function () {
                        notChecked += $(this).val() + ",";
                    })
                }
              var selectId= $(":selected").val() ;
                layer.open({
                    title: '添加物品'
                    , type: 2
                    ,skin: 'layui-layer-rim'
                    , shadeClose: true
                    , area:['1000px','500px']
                    , content: 'FindAddLeaveHouseServlet.lovo'
                     ,btn: ['领取','关闭']
                    ,yes: function (index) {
                        var res = window["layui-layer-iframe" + index].callbackdata();
                       location.href=res+"&notChecked="+notChecked+"&selectId="+selectId;
                    }
                });
            }
        }

        $('#LAY-component-layer-list .layadmin-layer-demo .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] && active[type].call(this);
        });
                   //分页
        laypage.render({
            elem: 'test-laypage-demo3'
            , count: ${list3.size()} //设置总行数，从后台传
            , limit:1000 //每页显示行数，后台传
            , first: '首页'
            , last: '尾页'
            , curr: $("#tt1").val()
            , prev: '<em>←</em>'
            , next: '<em>→</em>'
            , jump: function (obj, first) { // 跳转页数
                if (!first) {
                    $("#tt1").val(obj.curr) //将隐藏表单的val设置为当前页，然后提交，传给后台
                    $("#f2").submit();
                }
            }
        });
    });

</script>
</body>
</html>
