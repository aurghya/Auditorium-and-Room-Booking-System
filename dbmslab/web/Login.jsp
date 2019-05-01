<%-- 
    Document   : Login
    Created on : 30 Mar, 2019, 3:42:16 PM
    Author     : H.O.V.A.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--  Not rendered--%>
        <%@page import="Source.User" %>
        <% String username=request.getParameter("username"); 
           String password=request.getParameter("password");
           int type=Integer.parseInt(request.getParameter("type"));
           
        %>
        <%
        User u=User.loginCheck(username, password,type);
        if (u!=null) {
            session.setAttribute("userid", username);
            session.setAttribute("name", u.name);
            session.setAttribute("phone", u.phone);
            session.setAttribute("email", u.email);
            session.setAttribute("type", type);
            if(type==0){
                session.setAttribute("dept", u.department);
                session.setAttribute("role",u.role);
                response.sendRedirect("applicant.jsp");
            }
            else if(type==1)
                response.sendRedirect("authority.jsp");
            else if(type==2)
                response.sendRedirect("av_cell.jsp");
            else if(type==3){
                session.setAttribute("dept", u.department);
                response.sendRedirect("department.jsp");
            }
            else if(type==4)
                response.sendRedirect("security.jsp");
            else
                response.sendRedirect("index.jsp");
        }
        else{
            response.sendRedirect("index.jsp");
        }
        %>
    </body>
</html>
