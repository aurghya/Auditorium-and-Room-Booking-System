<%-- 
    Document   : applicant
    Created on : 30 Mar, 2019, 6:14:56 PM
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
            if(Integer.parseInt(String.valueOf(session.getAttribute("type")))!=0){
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
                      <a onclick="showprev()" class="nav-link" href="#" style="width:150px;" align="middle">Previous Bookings</a>
                  </li>
                  <li class="nav-item">
                      <a onclick="shownew()" class="nav-link" href="#" style="width:120px;" align="middle">New Booking</a>
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
        <div class='container'>
            <br/>
            <br/>
        <div id="new_booking">
        <div class='row'>
            <h4>New Booking</h4>
        </div>
        
        <br/>
        
        <%
            List<String> rooms=Booking.getRooms();
        %>
        <div class="row" style="width:250px;">
        Select Room
        <select id="room" class='form-control'>
            <%
             for(String s:rooms){
             %>
             <option value="<%=s %>"><%=s %></option>
            <%
             }
            %>
        </select>
       
        </div>
        <br/>
        <div class='row'>
         Select Date
        </div>
        <div class="row" style="width:250;">
        <input id="datepicker" class="datepicker" data-date-format="mm/dd/yyyy" />
        </div>
        <br/>
        <div class='row'>
            <button onclick="showslots()" class='btn btn-primary'>Show Slots</button>
        </div>
        <br/>
        <div id='slots' class='row'>
            
        </div>
        <br/>
        <div class="row">
            <label>
            <input type="checkbox" name="av_cell"> AV Cell Required
            </label>
        </div>
        <br/>
        <div class="row">
            <button class="btn btn-primary" onclick="book()">Book</button>
        </div>
        </div>
        <br/>
        <div id="prev_booking" class='row'>
            <h4>Previous Bookings</h4>
            <% List<Booking> res=Booking.getBookingsForApplicant(String.valueOf(session.getAttribute("userid"))); %>
             
            <table class="table table-bordered" >
            <thead>
              <tr>
                <th scope="col" class="text-center" style="vertical-align: middle;">Booking ID</th>
                <th scope="col" class="text-center" style="vertical-align: middle;">Booking Slot</th>
                <th scope="col" class="text-center" style="vertical-align: middle;">Room ID</th>
                <th scope="col" class="text-center" style="vertical-align: middle;">Floor</th>
                <th scope="col" class="text-center" style="vertical-align: middle;">Building</th>
                <th scope="col" class="text-center" style="vertical-align: middle;">Dept Approval</th>
                <th scope="col" class="text-center" style="vertical-align: middle;">Authority Approval</th>
                <th scope="col" class="text-center" style="vertical-align: middle;">AV Cell Approval</th>
                <th scope="col" class="text-center" style="vertical-align: middle;">Security Approval</th>
                <th scope="col" class="text-center" style="vertical-align: middle;">Action</th>
                
              </tr>
            </thead>
            <tbody>
            <% for(Booking b:res){
                String slot=Booking.getSlot(b.booking_id);
            %>
            
            <% boolean rejected=false;
                boolean accepted=false;
                if(b.dept.equals("REJECTED")||b.authority.equals("REJECTED")||b.av_cell.equals("REJECTED")||b.security.equals("REJECTED"))
                    rejected=true;
                if(!(b.dept.equals("PENDING")||b.authority.equals("PENDING")||b.av_cell.equals("PENDING")||b.security.equals("PENDING")) )
                    accepted=true;
            %>
            
            <% if(rejected){ %>
                <tr style="background:#fd8a7c">
             <%} 
                else if(accepted){%>
                    <tr style="background:#96e0a0;">
             <% } 
                else {%>
                    <tr>
            <% } %>
                    <td><%=b.booking_id %></td>
                    <td style="width:200px;"><%=slot %></td>
                    <td><%=b.room_id %></td>
                    <td><%=b.floor %></td>
                    <td><%=b.building %></td>
                    <td><%=b.dept %></td>
                    <td><%=b.authority %></td>
                    <td><%=b.av_cell %></td>
                    <td><%=b.security %></td>
                    <td><button onclick="cancel(<%=b.booking_id%>)" class="btn btn-danger">Cancel</button>

            </tr>

             <%  }
            %>
        </div>
    </div>
         <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
     <script>
        $("#datepicker").datepicker({
            startDate:'-1d'
        });
        $("#new_booking").hide();
        function showslots(){
            
            room=$('#room').val();
            date=$('#datepicker').val();
            var today = new Date(); 
            var dd = today.getDate(); 
            if(dd<10) dd='0'+dd;
            
            var mm = today.getMonth()+1; 
            if(mm<10) mm='0'+mm;
            var yyyy = today.getFullYear(); 
            var cur_date=mm+"/"+dd+"/"+yyyy;
            if(date=="")
                alert("Select a date.");
            else if(date<cur_date){
                alert("Invalid date.");
            }
            else{
                $.ajax({
                    url:"availableslots.jsp",
                    type:'POST',
                    data:{"room_id":room,"date":date},
                    datatype:"html",
                    success:function(response){
                        $("#slots").html(response);
                    }
                });
            }
            
        }
        
        function book(){
            var slots=[];
            $("input:checkbox[name='avail_slot']:checked").each(function(){
                slots.push($(this).val());
            });
            time_slots=slots.join(",");
            room=$('#room').val();
            date=$('#datepicker').val();
            av_cell=0;
            if($("input[name='av_cell']").is(':checked'))
                av_cell=1;
            if(date=="")
                alert("Select a date.");
            else if(time_slots=="")
                alert("Select a slot.");
            else{
                $.ajax({
                    url:'book.jsp',
                    type:'POST',
                    data:{'room_id':room,'date':date,'time_slots':time_slots,"av_cell":av_cell},
                    success:function(){
                        alert('Booked.');
                        location.reload();
                    }
                });
            }
            
        }
        
        
        function cancel(booking_id){
            $.ajax({
                url:"cancelbooking.jsp",
                type:"POST",
                data:{"booking_id":booking_id},
                success:function(){
                    alert("Booking Cancelled.");
                    location.reload();
                }
            });
        }
        
        
        function shownew(){
            $("#prev_booking").hide();
            $("#new_booking").show();
       
        }
        
        function showprev(){
            $("#new_booking").hide();
            $("#prev_booking").show();
       
        }
    </script>
    </body>
</html>
