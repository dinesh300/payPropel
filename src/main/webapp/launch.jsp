
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
	
	
	  <!-- Custom styles -->
	  <style>
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
	    .mht-150{min-height: 150px}
	    
	    /*==================================================
 * Effect 3
 * ===============================================*/
.effect3
{
  position: relative;
}
.effect3:before
{
  z-index: -1;
  position: absolute;
  content: "";
  bottom: 15px;
  left: 10px;
  width: 50%;
  top: 80%;
  max-width:300px;
  background: #777;
  -webkit-box-shadow: 0 15px 10px #777;
  -moz-box-shadow: 0 15px 10px #777;
  box-shadow: 0 15px 10px #777;
  -webkit-transform: rotate(-3deg);
  -moz-transform: rotate(-3deg);
  -o-transform: rotate(-3deg);
  -ms-transform: rotate(-3deg);
  transform: rotate(-3deg);
}
	  </style>
	  
	    <%
	    
	    String username=(String)session.getAttribute("username"); 
	    
	    
	    %>
	    
	</head>
	<body style="background: whitesmoke">
	
	
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
		  			<p class="h5" style="color: #1c5686"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-file-earmark-text-fill" viewBox="0 0 16 16">
					  <path d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0 0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0zM9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1zM4.5 9a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1h-7zM4 10.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 1 0-1h4a.5.5 0 0 1 0 1h-4z"/>
					</svg> XML Data Validation</p>

		  		</div>
		  		<hr />
		  		<p >
		  		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Teams involved in payments need a quick and easy way to check bank payments files. They need to check the technical file format as well as conformance to bank-specific business rules.

				The XMLdation Validator® is an easy to use Service for checking payments files. No training is needed, and it can be used as and when the need arises. The Validator works for hundreds of different variations of the payment file formats used at banks.
		  		</p>
		  		
		  	</div>
		  	
		  	<div class="col-9">
		  		<div class="row justify-content-left pad-top-50" >
			  	
					
					<div class="col-3 " >
						<div class="row text-center h-100">
						  <div class="col text-center my-auto">
						  <a href="generateISO.jsp" style="color: steelblue">
						    <div class="card card-block d-flex mht-150 effect3" style="border-radius:15px; background: whitesmoke " >
						      <div class="card-body align-items-center d-flex justify-content-center">
						        <h5 class="card-title" style="color: steelblue">Generate ISO Message</h5>
						      </div>
						    </div>
						   </a>
						  </div>
						</div>
					</div>
					
					<div class="col-3 " >
						<div class="row text-center h-100">
						  <div class="col text-center my-auto">
						  <a href="#" style="color: steelblue">
						    <div class="card card-block d-flex mht-150 effect3" style="border-radius:15px; background: whitesmoke " >
						      <div class="card-body align-items-center d-flex justify-content-center">
						        <h5 class="card-title">Manage ISO Message</h5>
						      </div>
						    </div>
						   </a>
						  </div>
						</div>
					</div>
					
					<div class="col-3 " >
						<div class="row text-center h-100">
						  <div class="col text-center my-auto">
						  <a href="validateISO.jsp" style="color: steelblue">
						    <div class="card card-block d-flex mht-150 effect3" style="border-radius:15px; background: whitesmoke " >
						      <div class="card-body align-items-center d-flex justify-content-center">
						        <h5 class="card-title">Validate ISO Message</h5>
						      </div>
						    </div>
						   </a>
						  </div>
						</div>
					</div>
					
					<div class="col-3 " >
						<div class="row text-center h-100">
						  <div class="col text-center my-auto">
						  <a href="#" style="color: steelblue">
						    <div class="card card-block d-flex mht-150 effect3" style="border-radius:15px; background: whitesmoke " >
						      <div class="card-body align-items-center d-flex justify-content-center">
						        <h5 class="card-title">Create Test Pack</h5>
						      </div>
						    </div>
						   </a>
						  </div>
						</div>
					</div>
					
					<div class="col-3 pad-top-50" >
						<div class="row text-center h-100">
						  <div class="col text-center my-auto">
						  <a href="#" style="color: steelblue">
						    <div class="card card-block d-flex mht-150 effect3" style="border-radius:15px; background: whitesmoke " >
						      <div class="card-body align-items-center d-flex justify-content-center">
						        <h5 class="card-title">Execute Test Pack/ Single Message</h5>
						      </div>
						    </div>
						   </a>
						  </div>
						</div>
					</div>
					
					<div class="col-3 pad-top-50" >
						<div class="row text-center h-100">
						  <div class="col text-center my-auto">
						  <a href="#" style="color: steelblue">
						    <div class="card card-block d-flex mht-150 effect3" style="border-radius:15px; background: whitesmoke " >
						      <div class="card-body align-items-center d-flex justify-content-center">
						        <h5 class="card-title">Test Data Management</h5>
						      </div>
						    </div>
						   </a>
						  </div>
						</div>
					</div>
					
					<div class="col-3 pad-top-50" >
						<div class="row text-center h-100">
						  <div class="col text-center my-auto">
						  <a href="#" style="color: steelblue">
						    <div class="card card-block d-flex mht-150 effect3" style="border-radius:15px; background: whitesmoke " >
						      <div class="card-body align-items-center d-flex justify-content-center">
						        <h5 class="card-title">Audit Trails</h5>
						      </div>
						    </div>
						   </a>
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