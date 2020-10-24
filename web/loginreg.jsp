<%-- 
    Document   : loginreg
    Created on : 10 Oct, 2020, 12:43:19 AM
    Author     : moin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Login/Register Modal by Creative Tim</title>

	<meta charset="utf-8" />
	


	<style>body{padding-top: 60px;}</style>

    <link href="assets/css/bootstrap.css" rel="stylesheet" />

	<link href="assets/css/login-register.css" rel="stylesheet" />
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
            <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
crossorigin="anonymous"></script>

	
	<script src="assets/js/bootstrap.js" type="text/javascript"></script>
	<script src="assets/js/login-register.js" type="text/javascript"></script>
         <script src="js/parking.js"></script>
         
        
        

</head>
<body onload="openLoginModal()">
    <div class="container">
        <div class="row">
            <div class="col-sm-4"></div>
          </div>
        </div>


		 <div class="modal fade login" id="loginModal">
		      <div class="modal-dialog login animated">
    		      <div class="modal-content">
    		         <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Login with</h4>
                    </div>
                    <div class="modal-body">
                        <div class="box">
                             <div class="content">
                                <div class="social">
                                    <a class="circle github" href="#">
                                        <i class="fa fa-github fa-fw"></i>
                                    </a>
                                    <a id="google_login" class="circle google" href="#">
                                        <i class="fa fa-google-plus fa-fw"></i>
                                    </a>
                                    <a id="facebook_login" class="circle facebook" href="#">
                                        <i class="fa fa-facebook fa-fw"></i>
                                    </a>
                                </div>
                                <div class="division">
                                    <div class="line l"></div>
                                      <span>or</span>
                                    <div class="line r"></div>
                                </div>
                                     <% if((String)session.getAttribute("erMsg")!=null){ %>
                <div  id="login-alert" class="alert alert-danger col-sm-12"><%=(String)session.getAttribute("erMsg")%></div>
                
                <%} %>
                 <% if(request.getParameter("msg")!=null){ %>
                <div  id="login-alert" class="alert alert-success col-sm-12"><%=request.getParameter("msg")%></div>
                
                <%} %>
                                <div class="error"></div>
                                <div class="form loginBox">
                                    <form method="POST" action="LoginServlet" accept-charset="UTF-8">
                                    <input id="email" class="form-control" type="text" placeholder="User Name" name="username">
                                    <input id="password" class="form-control" type="password" placeholder="Password" name="password">
                                     <input id="event" class="form-control" type="hidden" value="login" name="event">
                                    <input class="btn btn-default btn-login" type="submit" value="Login" >
                                    </form>
                                </div>
                             </div>
                        </div>
                        <div class="box">
                            <div class="content registerBox" style="display:none;">
                               
                             <div class="form">
                                <form method="POST" action="LoginServlet" accept-charset="UTF-8">
                                    <div  id="username-alert" style="display:none" class="alert alert-danger col-sm-12"><div id="userExistsEr"></div></div>
                                    <div  id="passwordMatchEr" style="display:none" class="alert alert-danger col-sm-12"></div>

                                    <input  class="form-control" type="text" placeholder="User Name"  id="username"  name="username" >
                                   <input id="address" class="form-control" type="text" placeholder="Address" name="address">
                                      <input id="phone" class="form-control" type="text" placeholder="Phone" name="phone">
                                <input id="passwordkey" class="form-control" type="password" placeholder="Password" name="password">
                                  <input id="password_confirmation" class="form-control" type="password" placeholder="Repeat Password"  name="password_confirmation">
                                  <input id="event" class="form-control" type="hidden" value="register" name="event">
                                <input class="btn btn-default btn-register" type="submit" value="Create account" name="commit">
                               
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="forgot login-footer">
                            <span>Looking to
                                 <a href="javascript: showRegisterForm();">create an account</a>
                            ?</span>
                        </div>
                        <div class="forgot register-footer" style="display:none">
                             <span>Already have an account?</span>
                             <a href="javascript: showLoginForm();">Login</a>
                        </div>
                    </div>
    		      </div>
		      </div>
		  </div>
    </div>
<script type="text/javascript">
    $(document).ready(function(){
        openLoginModal();
    });
</script>


</body>
</html>
