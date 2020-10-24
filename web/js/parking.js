/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
   // window.location.reload();
 
      $("#username").change(function(){ 
           $("#username-alert").hide();
         //  $("#userExistsEr").hide();
        $.ajax({
		url: "LoginServlet?event=checkUsername&username="+$("#username").val(),
		type: 'POST',
		dataType: 'json',
		//data: JSON.stringify(article),
		contentType: 'application/json',
		mimeType: 'application/json',
		error : function(e) {

                console.log("Error Occured",e);
            },
            success : function(data) {
          console.log(data);
          $("#username-alert").show();
          $("#userExistsEr").html(data);
          
             

            }
	});
        
      
   });
   
   $("#password_confirmation").change(function(){
         $("#passwordMatchEr").hide(); alert($("#passwordkey").val())
       if( $("#passwordkey").val()!= $("#password_confirmation").val()){
            $("#passwordMatchEr").show();
           $("#passwordMatchEr").html("Password & Conform password should match");
           
       } if( $("#password_confirmation").val() ==  $("#passwordkey").val()){
          // alert();
           $("#passwordMatchEr").hide(); 
       }
       
   })
   
       $('div[id^="space"]').click(function(){
          //    alert();
          });
          
          $("#confrmPay").click(function(){
             // alert();
          });
    
});