<%-- 
    Document   : authority.jsp
    Created on : 30 Mar, 2019, 6:08:35 PM
    Author     : H.O.V.A.
--%>

<%@page import="Source.Booking,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
          <title>Auditorium and Room Booking</title>
    </head>
    <body>
        <%
            if(session.getAttribute("userid")==null || session.getAttribute("userid").equals("")){
                response.sendRedirect("index.jsp");
            }
            if(Integer.parseInt(String.valueOf(session.getAttribute("type")))!=4){
                response.sendRedirect("index.jsp");
            }
        %>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
          <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
              <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                      <a class="nav-link" href="#"><%=session.getAttribute("name") %></a>
                  </li>
              </ul>
          </div>
          <div class="mx-auto order-0">
              <ul class="navbar-nav mx-auto">
                  <li class="nav-item">
                      <a onclick="showpending()" class="nav-link" href="#" style="width:200px;" align="middle">Pending Bookings</a>
                  </li>
                  <li class="nav-item">
                      <a onclick="showapproved()" class="nav-link" href="#" style="width:200px;" align="middle">Approved Bookings</a>
                  </li>
              </ul>
          </div>
          <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
              <ul class="navbar-nav ml-auto">
                  <li class="nav-item">
                      <a class="nav-link" href="Logout.jsp">Logout</a>
                  </li>
              </ul>
          </div>
      </nav>
        <div class="container">
        <br/>
            
        <div class="row" id="pending">
        <% List<Booking> res=Booking.getPendingForSecurity(); %>
        
        
        <h5>Pending Bookings </h5>
        <table class="table table-bordered table-hover" >
        <thead>
          <tr>
            <th scope="col" class="text-center" style="vertical-align: middle;">Booking ID</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Applicant ID</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Applicant Name</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Applicant Phone</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Applicant Email</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Booking Slot</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Room ID</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Floor</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Building</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Action</th>
          </tr>
        </thead>
        
        <tbody>
        <% for(Booking b:res){
            String slot=Booking.getSlot(b.booking_id);
        %>
             <tr>
                <td><%=b.booking_id %></td>
                <td><%=b.applicant_id %></td>
                <td><%=b.applicant_name %></td>
                <td><%=b.applicant_phone %></td>
                <td><%=b.applicant_email %></td>
                <td style="width:200px;"><%=slot %></td>
                <td><%=b.room_id %></td>
                <td><%=b.floor %></td>
                <td><%=b.building %></td>
                <td><button onclick="actionBySecurity(<%=b.booking_id %>,'<%=session.getAttribute("userid") %>',1)" class="btn btn-success btn-block">Approve</button>
                    <button onclick="actionBySecurity(<%=b.booking_id %>,'<%=session.getAttribute("userid") %>',0)" class="btn btn-danger btn-block">Reject</button>
                </td>
                
              </tr>

         <%  }
        %>
        
    </tbody>
  </table>
        </div>
        
        
        
        <div class="row" id="approved">
        <% List<Booking> res2=Booking.getApprovedForSecurity(); %>
        
        
        <h5>Approved Bookings </h5>
        <table class="table table-bordered table-hover" >
        <thead>
          <tr>
            <th scope="col" class="text-center" style="vertical-align: middle;">Booking ID</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Applicant ID</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Applicant Name</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Applicant Phone</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Applicant Email</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Booking Slot</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Room ID</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Floor</th>
            <th scope="col" class="text-center" style="vertical-align: middle;">Building</th>
          </tr>
        </thead>
        
        <tbody>
        <% for(Booking b:res2){
            String slot=Booking.getSlot(b.booking_id);
        %>
             <tr>
                <td><%=b.booking_id %></td>
                <td><%=b.applicant_id %></td>
                <td><%=b.applicant_name %></td>
                <td><%=b.applicant_phone %></td>
                <td><%=b.applicant_email %></td>
                <td style="width:200px;"><%=slot %></td>
                <td><%=b.room_id %></td>
                <td><%=b.floor %></td>
                <td><%=b.building %></td>
                
                
              </tr>

         <%  }
        %>
        
    </tbody>
  </table>
        </div>
        </div>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />

           <script>
               $("#approved").hide();
            function actionBySecurity(booking_id,user_id,action){
                $.ajax({
                    url:"securityapproval.jsp",
                    type:"POST",
                    data:{"booking_id":booking_id,"user_id":user_id,"action":action},
                    success:function(response){
                        if(action==1)
                            alert("Booking Approved.");
                        else
                            alert("Booking Rejected.");
                        location.reload();
                       }
                });
            }
            function showpending(){
                $("#approved").hide();
                $("#pending").show();

            }

            function showapproved(){
                $("#pending").hide();
                $("#approved").show();

            }
        </script>
    </body>
</html>
