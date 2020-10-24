<%-- 
    Document   : createParking
    Created on : 10 Oct, 2020, 5:34:42 PM
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

        <script>

            function buildNoChange(elm) {

                console.log(elm.value);

                window.location.href = "createParking.jsp?buildNo=" + elm.value;
            }


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
                        <% if (session.getAttribute("loginUser") != null) {%>
                        Welcome <%=(String) session.getAttribute("loginUser")%>

                        <!-- <div class="logo-image-big">
                          <img src="assets/img/logo-big.png">
                        </div> -->
                    </a>
                    [<%=(String) session.getAttribute("roleId")%>]
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
                            <a class="navbar-brand" href="javascript:;">Create Parking   
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

                <%   Connection con = DBConnection.getDBConnection();
                    Statement st = null;
                    ResultSet rs = null;

                    rs = null;
                    List<String> bulingNos = new ArrayList<String>();
                    try {
                        st = con.createStatement();
              rs = st.executeQuery("SELECT * from parking.bulding_floor_map where bulding_no='" + request.getParameter("buildNo") + "'");%>

                <div class="content">

                    <div class="row">
                        <table>
                            <tr><th>Floor No </th><th>Available</th><th>Occupied</th><th>Details</th></tr>


                            <%  while (rs.next()) {%>


                            <tr>  <td><%=rs.getString("floor_no")%></td><td><%=rs.getInt("total_free")%></td><td><%=rs.getInt("total_occupied") %> %</td>
                            
                               <% if(((String)session.getAttribute("roleId")).equalsIgnoreCase("ADMIN")){ %> 
                               <td><a href="parkingDetails.jsp?buildNo=<%=request.getParameter("buildNo")%>&floorNo=<%=rs.getString("floor_no")%>">Details</a></td>
                               <%}%>
                            
                            </tr>

                            <%    }


                            %>
                            </tr
                        </table>
                    </div>
                    <br><br>



                </div>  
                <%   } catch (Exception e) {

                        e.getMessage();

                    }
                %>
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
                  $(document).ready(function () {
                      // Javascript method's body can be found in assets/assets-for-demo/js/demo.js
                      demo.initChartsPages();
                  });
                </script>

                </body>
                <% } else { %>
                <font color="red">Login Expired! <a href="loginreg.jsp">Login</a> 
                <%}%>
                </html>

