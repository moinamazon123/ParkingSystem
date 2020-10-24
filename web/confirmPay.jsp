
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<%-- 
    Document   : selectSpace
    Created on : 12 Oct, 2020, 12:49:15 AM
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

<html class="supernova"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="alternate" type="application/json+oembed" href="https://www.jotform.com/oembed/?format=json&amp;url=https%3A%2F%2Fform.jotform.com%2F202850482280452" title="oEmbed Form">
<link rel="alternate" type="text/xml+oembed" href="https://www.jotform.com/oembed/?format=xml&amp;url=https%3A%2F%2Fform.jotform.com%2F202850482280452" title="oEmbed Form">
<meta property="og:title" content="PayPal Parking  Payment" >
<meta property="og:url" content="https://form.jotform.com/202850482280452" >
<meta property="og:description" content="Please click the link to complete this form.">
<meta name="slack-app-id" content="AHNMASS8M">
<link rel="shortcut icon" href="https://cdn.jotfor.ms/favicon.ico">
<link rel="canonical" href="https://form.jotform.com/202850482280452" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1" />
<meta name="HandheldFriendly" content="true" />
<title>PayPal Parking  Payment</title>
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.20860" rel="stylesheet" type="text/css" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.20860" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.20860" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/566a91c2977cdfcd478b4567.css?themeRevisionID=5f6c4c83346ec05354558fe8"/>
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_feature.css?3.3.20860" />

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
<style type="text/css">
    .form-label-left{
        width:150px;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:150px;
    }
    body, html{
        margin:0;
        padding:0;
        background:#fff;
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:690px;
        color:#555 !important;
        font-family:"Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Verdana, sans-serif;
        font-size:14px;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color: false;
    }

</style>

<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
/*PREFERENCES STYLE*/
    .form-all {
      font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Verdana, Tahoma, sans-serif, sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Verdana, Tahoma, sans-serif, sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Verdana, Tahoma, sans-serif, sans-serif;
    }
    .form-header-group {
      font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Verdana, Tahoma, sans-serif, sans-serif;
    }
    .form-label {
      font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Verdana, Tahoma, sans-serif, sans-serif;
    }
  
    .form-label.form-label-auto {
      
    display: inline-block;
    float: left;
    text-align: left;
  
    }
  
    .form-line {
      margin-top: 12px 36px 12px 36px px;
      margin-bottom: 12px 36px 12px 36px px;
    }
  
    .form-all {
      max-width: 590px;
      width: 100%;
    }
  
    .form-label.form-label-left,
    .form-label.form-label-right,
    .form-label.form-label-left.form-label-auto,
    .form-label.form-label-right.form-label-auto {
      width: 150px;
    }
  
    .form-all {
      font-size: 14pxpx
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 14pxpx
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 14pxpx
    }
  
    .supernova .form-all, .form-all {
      background-color: ;
    }
  
    .form-all {
      color: #555;
    }
    .form-header-group .form-header {
      color: #555;
    }
    .form-header-group .form-subHeader {
      color: #555;
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label {
      color: #555;
    }
    .form-sub-label {
      color: #6f6f6f;
    }
  
    .supernova {
      background-color: undefined;
    }
    .supernova body {
      background: transparent;
    }
  
    .form-textbox,
    .form-textarea,
    .form-dropdown,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: undefined;
    }
  
    .supernova {
      background-image: none;
    }
    #stage {
      background-image: none;
    }
  
    .form-all {
      background-image: none;
    }
  
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/
    /* Injected CSS Code */
</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.min.js"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.20860" type="text/javascript"></script>
<script type="text/javascript">
	JotForm.init(function(){
      productID = {"0":"input_3_1001","1":"input_3_1002"};
      paymentType = "product";
      JotForm.setCurrencyFormat('USD',true, 'point');
      JotForm.totalCounter({"input_3_1001":{"price":"100"},"input_3_1002":{"price":"200"}});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('blur', function(){isNaN(this.value) || this.value < 1 ? this.value = '0' : this.value = parseInt(this.value)})});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('focus', function(){this.value == 0 ? this.value = '' : this.value})});
      JotForm.handleProductLightbox();
      setTimeout(function() {
          $('input_5').hint('ex: myname@example.com');
       }, 20);
	JotForm.newDefaultTheme = false;
	JotForm.extendsNewTheme = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
      JotForm.alterTexts(undefined, true);
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"parkingPayment","qid":"1","text":"Parking Payment","type":"control_head"},{"name":"submit","qid":"2","text":"Submit","type":"control_button"},{"name":"myParking","qid":"3","text":"My Parking","type":"control_paypalpro"},{"name":"buyerName","qid":"4","text":"Buyer Name","type":"control_fullname"},{"name":"buyerEmail","qid":"5","text":"Buyer E-mail","type":"control_email"},{"name":"shippingAddress","qid":"6","text":"Shipping Address","type":"control_address"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"parkingPayment","qid":"1","text":"Parking Payment","type":"control_head"},{"name":"submit","qid":"2","text":"Submit","type":"control_button"},{"name":"myParking","qid":"3","text":"My Parking","type":"control_paypalpro"},{"name":"buyerName","qid":"4","text":"Buyer Name","type":"control_fullname"},{"name":"buyerEmail","qid":"5","text":"Buyer E-mail","type":"control_email"},{"name":"shippingAddress","qid":"6","text":"Shipping Address","type":"control_address"}]);}, 20); 
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
      
             <%
                      Connection con = DBConnection.getDBConnection(); 
              Statement st = null;
               ResultSet rs = null;
       
              
       try{ 
                   st = con.createStatement();
                 int userId=0;
           
           rs = st.executeQuery("SELECT user_id from user where username= '"+(String)session.getAttribute("loginUser")+"'");
               while(rs.next()){ 
          userId =  rs.getInt(1);
  
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
            <a class="navbar-brand" href="javascript:;">Payment Form 
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form action="bookingAction.jsp">
                
               
                                
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
          
<form class="jotform-form" action="bookingAction.jsp" autocomplete="on">
   
                  <input type="hidden" value="<%=request.getParameter("buildNo")%>" name="buildingNo">
                        <input type="hidden" value="<%=request.getParameter("floorNo")%>" name="floorNo">
                                <input type="hidden" value="<%=userId%>" name="userId">
                                         <input type="hidden" value="<%=request.getParameter("parkingNo")%>" name="parkingNo">
                                             <input type="hidden" value="<%=request.getParameter("checkinDate")%>" name="checkinDate">
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httal htvam">
            <h1 id="header_1" class="form-header" data-component="header">
              Parking Payment
            </h1>
            <div id="subHeader_1" class="form-subHeader">
              Thanks for Choosing Paypal
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_paypalpro" id="id_3" data-payment="true">
        <label class="form-label form-label-top form-label-auto" id="label_3" for="input_3"> My Parking </label>
        <div id="cid_3" class="form-input-wide">
          <div data-wrapper-react="true" id="payment-wrapper-songbird" data-currency="USD" data-paymentType="product" data-sandbox="Disabled">
            <div data-wrapper-react="true">
              <div class="filter-container">
              </div>
              <input type="hidden" name="simple_fpc" data-payment_type="paypalpro" data-component="payment1" value="3" />
              <input type="hidden" name="payment_total_checksum" id="payment_total_checksum" data-component="payment2" />
              <div id="image-overlay" class="overlay-content" style="display:none">
                <img id="current-image" />
                <span class="lb-prev-button">
                  prev
                </span>
                <span class="lb-next-button">
                  next
                </span>
                <span class="lb-close-button">
                  ( X )
                </span>
                <span class="image-overlay-product-container">
                  <ul class="form-overlay-item" hasicon="false" hasimages="false" iconvalue="">
                  </ul>
                  <ul class="form-overlay-item" hasicon="false" hasimages="false" iconvalue="">
                  </ul>
                </span>
              </div>
              <div data-wrapper-react="true">
                <span class="form-product-item hover-product-item " categories="non-categorized" pid="1001" style="display:block">
                  <div data-wrapper-react="true" class="form-product-item-detail">
                    <input type="checkbox" class="form-checkbox  form-product-input" id="input_3_1001" name="q3_myParking[][id]" value="1001" />
                    <label for="input_3_1001" class="form-product-container">
                      <span data-wrapper-react="true">
                        <span class="form-product-name" id="product-name-input_3_1001">
                          Normal Parking
                        </span>
                        <span class="form-product-details">
                          <b>
                            <span data-wrapper-react="true">
                              $
                              <span id="input_3_1001_price">
                                100.00
                              </span>
                            </span>
                          </b>
                        </span>
                      </span>
                      <div class="form-product-description" id="product-name-description-input_3_1001">
                      </div>
                    </label>
                  </div>
                </span>
                <br/>
                <span class="form-product-item hover-product-item " categories="non-categorized" pid="1002" style="display:block">
                  <div data-wrapper-react="true" class="form-product-item-detail">
                    <input type="checkbox" class="form-checkbox  form-product-input" id="input_3_1002" name="q3_myParking[][id]" value="1002" />
                    <label for="input_3_1002" class="form-product-container">
                      <span data-wrapper-react="true">
                        <span class="form-product-name" id="product-name-input_3_1002">
                          VIP Parking
                        </span>
                        <span class="form-product-details">
                          <b>
                            <span data-wrapper-react="true">
                              $
                              <span id="input_3_1002_price">
                                200.00
                              </span>
                            </span>
                          </b>
                        </span>
                      </span>
                      <div class="form-product-description" id="product-name-description-input_3_1002">
                      </div>
                    </label>
                  </div>
                </span>
                <br/>
                <span class="form-payment-total">
                  <b>
                    <span id="total-text">
                      Total
                    </span>
                     
                    <span class="form-payment-price">
                      <span data-wrapper-react="true">
                        $
                        <span id="payment_total">
                          0.00
                        </span>
                      </span>
                    </span>
                  </b>
                </span>
              </div>
              <hr/>
            </div>
            <table class="form-address-table payment-form-table" style="border:0" cellPadding="4" cellSpacing="0">
              <tbody>
                <tr>
                  <th colSpan="2" style="text-align:left">
                    Payment Method
                  </th>
                </tr>
                <tr>
                  <td valign="top" style="min-width:50px;vertical-align:top" rowspan="2">
                    <input type="radio" class="paymentTypeRadios" id="input_3_paymentType_credit" name="q3_myParking[paymentType]" value="credit" />
                    <label for="input_3_paymentType_credit">
                      <div style="display:inline-block;padding-right:4px">
                        <img src="https://cdn.jotfor.ms/images/blank.gif" class="paypalpro_img paypalpro_visa" style="display:inline-block;vertical-align:middle" alt="visa" />
                        <img src="https://cdn.jotfor.ms/images/blank.gif" class="paypalpro_img paypalpro_mc" style="display:inline-block;vertical-align:middle" alt="mc" />
                        <img src="https://cdn.jotfor.ms/images/blank.gif" class="paypalpro_img paypalpro_amex" style="display:inline-block;vertical-align:middle" alt="amex" />
                        <img src="https://cdn.jotfor.ms/images/blank.gif" class="paypalpro_img paypalpro_dc" style="display:inline-block;vertical-align:middle" alt="dc" />
                      </div>
                    </label>
                  </td>
                  <td align="left" valign="top" style="padding-bottom:2px !important;text-align:left;vertical-align:top">
                    <input type="radio" class="paymentTypeRadios" id="input_3_paymentType_express" name="q3_myParking[paymentType]" checked="" value="express" />
                    <label for="input_3_paymentType_express"> <img style="vertical-align:middle" src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/pp-acceptance-small.png" alt="PayPal" /> </label>
                  </td>
                </tr>
              </tbody>
            </table>
            <table style="display:none;border:0" id="creditCardTable" class="form-address-table payment-form-table" cellPadding="0" cellSpacing="0">
              <tbody>
                <tr>
                  <th colSpan="2" style="text-align:left;margin-top:20px;display:table" id="ccTitle3">
                    Credit Card
                  </th>
                </tr>
                <tr>
                  <td width="50%">
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <input type="text" id="input_3_cc_firstName" name="q3_myParking[cc_firstName]" class="form-textbox cc_firstName" size="20" value="" data-component="cc_firstName" />
                      <label class="form-sub-label" for="input_3_cc_firstName" id="sublabel_cc_firstName" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> First Name </label>
                    </span>
                  </td>
                  <td width="50%">
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <input type="text" id="input_3_cc_lastName" name="q3_myParking[cc_lastName]" class="form-textbox cc_lastName" size="20" value="" data-component="cc_lastName" />
                      <label class="form-sub-label" for="input_3_cc_lastName" id="sublabel_cc_lastName" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Last Name </label>
                    </span>
                  </td>
                </tr>
                <tr class="if_cc_field">
                  <td width="50%">
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <input type="number" id="input_3_cc_number" name="q3_myParking[cc_number]" class="form-textbox cc_number" autoComplete="off" size="20" value="" data-component="cc_number" />
                      <label class="form-sub-label" for="input_3_cc_number" id="sublabel_cc_number" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Credit Card Number </label>
                    </span>
                  </td>
                  <td width="50%">
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <input type="number" id="input_3_cc_ccv" name="q3_myParking[cc_ccv]" class="form-textbox cc_ccv" autoComplete="off" style="width:52px" value="" data-component="cc_ccv" />
                      <label class="form-sub-label" for="input_3_cc_ccv" id="sublabel_cc_ccv" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Security Code </label>
                    </span>
                  </td>
                </tr>
                <tr>
                  <td width="50%">
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <select class="form-dropdown cc_exp_month" name="q3_myParking[cc_exp_month]" id="input_3_cc_exp_month" data-component="cc_exp_month">
                        <option>  </option>
                        <option value="January"> January </option>
                        <option value="February"> February </option>
                        <option value="March"> March </option>
                        <option value="April"> April </option>
                        <option value="May"> May </option>
                        <option value="June"> June </option>
                        <option value="July"> July </option>
                        <option value="August"> August </option>
                        <option value="September"> September </option>
                        <option value="October"> October </option>
                        <option value="November"> November </option>
                        <option value="December"> December </option>
                      </select>
                      <label class="form-sub-label" for="input_3_cc_exp_month" id="sublabel_cc_exp_month" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Expiration Month </label>
                    </span>
                  </td>
                  <td width="50%">
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <select class="form-dropdown cc_exp_year" name="q3_myParking[cc_exp_year]" id="input_3_cc_exp_year" data-component="cc_exp_year">
                        <option>  </option>
                        <option value="2020"> 2020 </option>
                        <option value="2021"> 2021 </option>
                        <option value="2022"> 2022 </option>
                        <option value="2023"> 2023 </option>
                        <option value="2024"> 2024 </option>
                        <option value="2025"> 2025 </option>
                        <option value="2026"> 2026 </option>
                        <option value="2027"> 2027 </option>
                        <option value="2028"> 2028 </option>
                        <option value="2029"> 2029 </option>
                      </select>
                      <label class="form-sub-label" for="input_3_cc_exp_year" id="sublabel_cc_exp_year" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Expiration Year </label>
                    </span>
                  </td>
                </tr>
                <tr>
                  <th colSpan="2" style="text-align:left;margin-top:20px;display:table">
                    Billing Address
                  </th>
                </tr>
                <tr>
                  <td colSpan="2">
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <input type="text" id="input_3_addr_line1" name="q3_myParking[addr_line1]" class="form-textbox form-address-line" value="" data-component="addr_line1" />
                      <label class="form-sub-label" for="input_3_addr_line1" id="sublabel_3_addr_line1" style="min-height:13px" aria-hidden="false"> Street Address </label>
                    </span>
                  </td>
                </tr>
                <tr>
                  <td colSpan="2">
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <input type="text" id="input_3_addr_line2" name="q3_myParking[addr_line2]" class="form-textbox form-address-line" size="46" value="" data-component="addr_line2" />
                      <label class="form-sub-label" for="input_3_addr_line2" id="sublabel_3_addr_line2" style="min-height:13px" aria-hidden="false"> Street Address Line 2 </label>
                    </span>
                  </td>
                </tr>
                <tr>
                  <td width="50%">
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <input type="text" id="input_3_city" name="q3_myParking[city]" class="form-textbox form-address-city" size="21" value="" data-component="city" />
                      <label class="form-sub-label" for="input_3_city" id="sublabel_3_city" style="min-height:13px" aria-hidden="false"> City </label>
                    </span>
                  </td>
                  <td>
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <input type="text" id="input_3_state" name="q3_myParking[state]" class="form-textbox form-address-state" size="22" value="" data-component="state" />
                      <label class="form-sub-label" for="input_3_state" id="sublabel_3_state" style="min-height:13px" aria-hidden="false"> State / Province </label>
                    </span>
                  </td>
                </tr>
                <tr>
                  <td width="50%">
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <input type="text" id="input_3_postal" name="q3_myParking[postal]" class="form-textbox form-address-postal" size="10" value="" data-component="postal" />
                      <label class="form-sub-label" for="input_3_postal" id="sublabel_3_postal" style="min-height:13px" aria-hidden="false"> Postal / Zip Code </label>
                    </span>
                  </td>
                  <td>
                    <span class="form-sub-label-container" style="vertical-align:top">
                      <select class="form-dropdown form-address-country" name="q3_myParking[country]" id="input_3_country" data-component="country">
                        <option value="" selected=""> Please Select </option>
                        <option value="United States"> United States </option>
                        <option value="Afghanistan"> Afghanistan </option>
                        <option value="Albania"> Albania </option>
                        <option value="Algeria"> Algeria </option>
                        <option value="American Samoa"> American Samoa </option>
                        <option value="Andorra"> Andorra </option>
                        <option value="Angola"> Angola </option>
                        <option value="Anguilla"> Anguilla </option>
                        <option value="Antigua and Barbuda"> Antigua and Barbuda </option>
                        <option value="Argentina"> Argentina </option>
                        <option value="Armenia"> Armenia </option>
                        <option value="Aruba"> Aruba </option>
                        <option value="Australia"> Australia </option>
                        <option value="Austria"> Austria </option>
                        <option value="Azerbaijan"> Azerbaijan </option>
                        <option value="The Bahamas"> The Bahamas </option>
                        <option value="Bahrain"> Bahrain </option>
                        <option value="Bangladesh"> Bangladesh </option>
                        <option value="Barbados"> Barbados </option>
                        <option value="Belgium"> Belgium </option>
                        <option value="Belize"> Belize </option>
                        <option value="Benin"> Benin </option>
                        <option value="Bermuda"> Bermuda </option>
                        <option value="Bhutan"> Bhutan </option>
                        <option value="Bolivia"> Bolivia </option>
                        <option value="Bosnia and Herzegovina"> Bosnia and Herzegovina </option>
                        <option value="Botswana"> Botswana </option>
                        <option value="Brazil"> Brazil </option>
                        <option value="Brunei"> Brunei </option>
                        <option value="Bulgaria"> Bulgaria </option>
                        <option value="Burkina Faso"> Burkina Faso </option>
                        <option value="Burundi"> Burundi </option>
                        <option value="Cambodia"> Cambodia </option>
                        <option value="Cameroon"> Cameroon </option>
                        <option value="Canada"> Canada </option>
                        <option value="Cape Verde"> Cape Verde </option>
                        <option value="Cayman Islands"> Cayman Islands </option>
                        <option value="Central African Republic"> Central African Republic </option>
                        <option value="Chad"> Chad </option>
                        <option value="Chile"> Chile </option>
                        <option value="China"> China </option>
                        <option value="Christmas Island"> Christmas Island </option>
                        <option value="Cocos (Keeling) Islands"> Cocos (Keeling) Islands </option>
                        <option value="Colombia"> Colombia </option>
                        <option value="Comoros"> Comoros </option>
                        <option value="Congo"> Congo </option>
                        <option value="Cook Islands"> Cook Islands </option>
                        <option value="Costa Rica"> Costa Rica </option>
                        <option value="Croatia"> Croatia </option>
                        <option value="Curacao"> Curacao </option>
                        <option value="Cyprus"> Cyprus </option>
                        <option value="Czech Republic"> Czech Republic </option>
                        <option value="Denmark"> Denmark </option>
                        <option value="Djibouti"> Djibouti </option>
                        <option value="Dominica"> Dominica </option>
                        <option value="Dominican Republic"> Dominican Republic </option>
                        <option value="Ecuador"> Ecuador </option>
                        <option value="Egypt"> Egypt </option>
                        <option value="El Salvador"> El Salvador </option>
                        <option value="Equatorial Guinea"> Equatorial Guinea </option>
                        <option value="Eritrea"> Eritrea </option>
                        <option value="Estonia"> Estonia </option>
                        <option value="Ethiopia"> Ethiopia </option>
                        <option value="Falkland Islands"> Falkland Islands </option>
                        <option value="Faroe Islands"> Faroe Islands </option>
                        <option value="Fiji"> Fiji </option>
                        <option value="Finland"> Finland </option>
                        <option value="France"> France </option>
                        <option value="French Polynesia"> French Polynesia </option>
                        <option value="Gabon"> Gabon </option>
                        <option value="The Gambia"> The Gambia </option>
                        <option value="Georgia"> Georgia </option>
                        <option value="Germany"> Germany </option>
                        <option value="Ghana"> Ghana </option>
                        <option value="Gibraltar"> Gibraltar </option>
                        <option value="Greece"> Greece </option>
                        <option value="Greenland"> Greenland </option>
                        <option value="Grenada"> Grenada </option>
                        <option value="Guadeloupe"> Guadeloupe </option>
                        <option value="Guam"> Guam </option>
                        <option value="Guatemala"> Guatemala </option>
                        <option value="Guernsey"> Guernsey </option>
                        <option value="Guinea"> Guinea </option>
                        <option value="Guinea-Bissau"> Guinea-Bissau </option>
                        <option value="Guyana"> Guyana </option>
                        <option value="Haiti"> Haiti </option>
                        <option value="Honduras"> Honduras </option>
                        <option value="Hong Kong"> Hong Kong </option>
                        <option value="Hungary"> Hungary </option>
                        <option value="Iceland"> Iceland </option>
                        <option value="India"> India </option>
                        <option value="Indonesia"> Indonesia </option>
                        <option value="Iraq"> Iraq </option>
                        <option value="Ireland"> Ireland </option>
                        <option value="Israel"> Israel </option>
                        <option value="Italy"> Italy </option>
                        <option value="Jamaica"> Jamaica </option>
                        <option value="Japan"> Japan </option>
                        <option value="Jersey"> Jersey </option>
                        <option value="Jordan"> Jordan </option>
                        <option value="Kazakhstan"> Kazakhstan </option>
                        <option value="Kenya"> Kenya </option>
                        <option value="Kiribati"> Kiribati </option>
                        <option value="North Korea"> North Korea </option>
                        <option value="South Korea"> South Korea </option>
                        <option value="Kosovo"> Kosovo </option>
                        <option value="Kuwait"> Kuwait </option>
                        <option value="Kyrgyzstan"> Kyrgyzstan </option>
                        <option value="Laos"> Laos </option>
                        <option value="Latvia"> Latvia </option>
                        <option value="Lesotho"> Lesotho </option>
                        <option value="Liechtenstein"> Liechtenstein </option>
                        <option value="Lithuania"> Lithuania </option>
                        <option value="Luxembourg"> Luxembourg </option>
                        <option value="Macau"> Macau </option>
                        <option value="Macedonia"> Macedonia </option>
                        <option value="Madagascar"> Madagascar </option>
                        <option value="Malawi"> Malawi </option>
                        <option value="Malaysia"> Malaysia </option>
                        <option value="Maldives"> Maldives </option>
                        <option value="Mali"> Mali </option>
                        <option value="Malta"> Malta </option>
                        <option value="Marshall Islands"> Marshall Islands </option>
                        <option value="Martinique"> Martinique </option>
                        <option value="Mauritania"> Mauritania </option>
                        <option value="Mauritius"> Mauritius </option>
                        <option value="Mayotte"> Mayotte </option>
                        <option value="Mexico"> Mexico </option>
                        <option value="Micronesia"> Micronesia </option>
                        <option value="Moldova"> Moldova </option>
                        <option value="Monaco"> Monaco </option>
                        <option value="Mongolia"> Mongolia </option>
                        <option value="Montenegro"> Montenegro </option>
                        <option value="Montserrat"> Montserrat </option>
                        <option value="Morocco"> Morocco </option>
                        <option value="Mozambique"> Mozambique </option>
                        <option value="Myanmar"> Myanmar </option>
                        <option value="Nagorno-Karabakh"> Nagorno-Karabakh </option>
                        <option value="Namibia"> Namibia </option>
                        <option value="Nauru"> Nauru </option>
                        <option value="Nepal"> Nepal </option>
                        <option value="Netherlands"> Netherlands </option>
                        <option value="Netherlands Antilles"> Netherlands Antilles </option>
                        <option value="New Caledonia"> New Caledonia </option>
                        <option value="New Zealand"> New Zealand </option>
                        <option value="Nicaragua"> Nicaragua </option>
                        <option value="Niger"> Niger </option>
                        <option value="Nigeria"> Nigeria </option>
                        <option value="Niue"> Niue </option>
                        <option value="Norfolk Island"> Norfolk Island </option>
                        <option value="Turkish Republic of Northern Cyprus"> Turkish Republic of Northern Cyprus </option>
                        <option value="Northern Mariana"> Northern Mariana </option>
                        <option value="Norway"> Norway </option>
                        <option value="Oman"> Oman </option>
                        <option value="Pakistan"> Pakistan </option>
                        <option value="Palau"> Palau </option>
                        <option value="Palestine"> Palestine </option>
                        <option value="Panama"> Panama </option>
                        <option value="Papua New Guinea"> Papua New Guinea </option>
                        <option value="Paraguay"> Paraguay </option>
                        <option value="Peru"> Peru </option>
                        <option value="Philippines"> Philippines </option>
                        <option value="Pitcairn Islands"> Pitcairn Islands </option>
                        <option value="Poland"> Poland </option>
                        <option value="Portugal"> Portugal </option>
                        <option value="Puerto Rico"> Puerto Rico </option>
                        <option value="Qatar"> Qatar </option>
                        <option value="Republic of the Congo"> Republic of the Congo </option>
                        <option value="Romania"> Romania </option>
                        <option value="Russia"> Russia </option>
                        <option value="Rwanda"> Rwanda </option>
                        <option value="Saint Barthelemy"> Saint Barthelemy </option>
                        <option value="Saint Helena"> Saint Helena </option>
                        <option value="Saint Kitts and Nevis"> Saint Kitts and Nevis </option>
                        <option value="Saint Lucia"> Saint Lucia </option>
                        <option value="Saint Martin"> Saint Martin </option>
                        <option value="Saint Pierre and Miquelon"> Saint Pierre and Miquelon </option>
                        <option value="Saint Vincent and the Grenadines"> Saint Vincent and the Grenadines </option>
                        <option value="Samoa"> Samoa </option>
                        <option value="San Marino"> San Marino </option>
                        <option value="Sao Tome and Principe"> Sao Tome and Principe </option>
                        <option value="Saudi Arabia"> Saudi Arabia </option>
                        <option value="Senegal"> Senegal </option>
                        <option value="Serbia"> Serbia </option>
                        <option value="Seychelles"> Seychelles </option>
                        <option value="Sierra Leone"> Sierra Leone </option>
                        <option value="Singapore"> Singapore </option>
                        <option value="Slovakia"> Slovakia </option>
                        <option value="Slovenia"> Slovenia </option>
                        <option value="Solomon Islands"> Solomon Islands </option>
                        <option value="Somaliland"> Somaliland </option>
                        <option value="South Africa"> South Africa </option>
                        <option value="South Ossetia"> South Ossetia </option>
                        <option value="South Sudan"> South Sudan </option>
                        <option value="Spain"> Spain </option>
                        <option value="Sri Lanka"> Sri Lanka </option>
                        <option value="Sudan"> Sudan </option>
                        <option value="Suriname"> Suriname </option>
                        <option value="Svalbard"> Svalbard </option>
                        <option value="eSwatini"> eSwatini </option>
                        <option value="Sweden"> Sweden </option>
                        <option value="Switzerland"> Switzerland </option>
                        <option value="Taiwan"> Taiwan </option>
                        <option value="Tajikistan"> Tajikistan </option>
                        <option value="Tanzania"> Tanzania </option>
                        <option value="Thailand"> Thailand </option>
                        <option value="Timor-Leste"> Timor-Leste </option>
                        <option value="Togo"> Togo </option>
                        <option value="Tokelau"> Tokelau </option>
                        <option value="Tonga"> Tonga </option>
                        <option value="Transnistria Pridnestrovie"> Transnistria Pridnestrovie </option>
                        <option value="Trinidad and Tobago"> Trinidad and Tobago </option>
                        <option value="Tristan da Cunha"> Tristan da Cunha </option>
                        <option value="Tunisia"> Tunisia </option>
                        <option value="Turkey"> Turkey </option>
                        <option value="Turkmenistan"> Turkmenistan </option>
                        <option value="Turks and Caicos Islands"> Turks and Caicos Islands </option>
                        <option value="Tuvalu"> Tuvalu </option>
                        <option value="Uganda"> Uganda </option>
                        <option value="Ukraine"> Ukraine </option>
                        <option value="United Arab Emirates"> United Arab Emirates </option>
                        <option value="United Kingdom"> United Kingdom </option>
                        <option value="Uruguay"> Uruguay </option>
                        <option value="Uzbekistan"> Uzbekistan </option>
                        <option value="Vanuatu"> Vanuatu </option>
                        <option value="Vatican City"> Vatican City </option>
                        <option value="Venezuela"> Venezuela </option>
                        <option value="Vietnam"> Vietnam </option>
                        <option value="British Virgin Islands"> British Virgin Islands </option>
                        <option value="Isle of Man"> Isle of Man </option>
                        <option value="US Virgin Islands"> US Virgin Islands </option>
                        <option value="Wallis and Futuna"> Wallis and Futuna </option>
                        <option value="Western Sahara"> Western Sahara </option>
                        <option value="Yemen"> Yemen </option>
                        <option value="Zambia"> Zambia </option>
                        <option value="other"> Other </option>
                      </select>
                      <label class="form-sub-label" for="input_3_country" id="sublabel_3_country" style="min-height:13px" aria-hidden="false"> Country </label>
                    </span>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_fullname" id="id_4">
        <label class="form-label form-label-top form-label-auto" id="label_4" for="first_4"> Buyer Name </label>
        <div id="cid_4" class="form-input-wide">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
              <input type="text" id="first_4" name="q4_buyerName[first]" class="form-textbox" size="10" value="" data-component="first" aria-labelledby="label_4 sublabel_4_first" />
              <label class="form-sub-label" for="first_4" id="sublabel_4_first" style="min-height:13px" aria-hidden="false"> First Name </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="last">
              <input type="text" id="last_4" name="q4_buyerName[last]" class="form-textbox" size="15" value="" data-component="last" aria-labelledby="label_4 sublabel_4_last" />
              <label class="form-sub-label" for="last_4" id="sublabel_4_last" style="min-height:13px" aria-hidden="false"> Last Name </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_email" id="id_5">
        <label class="form-label form-label-top form-label-auto" id="label_5" for="input_5"> Buyer E-mail </label>
        <div id="cid_5" class="form-input-wide">
          <input type="email" id="input_5" name="q5_buyerEmail" class="form-textbox validate[Email]" size="32" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_5" />
        </div>
      </li>
      <li class="form-line" data-type="control_address" id="id_6">
        <label class="form-label form-label-top form-label-auto" id="label_6" for="input_6undefined"> Shipping Address </label>
        <div id="cid_6" class="form-input-wide">
          <div summary="" class="form-address-table jsTest-addressField">
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-street-line jsTest-address-lineField">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_6_addr_line1" name="q6_shippingAddress[addr_line1]" class="form-textbox form-address-line" value="" data-component="address_line_1" aria-labelledby="label_6 sublabel_6_addr_line1" />
                  <label class="form-sub-label" for="input_6_addr_line1" id="sublabel_6_addr_line1" style="min-height:13px" aria-hidden="false"> Street Address </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-street-line jsTest-address-lineField">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_6_addr_line2" name="q6_shippingAddress[addr_line2]" class="form-textbox form-address-line" value="" data-component="address_line_2" aria-labelledby="label_6 sublabel_6_addr_line2" />
                  <label class="form-sub-label" for="input_6_addr_line2" id="sublabel_6_addr_line2" style="min-height:13px" aria-hidden="false"> Street Address Line 2 </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-city-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_6_city" name="q6_shippingAddress[city]" class="form-textbox form-address-city" value="" data-component="city" aria-labelledby="label_6 sublabel_6_city" />
                  <label class="form-sub-label" for="input_6_city" id="sublabel_6_city" style="min-height:13px" aria-hidden="false"> City </label>
                </span>
              </span>
              <span class="form-address-line form-address-state-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_6_state" name="q6_shippingAddress[state]" class="form-textbox form-address-state" value="" data-component="state" aria-labelledby="label_6 sublabel_6_state" />
                  <label class="form-sub-label" for="input_6_state" id="sublabel_6_state" style="min-height:13px" aria-hidden="false"> State / Province </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-zip-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_6_postal" name="q6_shippingAddress[postal]" class="form-textbox form-address-postal" value="" data-component="zip" aria-labelledby="label_6 sublabel_6_postal" />
                  <label class="form-sub-label" for="input_6_postal" id="sublabel_6_postal" style="min-height:13px" aria-hidden="false"> Postal / Zip Code </label>
                </span>
              </span>
              <span class="form-address-line form-address-country-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <select class="form-dropdown form-address-country noTranslate" name="q6_shippingAddress[country]" id="input_6_country" data-component="country" required="" aria-labelledby="label_6 sublabel_6_country">
                    <option value=""> Please Select </option>
                    <option value="United States"> United States </option>
                    <option value="Afghanistan"> Afghanistan </option>
                    <option value="Albania"> Albania </option>
                    <option value="Algeria"> Algeria </option>
                    <option value="American Samoa"> American Samoa </option>
                    <option value="Andorra"> Andorra </option>
                    <option value="Angola"> Angola </option>
                    <option value="Anguilla"> Anguilla </option>
                    <option value="Antigua and Barbuda"> Antigua and Barbuda </option>
                    <option value="Argentina"> Argentina </option>
                    <option value="Armenia"> Armenia </option>
                    <option value="Aruba"> Aruba </option>
                    <option value="Australia"> Australia </option>
                    <option value="Austria"> Austria </option>
                    <option value="Azerbaijan"> Azerbaijan </option>
                    <option value="The Bahamas"> The Bahamas </option>
                    <option value="Bahrain"> Bahrain </option>
                    <option value="Bangladesh"> Bangladesh </option>
                    <option value="Barbados"> Barbados </option>
                    <option value="Belarus"> Belarus </option>
                    <option value="Belgium"> Belgium </option>
                    <option value="Belize"> Belize </option>
                    <option value="Benin"> Benin </option>
                    <option value="Bermuda"> Bermuda </option>
                    <option value="Bhutan"> Bhutan </option>
                    <option value="Bolivia"> Bolivia </option>
                    <option value="Bosnia and Herzegovina"> Bosnia and Herzegovina </option>
                    <option value="Botswana"> Botswana </option>
                    <option value="Brazil"> Brazil </option>
                    <option value="Brunei"> Brunei </option>
                    <option value="Bulgaria"> Bulgaria </option>
                    <option value="Burkina Faso"> Burkina Faso </option>
                    <option value="Burundi"> Burundi </option>
                    <option value="Cambodia"> Cambodia </option>
                    <option value="Cameroon"> Cameroon </option>
                    <option value="Canada"> Canada </option>
                    <option value="Cape Verde"> Cape Verde </option>
                    <option value="Cayman Islands"> Cayman Islands </option>
                    <option value="Central African Republic"> Central African Republic </option>
                    <option value="Chad"> Chad </option>
                    <option value="Chile"> Chile </option>
                    <option value="China"> China </option>
                    <option value="Christmas Island"> Christmas Island </option>
                    <option value="Cocos (Keeling) Islands"> Cocos (Keeling) Islands </option>
                    <option value="Colombia"> Colombia </option>
                    <option value="Comoros"> Comoros </option>
                    <option value="Congo"> Congo </option>
                    <option value="Cook Islands"> Cook Islands </option>
                    <option value="Costa Rica"> Costa Rica </option>
                    <option value="Cote d&#x27;Ivoire"> Cote d&#x27;Ivoire </option>
                    <option value="Croatia"> Croatia </option>
                    <option value="Cuba"> Cuba </option>
                    <option value="Curacao"> Curacao </option>
                    <option value="Cyprus"> Cyprus </option>
                    <option value="Czech Republic"> Czech Republic </option>
                    <option value="Democratic Republic of the Congo"> Democratic Republic of the Congo </option>
                    <option value="Denmark"> Denmark </option>
                    <option value="Djibouti"> Djibouti </option>
                    <option value="Dominica"> Dominica </option>
                    <option value="Dominican Republic"> Dominican Republic </option>
                    <option value="Ecuador"> Ecuador </option>
                    <option value="Egypt"> Egypt </option>
                    <option value="El Salvador"> El Salvador </option>
                    <option value="Equatorial Guinea"> Equatorial Guinea </option>
                    <option value="Eritrea"> Eritrea </option>
                    <option value="Estonia"> Estonia </option>
                    <option value="Ethiopia"> Ethiopia </option>
                    <option value="Falkland Islands"> Falkland Islands </option>
                    <option value="Faroe Islands"> Faroe Islands </option>
                    <option value="Fiji"> Fiji </option>
                    <option value="Finland"> Finland </option>
                    <option value="France"> France </option>
                    <option value="French Polynesia"> French Polynesia </option>
                    <option value="Gabon"> Gabon </option>
                    <option value="The Gambia"> The Gambia </option>
                    <option value="Georgia"> Georgia </option>
                    <option value="Germany"> Germany </option>
                    <option value="Ghana"> Ghana </option>
                    <option value="Gibraltar"> Gibraltar </option>
                    <option value="Greece"> Greece </option>
                    <option value="Greenland"> Greenland </option>
                    <option value="Grenada"> Grenada </option>
                    <option value="Guadeloupe"> Guadeloupe </option>
                    <option value="Guam"> Guam </option>
                    <option value="Guatemala"> Guatemala </option>
                    <option value="Guernsey"> Guernsey </option>
                    <option value="Guinea"> Guinea </option>
                    <option value="Guinea-Bissau"> Guinea-Bissau </option>
                    <option value="Guyana"> Guyana </option>
                    <option value="Haiti"> Haiti </option>
                    <option value="Honduras"> Honduras </option>
                    <option value="Hong Kong"> Hong Kong </option>
                    <option value="Hungary"> Hungary </option>
                    <option value="Iceland"> Iceland </option>
                    <option value="India"> India </option>
                    <option value="Indonesia"> Indonesia </option>
                    <option value="Iran"> Iran </option>
                    <option value="Iraq"> Iraq </option>
                    <option value="Ireland"> Ireland </option>
                    <option value="Israel"> Israel </option>
                    <option value="Italy"> Italy </option>
                    <option value="Jamaica"> Jamaica </option>
                    <option value="Japan"> Japan </option>
                    <option value="Jersey"> Jersey </option>
                    <option value="Jordan"> Jordan </option>
                    <option value="Kazakhstan"> Kazakhstan </option>
                    <option value="Kenya"> Kenya </option>
                    <option value="Kiribati"> Kiribati </option>
                    <option value="North Korea"> North Korea </option>
                    <option value="South Korea"> South Korea </option>
                    <option value="Kosovo"> Kosovo </option>
                    <option value="Kuwait"> Kuwait </option>
                    <option value="Kyrgyzstan"> Kyrgyzstan </option>
                    <option value="Laos"> Laos </option>
                    <option value="Latvia"> Latvia </option>
                    <option value="Lebanon"> Lebanon </option>
                    <option value="Lesotho"> Lesotho </option>
                    <option value="Liberia"> Liberia </option>
                    <option value="Libya"> Libya </option>
                    <option value="Liechtenstein"> Liechtenstein </option>
                    <option value="Lithuania"> Lithuania </option>
                    <option value="Luxembourg"> Luxembourg </option>
                    <option value="Macau"> Macau </option>
                    <option value="Macedonia"> Macedonia </option>
                    <option value="Madagascar"> Madagascar </option>
                    <option value="Malawi"> Malawi </option>
                    <option value="Malaysia"> Malaysia </option>
                    <option value="Maldives"> Maldives </option>
                    <option value="Mali"> Mali </option>
                    <option value="Malta"> Malta </option>
                    <option value="Marshall Islands"> Marshall Islands </option>
                    <option value="Martinique"> Martinique </option>
                    <option value="Mauritania"> Mauritania </option>
                    <option value="Mauritius"> Mauritius </option>
                    <option value="Mayotte"> Mayotte </option>
                    <option value="Mexico"> Mexico </option>
                    <option value="Micronesia"> Micronesia </option>
                    <option value="Moldova"> Moldova </option>
                    <option value="Monaco"> Monaco </option>
                    <option value="Mongolia"> Mongolia </option>
                    <option value="Montenegro"> Montenegro </option>
                    <option value="Montserrat"> Montserrat </option>
                    <option value="Morocco"> Morocco </option>
                    <option value="Mozambique"> Mozambique </option>
                    <option value="Myanmar"> Myanmar </option>
                    <option value="Nagorno-Karabakh"> Nagorno-Karabakh </option>
                    <option value="Namibia"> Namibia </option>
                    <option value="Nauru"> Nauru </option>
                    <option value="Nepal"> Nepal </option>
                    <option value="Netherlands"> Netherlands </option>
                    <option value="Netherlands Antilles"> Netherlands Antilles </option>
                    <option value="New Caledonia"> New Caledonia </option>
                    <option value="New Zealand"> New Zealand </option>
                    <option value="Nicaragua"> Nicaragua </option>
                    <option value="Niger"> Niger </option>
                    <option value="Nigeria"> Nigeria </option>
                    <option value="Niue"> Niue </option>
                    <option value="Norfolk Island"> Norfolk Island </option>
                    <option value="Turkish Republic of Northern Cyprus"> Turkish Republic of Northern Cyprus </option>
                    <option value="Northern Mariana"> Northern Mariana </option>
                    <option value="Norway"> Norway </option>
                    <option value="Oman"> Oman </option>
                    <option value="Pakistan"> Pakistan </option>
                    <option value="Palau"> Palau </option>
                    <option value="Palestine"> Palestine </option>
                    <option value="Panama"> Panama </option>
                    <option value="Papua New Guinea"> Papua New Guinea </option>
                    <option value="Paraguay"> Paraguay </option>
                    <option value="Peru"> Peru </option>
                    <option value="Philippines"> Philippines </option>
                    <option value="Pitcairn Islands"> Pitcairn Islands </option>
                    <option value="Poland"> Poland </option>
                    <option value="Portugal"> Portugal </option>
                    <option value="Puerto Rico"> Puerto Rico </option>
                    <option value="Qatar"> Qatar </option>
                    <option value="Republic of the Congo"> Republic of the Congo </option>
                    <option value="Romania"> Romania </option>
                    <option value="Russia"> Russia </option>
                    <option value="Rwanda"> Rwanda </option>
                    <option value="Saint Barthelemy"> Saint Barthelemy </option>
                    <option value="Saint Helena"> Saint Helena </option>
                    <option value="Saint Kitts and Nevis"> Saint Kitts and Nevis </option>
                    <option value="Saint Lucia"> Saint Lucia </option>
                    <option value="Saint Martin"> Saint Martin </option>
                    <option value="Saint Pierre and Miquelon"> Saint Pierre and Miquelon </option>
                    <option value="Saint Vincent and the Grenadines"> Saint Vincent and the Grenadines </option>
                    <option value="Samoa"> Samoa </option>
                    <option value="San Marino"> San Marino </option>
                    <option value="Sao Tome and Principe"> Sao Tome and Principe </option>
                    <option value="Saudi Arabia"> Saudi Arabia </option>
                    <option value="Senegal"> Senegal </option>
                    <option value="Serbia"> Serbia </option>
                    <option value="Seychelles"> Seychelles </option>
                    <option value="Sierra Leone"> Sierra Leone </option>
                    <option value="Singapore"> Singapore </option>
                    <option value="Slovakia"> Slovakia </option>
                    <option value="Slovenia"> Slovenia </option>
                    <option value="Solomon Islands"> Solomon Islands </option>
                    <option value="Somalia"> Somalia </option>
                    <option value="Somaliland"> Somaliland </option>
                    <option value="South Africa"> South Africa </option>
                    <option value="South Ossetia"> South Ossetia </option>
                    <option value="South Sudan"> South Sudan </option>
                    <option value="Spain"> Spain </option>
                    <option value="Sri Lanka"> Sri Lanka </option>
                    <option value="Sudan"> Sudan </option>
                    <option value="Suriname"> Suriname </option>
                    <option value="Svalbard"> Svalbard </option>
                    <option value="eSwatini"> eSwatini </option>
                    <option value="Sweden"> Sweden </option>
                    <option value="Switzerland"> Switzerland </option>
                    <option value="Syria"> Syria </option>
                    <option value="Taiwan"> Taiwan </option>
                    <option value="Tajikistan"> Tajikistan </option>
                    <option value="Tanzania"> Tanzania </option>
                    <option value="Thailand"> Thailand </option>
                    <option value="Timor-Leste"> Timor-Leste </option>
                    <option value="Togo"> Togo </option>
                    <option value="Tokelau"> Tokelau </option>
                    <option value="Tonga"> Tonga </option>
                    <option value="Transnistria Pridnestrovie"> Transnistria Pridnestrovie </option>
                    <option value="Trinidad and Tobago"> Trinidad and Tobago </option>
                    <option value="Tristan da Cunha"> Tristan da Cunha </option>
                    <option value="Tunisia"> Tunisia </option>
                    <option value="Turkey"> Turkey </option>
                    <option value="Turkmenistan"> Turkmenistan </option>
                    <option value="Turks and Caicos Islands"> Turks and Caicos Islands </option>
                    <option value="Tuvalu"> Tuvalu </option>
                    <option value="Uganda"> Uganda </option>
                    <option value="Ukraine"> Ukraine </option>
                    <option value="United Arab Emirates"> United Arab Emirates </option>
                    <option value="United Kingdom"> United Kingdom </option>
                    <option value="Uruguay"> Uruguay </option>
                    <option value="Uzbekistan"> Uzbekistan </option>
                    <option value="Vanuatu"> Vanuatu </option>
                    <option value="Vatican City"> Vatican City </option>
                    <option value="Venezuela"> Venezuela </option>
                    <option value="Vietnam"> Vietnam </option>
                    <option value="British Virgin Islands"> British Virgin Islands </option>
                    <option value="Isle of Man"> Isle of Man </option>
                    <option value="US Virgin Islands"> US Virgin Islands </option>
                    <option value="Wallis and Futuna"> Wallis and Futuna </option>
                    <option value="Western Sahara"> Western Sahara </option>
                    <option value="Yemen"> Yemen </option>
                    <option value="Zambia"> Zambia </option>
                    <option value="Zimbabwe"> Zimbabwe </option>
                    <option value="other"> Other </option>
                  </select>
                  <label class="form-sub-label" for="input_6_country" id="sublabel_6_country" style="min-height:13px" aria-hidden="false"> Country </label>
                </span>
              </span>
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide">
          <div style="margin-left:156px" data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField">
            <button id="input_2" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
              Submit
            </button>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>
  <script>
  JotForm.showJotFormPowered = "new_footer";
  </script>
  <script>
  JotForm.poweredByText = "Powered by JotForm";
  </script>
  <input type="hidden" class="simple_spc" id="simple_spc" name="simple_spc" value="202850482280452" />
  <script type="text/javascript">
  var all_spc = document.querySelectorAll("form[id='202850482280452'] .si" + "mple" + "_spc");
for (var i = 0; i < all_spc.length; i++)
{
  all_spc[i].value = "202850482280452-202850482280452";
}
  </script>
  <div class="formFooter-heightMask">
  </div>
  <div class="formFooter f6">
    <div class="formFooter-wrapper formFooter-leftSide">
      <a href="https://www.jotform.com/?utm_source=formfooter&utm_medium=banner&utm_term=202850482280452&utm_content=jotform_logo&utm_campaign=powered_by_jotform_le" target="_blank" class="formFooter-logoLink"><img class="formFooter-logo" src="https://cdn.jotfor.ms/assets/img/logo/logo-new@1x.png" alt="Jotform Logo"></a>
    </div>
    <div class="formFooter-wrapper formFooter-rightSide">
      <span class="formFooter-text">
        Now create your own JotForm - It's free!
      </span>
      <a class="formFooter-button" href="https://www.jotform.com/?utm_source=formfooter&utm_medium=banner&utm_term=202850482280452&utm_content=jotform_button&utm_campaign=powered_by_jotform_le" target="_blank">Create your own JotForm</a>
    </div>
  </div>
</form>
  
</body>
 <%   }catch(Exception e){ %>
                           
  <div  id="login-alert" class="alert alert-danger col-sm-12">  <%=   e.getMessage()%></div>
                           
                   
            <%   }
          %>
                           

                           
          
 <% } else { %>
            <font color="red">Login Expired! <a href="loginreg.jsp">Login</a> 
            <%} %>
</html>

