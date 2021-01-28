<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
	<head>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <meta http-equiv="x-ua-compatible" content="ie=edge">
	
	
	  <title>Pay Propel</title>
	
	  <script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
	  <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
		
	  <!-- Bootstrap CSS -->
	  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	  <link rel="icon" href="assets/images/PPfavicon.png" type="image/x-icon">
	
	<script type="text/javascript">
 window.onload = function() {
    document.getElementById('ifYes').style.display = 'none';
    document.getElementById('ifNo').style.display = 'none';
    
}
function yesnoCheck() {
    if (document.getElementById('yesCheck').checked) {
        document.getElementById('ifYes').style.display = 'block';
        document.getElementById('ifNo').style.display = 'none';
        
    } 
    else if(document.getElementById('noCheck').checked) {
        document.getElementById('ifNo').style.display = 'block';
        document.getElementById('ifYes').style.display = 'none';
        
   }
}

function selectScheme() {

	 $(function() {
	        $('#selectedScheme').change(function(){
	            $('.colors').hide();
	            $('#' + $(this).val()).show();
	        });
	    });
	    
}


</script>

   <%   
	 String isAuth=(String)request.getAttribute("isAuth");  
     String message =(String) request.getAttribute("message");
     String alertId = (String) request.getAttribute("alertId");
     String alertType=(String)request.getAttribute("alertType");  
     String cssDesign =(String) request.getAttribute("cssAlert");
  	 String showOrHide=(String) request.getAttribute("showOrHide");
  	 if (showOrHide==null){
  		 showOrHide="none";
  	 }
  	String username=(String)request.getAttribute("username"); 
	%> 
	
	  <!-- Custom styles -->
	  <style>
	    .icon-color {background-color:#94536d !important;}
	    .cl-white{color: white!important}
	     .icon-color {background-color:#94536d !important;}
	    .cl-white{color: white!important}
	    .width-100{width: 100%}
	    .pad-top-50{padding-top:50px }
	    .pad-0{padding: 0!important}
	    .margin-0{margin: 0!important}
	    .pad-5{padding: 5px}
	    .pad-10{padding: 10px}
	    .pad-20{padding: 20px}
	    .cl-white{background: white}
	    .clr-lightgrey{color: lightgrey}
	    .clr-whitesmoke{color: whitesmoke}
	    .form-control:focus {
	        border-color: white;
	        box-shadow: 0 0 0 1px grey!important;
	    } 
	    .text-end{text-align: end}
	    .clr-darkslategrey{color: darkslategrey}
	    .clr-black{color: black!important}
	    .mht-150{min-height: 150px}
	    
	    @media screen and (max-width: 1366px) and (min-width: 600px) {
		  body{
		  	zoom:75%!important
		  }
		}
			    
	  </style>
	  
	   
	    
	</head>
	<body>
	
	
	  <div class="container-fluid">
	  
	    <div class="row justify-content-left" style="padding: 10px">
	    	<div class="col">
	    		<img src="<%=request.getContextPath()%>/assets/images/PPlogo.png" alt="Billpay logo"/>
	    	</div>
	    	
	    	<div class="col align-self-end" >
	    		<div class="row justify-content-end" style="padding-right: 20px"  >
	    			<div class="col-10 align-self-center text-end" >
	    				<div class="row justify-content-end" style="padding: 10px">
	    					<h6>Welcome, <strong><%=username %></strong> </h6>
	    				</div>	
	    			</div>
	    			
	    			<div class="col-2 align-self-center" style="padding: 8px" >
		    			<button type="button" class="btn btn-sm btn-danger"> Logout</button>
	    			</div>
	    		
					
	    		</div>
	    	</div>
	    	
	  </div>  	
	    </div>
	    
	           <!-- Navbar content -->
	 	<nav class="navbar navbar-expand-xl" style="background-color: #0d2f76 !important;border-top: 3px solid #2e94e7 ">
		</nav>
	    
	    
	   <div class="container-fluid">
	  
	  	<div class="row justify-content-center" >
		  	<div class="col-10">
		  		<div class="row pad-10" >
		  			<p class="h5" style="color: #1c5686"> 

					<strong><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-building" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M14.763.075A.5.5 0 0 1 15 .5v15a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5V14h-1v1.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V10a.5.5 0 0 1 .342-.474L6 7.64V4.5a.5.5 0 0 1 .276-.447l8-4a.5.5 0 0 1 .487.022zM6 8.694L1 10.36V15h5V8.694zM7 15h2v-1.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5V15h2V1.309l-7 3.5V15z"/>
					  <path d="M2 11h1v1H2v-1zm2 0h1v1H4v-1zm-2 2h1v1H2v-1zm2 0h1v1H4v-1zm4-4h1v1H8V9zm2 0h1v1h-1V9zm-2 2h1v1H8v-1zm2 0h1v1h-1v-1zm2-2h1v1h-1V9zm0 2h1v1h-1v-1zM8 7h1v1H8V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zM8 5h1v1H8V5zm2 0h1v1h-1V5zm2 0h1v1h-1V5zm0-2h1v1h-1V3z"/>
					</svg>
					Validate ISO Message </strong></p>
		  		</div>
		  		
		  		
		  		<nav aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="/payPropel/launch.jsp">Home</a></li>
				    <li class="breadcrumb-item active" aria-current="page">Validate ISO Message</li>
				  </ol>
				</nav>
				
			
			  <div class="row justify-content-center" >
			  	
			  	<div class="col-10 pad-10" > 
						
						    <div class="card  " style="border-radius:15px; background: white " >
						      <div class="card-body align-items-left  justify-content-left">
						        <div class="row justify-content-center  margin-0 pad-0">
						         <div class="col-12 text-left">
						         	<h4>File Upload:</h4>
						         </div>
								<div class="col-3 text-left">
								<p class=" clr-black" >Please Select the file for validate.</p>
								</div>
								<div class="col-9">
								  <form method="post" action="Validate" enctype="multipart/form-data">
									  <div class="custom-file">
									    <input type="file" class="custom-file-input" name="file" id=file>
									    <label class="custom-file-label" for="customFile">Choose file</label>
									  </div>
										  
											
											 
										  <div class="col-9">
											<div class="row justify-content-center" style="padding: 0">
												
												 <div class="col-3 pad-top-50">
											    	<button type="button"  class="btn btn-secondary btn-sm btn-block">Cancel</button>

											    </div>
											    <div class="col-3 pad-top-50">
													<button type="submit" class="btn btn-sm btn-block btn-info" > Validate </button>										      
											    </div>
											    </div>
											    
											</div>
										</form>
										
									
											
										<script type="text/javascript">
										// Add the following code if you want the name of the file appear on select
										$(".custom-file-input").on("change", function() {
										  var fileName = $(this).val().split("\\").pop();
										  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
										});


										</script>
								
								 	</div>
								 </div>
							   <div class="row justify-content-center pad-top-50" >
									 	 <div class= " col-5 <%=alertType%>" id="<%=alertId%>" role="alert" style="<%=cssDesign%>; display:<%=showOrHide%>">
											<p>	<Strong><%=isAuth%></Strong> <%=message%></p>
										</div>
						  </div>
						</div>
					</div>
			  
			  </div>
			
	 	 </div>
	   </div>
	   </div>
	</body>
</html>   