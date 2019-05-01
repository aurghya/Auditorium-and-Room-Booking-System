<%-- 
    Document   : authorityapproval
    Created on : 31 Mar, 2019, 3:59:40 PM
    Author     : H.O.V.A.
--%>

<%@page import="Source.Booking,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <fieldset class="group">
        <ul class="checkbox">
        <%
           String room_id=request.getParameter("room_id");
           String date=request.getParameter("date");
           List<String> slots=Booking.getAvailableSlots(room_id,date);
           String[] total={"6:00-7:00","7:00-8:00","8:00-9:00","9:00-10:00","10:00-11:00","11:00-12:00"};
        %>
        <% for(String s:total){
            boolean is_avail=false;
            for(String p:slots){
                if(p.equals(s))
                     is_avail=true;
            }
            if(is_avail){
        %>
        <label><li style="display:inline-block;" align="left"><input type="checkbox" name="avail_slot" value="<%=s%>"> <%=s%></li></label>
        <br/>
        <%}
            else{
        %>
         <label><li style="display:inline-block;" align="left"><input type="checkbox" name="avail_slot" value="<%=s%>" disabled> <%=s%></li></label>
          <br/>
        <%  }%>
        <% }%>
        </ul>
        </fieldset>
    </body>
</html>
