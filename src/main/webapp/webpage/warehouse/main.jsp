

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
  <title>森林病虫害防治系统</title>

<%@include file="head.jsp"%>


</head>

<body class="layui-layout-body">
  
  <div id="LAY_app">
    <div class="layui-layout layui-layout-admin">
      <div class="layui-header">
        <!-- 头部区域 -->
        <ul class="layui-nav layui-layout-left">
          <li class="layui-nav-item layadmin-flexible" lay-unselect>
            <a href="javascript:;" layadmin-event="flexible" title="侧边伸缩">
              <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
            </a>
          </li>



        </ul>

      </div>
      
      <!-- 侧边菜单 -->
      <div class="layui-side layui-side-menu">
        <div class="layui-side-scroll">
          <div class="layui-logo" lay-href="home/console.html">
            <span>森林病虫害防治系统</span>
          </div>
          
          <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu" lay-filter="layadmin-system-side-menu">
            <li data-name="home" class="layui-nav-item layui-nav-itemed">
              <a href="javascript:;"  lay-direction="2">

                <cite>资料管理</cite>
              </a>
              <dl class="layui-nav-child">
                <dd data-name="console" class="layui-this">
                  <a lay-href="home/console.html">虫害一览</a>
                </dd>
                <dd data-name="console">
                  <a lay-href="home/homepage1.html">病害一览</a>
                </dd>
                <dd data-name="console">
                  <a lay-href="home/homepage2.html">鼠害一览</a>
                </dd>
              </dl>
            </li>


              <li data-name="home" class="layui-nav-item layui-nav-itemed">
                  <a href="javascript:;"  lay-direction="2">
                      <cite>灾情防治</cite>
                  </a>
                  <dl class="layui-nav-child">
                      <dd data-name="console" class="layui-this">
                          <a lay-href="home/console.html">区域一览</a>
                      </dd>
                      <dd data-name="console">
                          <a lay-href="home/homepage1.html">小班管理</a>
                      </dd>
                      <dd data-name="console">
                          <a lay-href="home/homepage2.html">事件记录</a>
                      </dd>
                  </dl>
              </li>


              <li data-name="home" class="layui-nav-item layui-nav-itemed">
                  <a href="javascript:;"  lay-direction="2">
                      <cite>专家会商</cite>
                  </a>
                  <dl class="layui-nav-child">
                      <dd data-name="console" class="layui-this">
                          <a lay-href="home/console.html">专家一览</a>
                      </dd>
                      <dd data-name="console">
                          <a lay-href="home/homepage1.html">会商灾情</a>
                      </dd>
                  </dl>
              </li>


              <li data-name="home" class="layui-nav-item layui-nav-itemed">
                  <a href="javascript:;"  lay-direction="2">
                      <cite>药剂器械出库管理</cite>
                  </a>
                  <dl class="layui-nav-child">
                      <dd data-name="console" class="layui-this">
                          <a href="webpage/warehouse/drugAndAppliabce.jsp" target="main">药剂器械管理</a>
                      </dd>
                      <dd data-name="console">
                          <a lay-href="home/homepage1.html">出库管理</a>
                      </dd>
                  </dl>
              </li>


              <li data-name="home" class="layui-nav-item layui-nav-itemed">
                  <a href="javascript:;"  lay-direction="2">
                      <cite>系统信息</cite>
                  </a>
                  <dl class="layui-nav-child">
                      <dd data-name="console" class="layui-this">
                          <a lay-href="home/console.html">用户管理</a>
                      </dd>
                      <dd data-name="console">
                          <a lay-href="home/homepage1.html">日志一览</a>
                      </dd>
                  </dl>
              </li>


          </ul>
        </div>
      </div>

      <!-- 页面标签 -->

      
      
      <!-- 主体内容 -->
      <div class="layui-body" id="LAY_app_body">
        <div class="layadmin-tabsbody-item layui-show">
          <iframe src="home/console.html" frameborder="0" name="main" class="layadmin-iframe"></iframe>
        </div>
      </div>
      
      <!-- 辅助元素，一般用于移动设备下遮罩 -->
      <div class="layadmin-body-shade" layadmin-event="shade"></div>
    </div>
  </div>

  <script src="layuiadmin/layui/layui.js"></script>
  <script>
  layui.config({
    base: 'layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use('index');
  </script>
</body>
</html>


