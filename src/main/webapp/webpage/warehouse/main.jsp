

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
  <meta charset="utf-8">
  <title>ɭ�ֲ��溦����ϵͳ</title>

<%@include file="head.jsp"%>


</head>

<body class="layui-layout-body">
  
  <div id="LAY_app">
    <div class="layui-layout layui-layout-admin">
      <div class="layui-header">
        <!-- ͷ������ -->
        <ul class="layui-nav layui-layout-left">
          <li class="layui-nav-item layadmin-flexible" lay-unselect>
            <a href="javascript:;" layadmin-event="flexible" title="�������">
              <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
            </a>
          </li>



        </ul>

      </div>
      
      <!-- ��߲˵� -->
      <div class="layui-side layui-side-menu">
        <div class="layui-side-scroll">
          <div class="layui-logo" lay-href="home/console.html">
            <span>ɭ�ֲ��溦����ϵͳ</span>
          </div>
          
          <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu" lay-filter="layadmin-system-side-menu">
            <li data-name="home" class="layui-nav-item layui-nav-itemed">
              <a href="javascript:;"  lay-direction="2">

                <cite>���Ϲ���</cite>
              </a>
              <dl class="layui-nav-child">
                <dd data-name="console" class="layui-this">
                  <a lay-href="home/console.html">�溦һ��</a>
                </dd>
                <dd data-name="console">
                  <a lay-href="home/homepage1.html">����һ��</a>
                </dd>
                <dd data-name="console">
                  <a lay-href="home/homepage2.html">��һ��</a>
                </dd>
              </dl>
            </li>


              <li data-name="home" class="layui-nav-item layui-nav-itemed">
                  <a href="javascript:;"  lay-direction="2">
                      <cite>�������</cite>
                  </a>
                  <dl class="layui-nav-child">
                      <dd data-name="console" class="layui-this">
                          <a lay-href="home/console.html">����һ��</a>
                      </dd>
                      <dd data-name="console">
                          <a lay-href="home/homepage1.html">С�����</a>
                      </dd>
                      <dd data-name="console">
                          <a lay-href="home/homepage2.html">�¼���¼</a>
                      </dd>
                  </dl>
              </li>


              <li data-name="home" class="layui-nav-item layui-nav-itemed">
                  <a href="javascript:;"  lay-direction="2">
                      <cite>ר�һ���</cite>
                  </a>
                  <dl class="layui-nav-child">
                      <dd data-name="console" class="layui-this">
                          <a lay-href="home/console.html">ר��һ��</a>
                      </dd>
                      <dd data-name="console">
                          <a lay-href="home/homepage1.html">��������</a>
                      </dd>
                  </dl>
              </li>


              <li data-name="home" class="layui-nav-item layui-nav-itemed">
                  <a href="javascript:;"  lay-direction="2">
                      <cite>ҩ����е�������</cite>
                  </a>
                  <dl class="layui-nav-child">
                      <dd data-name="console" class="layui-this">
                          <a href="webpage/warehouse/drugAndAppliabce.jsp" target="main">ҩ����е����</a>
                      </dd>
                      <dd data-name="console">
                          <a lay-href="home/homepage1.html">�������</a>
                      </dd>
                  </dl>
              </li>


              <li data-name="home" class="layui-nav-item layui-nav-itemed">
                  <a href="javascript:;"  lay-direction="2">
                      <cite>ϵͳ��Ϣ</cite>
                  </a>
                  <dl class="layui-nav-child">
                      <dd data-name="console" class="layui-this">
                          <a lay-href="home/console.html">�û�����</a>
                      </dd>
                      <dd data-name="console">
                          <a lay-href="home/homepage1.html">��־һ��</a>
                      </dd>
                  </dl>
              </li>


          </ul>
        </div>
      </div>

      <!-- ҳ���ǩ -->

      
      
      <!-- �������� -->
      <div class="layui-body" id="LAY_app_body">
        <div class="layadmin-tabsbody-item layui-show">
          <iframe src="home/console.html" frameborder="0" name="main" class="layadmin-iframe"></iframe>
        </div>
      </div>
      
      <!-- ����Ԫ�أ�һ�������ƶ��豸������ -->
      <div class="layadmin-body-shade" layadmin-event="shade"></div>
    </div>
  </div>

  <script src="layuiadmin/layui/layui.js"></script>
  <script>
  layui.config({
    base: 'layuiadmin/' //��̬��Դ����·��
  }).extend({
    index: 'lib/index' //�����ģ��
  }).use('index');
  </script>
</body>
</html>


