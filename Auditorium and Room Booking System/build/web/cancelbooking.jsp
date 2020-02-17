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
           int booking_id=Integer.parseInt(request.getParameter("booking_id"));
           Booking.cancelBooking(booking_id);
        %>
    </body>
</html>
