<%-- 
    Document   : dashboard
    Created on : 10 Oct, 2020, 2:50:30 PM
    Author     : moin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.parking.src.StoreConstants"%>
<%@page import="java.sql.PreparedStatement"%>



<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.parking.src.DBConnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Parking Dashboard
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
     
          <link href="assets/css/fontawesome.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
  
  <style>
.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;
  
  /* Position the tooltip */
  position: absolute;
  z-index: 1;
  top: -5px;
  left: 105%;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}
</style>
  
  
</head>

<body class="">

  <div class="wrapper ">
    <div class="sidebar" data-color="white" data-active-color="danger">
      <div class="logo">
        <a href="#" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src="assets/img/logo-small.png">
          </div>
          <!-- <p>CT</p> -->
        </a>
        <a href="#" class="simple-text logo-normal">
            <% if(session.getAttribute("loginUser")!=null){ %>
            Welcome <%=(String)session.getAttribute("loginUser")%>
           
          <!-- <div class="logo-image-big">
            <img src="assets/img/logo-big.png">
          </div> -->
        </a>
             [<%=(String)session.getAttribute("roleId")%>]
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="active ">
            <a href="./dashboard.jsp">
              <i class="nc-icon nc-bank"></i>
              <p>Dashboard</p>
            </a>
          </li>
        
          <li>
            <a href="">
              <i class="nc-icon nc-bell-55"></i>
              <p>Notifications</p>
            </a>
          </li>
             <li>
            <a href="./report.jsp">
              <i class="nc-icon nc-single-02"></i>
              <p>Book Parking</p>
            </a>
          </li>
          <li>
            <a href="./myProfile.jsp">
              <i class="nc-icon nc-single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
        
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="javascript:;">Parking Dashboard   
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <div class="input-group-append">
                  <div class="input-group-text">
                    <i class="nc-icon nc-zoom-split"></i>
                  </div>
                </div>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link btn-magnify" href="javascript:;">
                  <i class="nc-icon nc-layout-11"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Stats</span>
                  </p>
                </a>
              </li>
              <li class="nav-item btn-rotate dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="nc-icon nc-bell-55"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </li>
              <li class="nav-item">
                <a style="margin-left: 110%;margin-top: -20%;color:black" href="signout.jsp">
                    <i class="fa fa-sign-out"></i> Log Out
                 
                </a> 
              </li>
            </ul>
          </div>
        </div>
      </nav>
     
      <%
           Connection con = DBConnection.getDBConnection(); 
              Statement st = null;
               ResultSet rs = null;
               int totalParkingCreated =0;
               int totalAvailable =0;
               int totalOccupied =0;
               int totalBuilding =0;
               
       try{
                   st = con.createStatement();
                   rs = st.executeQuery("SELECT sum(parking_created),sum(total_free),sum(total_occupied) from parking.bulding_floor_map;");
           while(rs.next()){ 
          totalParkingCreated = rs.getInt(1);
          totalAvailable  = rs.getInt(2);
        totalOccupied = rs.getInt(3);
           }
           
           rs = st.executeQuery("SELECT count(distinct(bulding_no)) from parking.bulding_floor_map");
               while(rs.next()){ 
          totalBuilding = rs.getInt(1);
  
           }
               

                 int userId=0;
           
           rs = st.executeQuery("SELECT user_id from user where username= '"+(String)session.getAttribute("loginUser")+"'");
               while(rs.next()){ 
          userId =  rs.getInt(1);
  
           }
      String checkinDate = null;   
      int parkingNo=0;
  rs = st.executeQuery("SELECT * from parking.booking where checkoutDate is null and checkinDate is not null and userId="+userId);
               while(rs.next()){ 
          checkinDate =  rs.getString("checkinDate");
  parkingNo = rs.getInt("parking_no");
           }

                 
           
          %>
      
      
      
      <!-- End Navbar -->
      <div class="content">
        <div class="row">
          <a href="analytics.jsp">  <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-bank text-warning"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Total Buildings</p>
                      <p class="card-title"><%=totalBuilding%><p>
                    </div>
                  </div>
                </div>
              </div>
          
            </div>
          </a>
          </div>
          <a href="report.jsp">  <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-check-2 text-success text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Total Available Parking</p>
                      <p class="card-title"><%=totalAvailable%><p>
                    </div>
                  </div>
                </div>
              </div>
          
            </div>
          </a>
          </div>
                    
                         <a href="occupied.jsp">  <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-tap-01 text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Total Parking Occupied</p>
                      <p class="card-title"><%=totalOccupied%><p>
                    </div>
                  </div>
                </div>
              </div>
          
            </div>
          </a>
          </div>
                    
           <% if(checkinDate != null)   {    %>   
            <a href="report.jsp">   <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-check-2 text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Your Parking</p>
                      <p class="card-title"><a href="myParking.jsp?userId=<%=userId%>&parkingNo=<%=parkingNo%>"><%=parkingNo%></a><p>
                    </div>
                  </div>
                </div>
              </div>
        
            </div>
            </a>
          </div>
                    <%} %>
                    
            <% if(((String)session.getAttribute("roleId")).equalsIgnoreCase("USER")){ %>  <a style="pointer-events: none" alt="Declined"  href="">  
              <div  class="col-lg-3 col-md-6 col-sm-6 disabled">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-settings text-primary"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Create Parking</p>
                      <p class="card-title"><%=totalParkingCreated%><p>
                    </div>
                  </div>
                </div>
              </div>
                
          
            </div>
          </a>
          </div>
              <% } else { %>
              
               <a  alt="Declined"  href="createParking.jsp">  
              <div  class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-settings text-primary"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Create Parking</p>
                      <p class="card-title"><%=totalParkingCreated%><p>
                    </div>
                  </div>
                </div>
              </div>
                
          
            </div>
          </a>
          </div>
                   <% } %>
            
              <% if(((String)session.getAttribute("roleId")).equalsIgnoreCase("USER")){ %>  <a style="pointer-events: none" alt="Declined"  href="report.jsp">     <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-chart-bar-32 text-primary"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Report</p>
                      <p class="card-title"><p>
                    </div>
                  </div>
                </div>
              </div>
                
         
            </div>
            </a>
          </div>
            
         <% } else { %>
         
         
       <a alt="Declined"  href="report.jsp">      <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-chart-bar-32 text-primary"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Report</p>
                      <p class="card-title"><p>
                    </div>
                  </div>
                </div>
              </div>
                
         
            </div>
            </a>
          </div>
         <% } %>
            
        </div>
      
      <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
            <nav class="footer-nav">
              <ul>
                <li><a href="#" target="_blank">Creative Tim</a></li>
                <li><a href="https://www.creative-tim.com/blog" target="_blank">Blog</a></li>
                <li><a href="https://www.creative-tim.com/license" target="_blank">Licenses</a></li>
              </ul>
            </nav>
            <div class="credits ml-auto">
             
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js"></script>
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script><!-- Paper Dashboard DEMO methods, don't include it in your project! -->
  <script src="assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
      demo.initChartsPages();
    });
  </script>
  
</body>
  <%   }catch(Exception e){ %>
                           
  <div  id="login-alert" class="alert alert-danger col-sm-12">  <%=   e.getMessage()%></div>
                           
                   
            <%   }
          %>
 <% } else { %>
            <font color="red">Login Expired! <a href="loginreg.jsp">Login</a> 
            <%} %>
</html>
