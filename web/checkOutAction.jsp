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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <title>
    Parking Dashboard
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
     
          <link href="assets/css/fontawesome.css" rel="stylesheet">
            <script src="js/parking.js"></script>
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
<style>
    * {
  box-sizing: border-box;
}

/* Create four equal columns that floats next to each other */
.column {
  float: left;
  width: 25%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.square {
  height: 50px;
  width: 100px;
  background-color: greenyellow;
  ;
}
</style>
  <script>
  $( function() {
    $( "#accordion" ).accordion({
      collapsible: true
    });
  } );
  </script>
    <script>
         $( function() {
          $("#space").click(function(){
              alert();
          })    
              
    });
    </script>
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
            <a href="./notifications.html">
              <i class="nc-icon nc-bell-55"></i>
              <p>Notifications</p>
            </a>
          </li>
             <li>
            <a href="./user.html">
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
      <%=request.getParameter("parkingNo")%>
             <%
                      Connection con = DBConnection.getDBConnection(); 
              Statement st = null;
               ResultSet rs = null;
       try {
        int freeParking =0;
               int total_occupied =0;
               int totalCreated =0;
               st = con.createStatement();
          rs = st.executeQuery("select total_free,total_occupied , parking_created from bulding_floor_map where bulding_no='"+ request.getParameter("buildNo")+"' and floor_no="+ request.getParameter("floorNo") );
             while(rs.next()){
                 
                 freeParking = rs.getInt(1);
                 total_occupied = rs.getInt(2);
                 totalCreated = rs.getInt(3);
                
             } 
            
      String query = " UPDATE bulding_floor_map SET total_free=?,total_occupied=? WHERE bulding_no =? AND floor_no=? ";
              
  int userId =0;
  int totParkingOcuupied = total_occupied-1 >0 && total_occupied-1!=0 ? total_occupied-1:0;
  int freeParkingAvl = freeParking+1<totalCreated ? freeParking+1:totalCreated;
      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt = con.prepareStatement(query);
      preparedStmt.setInt (1,freeParkingAvl);
      preparedStmt.setInt (2, totParkingOcuupied);
       preparedStmt.setString (3,  request.getParameter("buildNo"));
        preparedStmt.setInt (4,Integer.parseInt(request.getParameter("floorNo")));
    
      
   int rowsAffecrted =   preparedStmt.executeUpdate();
       if(rowsAffecrted>0) {
        System.out.println("Successfully created");
       } 
        
         String insertquery = " UPDATE  booking SET checkoutDate=? where userId=?";
        
  
      // create the mysql insert preparedstatement
       preparedStmt = con.prepareStatement(insertquery);
    
      preparedStmt.setString(1, request.getParameter("checkoutDate"));
      preparedStmt.setInt    (2,  Integer.parseInt(request.getParameter("userId")));
      
      int rowUpdated = preparedStmt.executeUpdate();    
                 
                 %>
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
            <a class="navbar-brand" href="javascript:;">Checkout Confirmation 
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
      <div class="content">
         
          <img src="assets/img/thankyou.png"> Thanks for Cheking out yiur vehicle!
          
      </div>
      
  
 

  
</body>
 <%   }catch(Exception e){ %>
                           
  <div  id="login-alert" style="margin-left: 20%;" class="alert alert-danger col-sm-12">  <%=   e.getMessage()%></div>
                           
                   
            <%   }
          %>
                           

                           
          
 <% } else { %>
            <font color="red">Login Expired! <a href="loginreg.jsp">Login</a> 
            <%} %>
</html>

