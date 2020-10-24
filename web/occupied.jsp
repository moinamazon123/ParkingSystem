
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.parking.src.ParkingConstants"%>
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
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />

  <script>
  $( function() {
    $( "#accordion" ).accordion({
      collapsible: true
    });
  } );
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
            <a href="report.jsp">
              <i class="nc-icon nc-paper"></i>
              <p>Report</p>
            </a>
          </li>
         
            <li>
            <a href="createParking.jsp">
              <i class="nc-icon nc-pin-3"></i>
              <p>Create Parking</p>
            </a>
          </li>
          <li>
            <a href="./user.html">
              <i class="nc-icon nc-single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
         
        </ul>
      </div>
    </div>
      
             <%
                  Connection con = DBConnection.getDBConnection(); 
              Statement st = null;
               ResultSet rs = null;
               List<Integer> buildingList = new ArrayList<Integer>();
              
       try{
                   st = con.createStatement();
                 
           
           rs = st.executeQuery("SELECT distinct(bulding_no) from parking.bulding_floor_map");
               while(rs.next()){ 
          buildingList .add( rs.getInt(1));
  
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

           }     
                 
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
            <a class="navbar-brand" href="javascript:;">Occupied Report 
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
      <br><br><br><br><br>
<div id="accordion">

  <div>
  
      <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Building Number</th>
      <th scope="col">Floor</th>
      <th scope="col">Free</th>
      <th scope="col">Occupied</th>
        <th scope="col">Parking Created</th>
           <th scope="col">Detail</th>
    </tr>
  </thead>
  <tbody>
      <%    
          int rowIndex=0;
             rs = st.executeQuery("SELECT * from parking.bulding_floor_map where total_occupied is not null and total_occupied!=0 ");
            
          while(rs.next()){
             rowIndex++; 
          
          %>
    <tr>
         <% if(rs.getInt("parking_created")!=0){ %>
      <th scope="row"><%=rs.getString("bulding_no")%></th>
      <td><%=rs.getInt("floor_no")%></td>
       <% if(((String)session.getAttribute("roleId")).equals("ADMIN")){ %>
      <td style="background-color:green"><%=rs.getInt("total_free")%></td>
        <% } else if(checkinDate !=null) { %>
      <td style="background-color:greenyellow"><%=rs.getInt("total_free")%> &nbsp;&nbsp;&nbsp;&nbsp;<a href="selectSpace.jsp?buildNo=<%=rs.getString("bulding_no")%>&floorNo=<%=rs.getInt("floor_no")%>&free=<%=rs.getInt("total_free")%>"> <font color=red>You Cant Avail As you've already occupied one!</font></a></td>
    
      <% } else { %>
      <td style="background-color:greenyellow"><%=rs.getInt("total_free")%> &nbsp;&nbsp;&nbsp;&nbsp;<a href="selectSpace.jsp?buildNo=<%=rs.getString("bulding_no")%>&floorNo=<%=rs.getInt("floor_no")%>&free=<%=rs.getInt("total_free")%>"> </a></td>
         <%} %>
      <td style="background-color:red"><%=rs.getInt("total_occupied")%></td>
     
      <td style="background-color:yellow"><%=rs.getInt("parking_created")%></td>
      <td style="background-color:black"><a href="parkingDetails.jsp?buildNo=<%=rs.getString("bulding_no")%>&floorNo=<%=rs.getInt("floor_no")%>">Details</a></td>
     
    
     
       <% } else { %>
       
         <th scope="row"><%=rs.getString("bulding_no")%></th>
      <td style="background-color:red"><%=rs.getInt("floor_no")%></td>
      
         <td style="background-color:red"><%=rs.getInt("total_free")%></td>
       
      <td style="background-color:red"><%=rs.getInt("total_occupied")%></td>
      <td>
           <% if(((String)session.getAttribute("roleId")).equals("ADMIN")){ %>
          <a href="createParking.jsp?buildNo=<%=rs.getString("bulding_no")%>&floorNo=<%=rs.getInt("floor_no")%>">Parking Not Yet Created</a>
      <% } else { %>
      Contact Admin
      <%} %>
      </td>
        <td style="background-color:black"><a href="parkingDetails.jsp?buildNo=<%=rs.getString("bulding_no")%>&floorNo=<%=rs.getInt("floor_no")%>">Details</a></td>
    </tr>
    <%} } %>
  </tbody>
      </table>
      
      
  </div>

</div>
 

  
</body>
  <%   }catch(Exception e){ %>
                           
  <div  id="login-alert" class="alert alert-danger col-sm-12">  <%=   e.getMessage()%></div>
                           
                   
            <%   }
          %>
 <% } else { %>
            <font color="red">Login Expired! <a href="loginreg.jsp">Login</a> 
            <%} %>
</html>

