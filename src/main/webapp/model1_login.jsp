<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/22
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="loginUser" class="com.po.Users"/>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
    <html>
    <head>
    <!-- Page title -->
    <title>ricky - Login</title>
    <!-- End of Page title -->
    <!-- Libraries -->
    <link type="text/css" href="css/login.css" rel="stylesheet" />
    <link type="text/css" href="css/smoothness/jquery-ui-1.7.2.custom.html" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="js/easyTooltip.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
    <!-- End of Libraries -->
    </head>
    <body>
    <div id="container">
    <div class="logo">
    <a href="#"><img src="assets/logo.png" alt="" /></a>
    </div>
    <div id="box">
    <form action="model1_dologin.jsp" method="post">
    <p class="main">
    <label>用户名: </label>
    <input name="username" value="" />
    <label>密码: </label>
    <input type="password" name="password" value="">
    </p>
    <p class="space">
    <input type="submit" value="登录" class="login" style="cursor: pointer;"/>
    </p>
    </form>
    </div>
    </div>
    </body>
    </html>