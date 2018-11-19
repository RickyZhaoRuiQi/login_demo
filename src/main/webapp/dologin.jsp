<%--
  Created by IntelliJ IDEA.
  User: Ricky
  Date: 2018/11/19
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    //out.println(basepath);

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    request.setCharacterEncoding("utf-8");

    //如果用户和密码都等于admin，则登录成功
    if("admin".equals(username) && "admin".equals(password))
    {
        session.setAttribute("loginUser",username);
        request.getRequestDispatcher("login_success.jsp").forward(request,response);
    }
    else
    {
        response.sendRedirect("login_failure.jsp");
    }
%>
