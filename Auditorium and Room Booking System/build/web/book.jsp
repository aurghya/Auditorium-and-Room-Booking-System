<%-- 
    Document   : authorityapproval
    Created on : 31 Mar, 2019, 3:59:40 PM
    Author     : H.O.V.A.
--%>

<%@page import="Source.Booking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String room_id=request.getParameter("room_id");
           String user_id=String.valueOf(session.getAttribute("userid"));
           String date=request.getParameter("date");
           String time_slots=request.getParameter("time_slots");
           int role=Integer.parseInt(String.valueOf(session.getAttribute("role")));
           int av_cell=Integer.parseInt(request.getParameter("av_cell"));
          Booking.createBooking(room_id,user_id,date,time_slots,role,av_cell);
        %>
    </body>
</html>
