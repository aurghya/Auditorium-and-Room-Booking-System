<%-- 
    Document   : index
    Created on : 31 Mar, 2019, 2:59:40 PM
    Author     : H.O.V.A.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auditorium and Room Booking</title>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <link href='https://fonts.googleapis.com/css?family=Roleway' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Lora' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Libre Baskerville' rel='stylesheet'> 
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-2.1.0.js"></script>
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="indexCSS.css"> 

    </head>
    <body>
        <%
            if(!(session.getAttribute("userid")==null || session.getAttribute("userid").equals(""))){
                int type=Integer.parseInt(String.valueOf(session.getAttribute("type")));
                if(type==0)
                    response.sendRedirect("applicant.jsp");
                else if(type==1)
                    response.sendRedirect("authority.jsp");
                else if(type==2)
                    response.sendRedirect("av_cell.jsp");
                else if(type==3)
                    response.sendRedirect("department.jsp");
                else if(type==4)
                    response.sendRedirect("security.jsp");
                
                
            }
        %>
        <h1 align="center" style="font-family: 'Libre Baskerville';">Auditorium and Room Booking System</h1>
    <br/>
        <div class="container" >
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
					<form method="POST" action="Login.jsp" role="form">
						<div class="form-group">
							<h2 align="middle">Sign in to H.O.V.A</h2>
						</div>
						<div class="input-group"> 
                                                    <span class="input-group-addon bg-white border-left-0"><i class="glyphicon glyphicon-user"></i></span>
                                                    <input id="signinEmail" type="text" maxlength="50" placeholder="Username" class="form-control" name="username">
                                                    
                                                </div>
                                            <br/>
						<div class="input-group">
                                                        
                                                        <span class="input-group-addon bg-white border-left-0"><i class="glyphicon glyphicon-lock"></i></span>
							<input id="signinPassword" type="password" maxlength="25" placeholder="Password" class="form-control" name="password">
						</div>
                                               <br/>
<!--                                                <div class="radio">
                                                    <label><input type="radio" name="type" value="0" checked>Applicant</label>
                                                </div>
                                                <div class="radio">
                                                    <label><input type="radio" name="type" value="1">Authority</label>
                                                </div>
                                                <div class="radio">
                                                    <label><input type="radio" name="type" value="2">AV Cell</label>
                                                </div>
                                                <div class="radio">
                                                    <label><input type="radio" name="type" value="3">Department Office</label>
                                                </div>
                                                <div class="radio">
                                                    <label><input type="radio" name="type" value="4">Security</label>
                                                </div>-->
                                                <div class="row">
                                                  <div class="col-xs-12">

                                                    <div class="btn-group btn-group-vertical" data-toggle="buttons">
                                                      <label class="btn active">
                                                        <input type="radio" name='type' value="0" checked ><i class="fa fa-circle-o fa-2x"></i><i class="fa fa-dot-circle-o fa-2x"></i> <span>Applicant</span>
                                                      </label>
                                                      <label class="btn">
                                                        <input type="radio" name='type' value="1"><i class="fa fa-circle-o fa-2x"></i><i class="fa fa-dot-circle-o fa-2x"></i><span> Authority</span>
                                                      </label>
                                                      <label class="btn">
                                                        <input type="radio" name='type' value="2"><i class="fa fa-circle-o fa-2x"></i><i class="fa fa-dot-circle-o fa-2x"></i><span> AV Cell</span>
                                                      </label>  
                                                      <label class="btn">
                                                        <input type="radio" name='type' value="3"><i class="fa fa-circle-o fa-2x"></i><i class="fa fa-dot-circle-o fa-2x"></i><span> Department Office</span>
                                                      </label>
                                                       <label class="btn">
                                                        <input type="radio" name='type' value="4"><i class="fa fa-circle-o fa-2x"></i><i class="fa fa-dot-circle-o fa-2x"></i><span> Security</span>
                                                      </label>
                                                    </div>

                                                  </div>
                                                </div>
                                                        
                                                    <div class="form-group" style="padding-top: 12px;">
                                                    <button id="signinSubmit" type="submit" class="btn btn-success btn-block">Sign in</button>
                                                </div>
						</form>
				</div>
			</div>
		</div>
	</div>
    <script>
        $(document).keypress(function(e){
    if (e.which == 13){
        $("#signinSubmit").click();
    }
  });
    </script>
    </body>

</html>
