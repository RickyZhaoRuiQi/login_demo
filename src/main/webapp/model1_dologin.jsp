<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/25
  Time: 8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="loginUser" class="com.po.Users"/>
<jsp:useBean id="userDAO" class="com.dao.UsersDAO"/>
<jsp:setProperty property="*" name="loginUser"/>

<%
    String path = request.getContextPath();
    String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

    //如果用户和密码都等于admin就登录成功
    if(userDAO.usersLogin(loginUser))
    {
        session.setAttribute("loginUser",loginUser.getUsername());
        request.getRequestDispatcher("login_success.jsp").forward(request,response);
    }
    else
    {
        response.sendRedirect("model1_login.jsp");
    }
%>