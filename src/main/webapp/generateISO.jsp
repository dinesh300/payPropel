<%@page import="com.sun.xml.internal.txw2.Document"%>

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
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  
	<script type="text/javascript">
 window.onload = function() {
    document.getElementById('ifYes').style.display = 'none';
    document.getElementById('ifNo').style.display = 'none';
    
}
function yesnoCheck() {
    if (document.getElementById('yesCheck').checked) {
        document.getElementById('ifYes').style.display = 'block';
        document.getElementById('ifNo').style.display = 'none';
        $('.international').hide();
        
    } 
    else if(document.getElementById('noCheck').checked) {
        document.getElementById('ifNo').style.display = 'block';
        document.getElementById('ifYes').style.display = 'none';
        $('.domestic').hide();
        
   }
}

function selectScheme() {

	 $(function() {
	        $('#selectedScheme').change(function(){
	            $('.international').hide();
	            $('#' + $(this).val()).show();
	        });
	    });
	    
}

function selectSchemeDomestic() {
	 $(function() {
	        $('#selectedSchemeDomestic').change(function(){
	            $('.domestic').hide();
	            $('#' + $(this).val()).show();
	        });
	    });
}


function selectVersion() {

	 $(function() {
	        $('#selectedVersion').change(function(){
	            $('.international').hide();
	            $('#' + $(this).val()).show();
	        });
	    });
	    
}

function selectVersionDomestic() {

	 $(function() {
	        $('#selectedVersionDomestic').change(function(){
	            $('.domestic').hide();
	            $('#' + $(this).val()).show();
	        });
	    });
	    
}

function generateXML() {
	 $(function() {

		$('#generate').click(function () {
			$('.note').hide();
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
	  
	    <%
	    
	    String username=(String)session.getAttribute("username"); 
	    %>
	    
	</head>
	<body >
	
	
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
					Generate ISO Message </strong></p>
		  		</div>
		  		
		  		
		  		<nav aria-label="breadcrumb">
				  <ol class="breadcrumb">
				    <li class="breadcrumb-item"><a href="/payPropel/launch.jsp">Home</a></li>
				    <li class="breadcrumb-item active" aria-current="page">Generate ISO Message</li>
				  </ol>
				</nav>
				
				<div class="row   margin-0 pad-0">
					<div class="col-2">
						<p style="color:steelblue">Select your options:</p>
					</div>
					<div class="col-2">
						<input type="radio" onclick="javascript:yesnoCheck();" name="yesno" id="yesCheck" style="color: green"/> <strong>Domestic</strong>
						
					</div>
					<div class="col-2">
						
						<input type="radio" onclick="javascript:yesnoCheck();" name="yesno" id="noCheck"/> <strong>International</strong>
					</div>
				</div>
			
							
				<div  id="ifYes" style="display:none">
					<div class="row   margin-0 pad-0">
							<div class="col-2">
								<p style="color: steelblue">Select Scheme:</p>
							</div>
							
							<div class="col-3">
								<form>
								    <div class="form-group">
								      <select class="form-control" id="selectedSchemeDomestic" onclick="javascript:selectSchemeDomestic();">
								        <option selected>Choose your options</option>
								        <option value="neft">NEFT</option>
								        <option value="rtgs">RTGS</option>
								        <option value="imps">IMPS</option>
								      
								      </select>
								    </div>
								  </form>
							</div>
						 </div>
				</div>
				
				
				<div id="ifNo" style="display:none">
						<div class="row   margin-0 pad-0">
							<div class="col-2">
								<p style="color: steelblue">Select Scheme:</p>
							</div>
							
							<div class="col-3">
								<form>
								    <div class="form-group">
								      <select class="form-control" id="selectedScheme" onclick="javascript:selectScheme();">
								        <option selected>Choose your options</option>
								        <option value="swift-ms">SWIFT</option>
								      
								      </select>
								    </div>
								  </form>
							</div>
						 </div>
			 	</div>	  
			  
			  <!--  For International Selection -->
			  
			  <div class="row justify-content-center" >
			  	
			  	<div class="col-12 pad-10" id="swift-ms" class="international" style="display:none"> 
						
						    <div class="card  " style="border-radius:15px; background: white " >
						      <div class="card-body align-items-left  justify-content-left">
						        <div class="row justify-content-center  margin-0 pad-0">
						         
									<div class="col-2 ">
										<p class="text-end clr-black" >Message Type:</p>
									</div>
									
									<div class="col-4">
										<form>
										    <div class="form-group">
										      <select class="form-control" id="selectedType" >
										        <option selected>Choose your options</option>
										        <option value="pain001">Pain 001</option>
										      	<option value="pain008">Pain 008</option>
												<option value="pacs002">PACS 002</option>
										 		<option value="camt056">CAMT 056</option>
										      </select>
										    </div>
										  </form>
									</div>
									<div class="col-2">
										<p  class="text-end clr-black"  >Version:</p>
									</div>
									
									<div class="col-4">
										<form>
										    <div class="form-group">
										      <select class="form-control" id="selectedVersion" onclick="javascript:selectVersion();">
										        <option selected>Choose your options</option>
										        <option value="ver001">Ver 001</option>
										        <option value="ver002">Ver 002</option>
										        <option value="ver003">Ver 003</option>
										        <option value="ver004">Ver 004</option>
										      
										      </select>
										    </div>
										  </form>
									</div>
								 </div>
							</div>
						</div>
					
			  	</div>
			  
			  
			  <div class="col-12 pad-10" id="ver003" class="international" style="display:none"> 
						
						   <div class="card  " style="border-radius:15px; background: white " >
						      <div class="card-body align-items-left  justify-content-left">
						        
								 <h5 class="pad-20"> Transaction Details:</h5>
								 
						        <div class="row justify-content-left  margin-0 pad-0">
						        	<div class="col-12">
						        		<form>
										  <div class="form-group row">
											  <div class="col-2 text-end">
											    	<label for="OrderingCustomer" >Ordering Customer</label>
											    </div>
											    <div class="col-3">
											      <input type="text" class="form-control" id="orderingCustomer" >
											    </div>
												 <div class="col-2 text-end">
												    <label  for="OrderingBank" >Ordering Bank</label>
												    </div>
												  <div class="col-3">
												      <input type="text" class="form-control" id="orderingBank" >
												 </div>
										    </div>
										    
										    
										     <div class="form-group row">
											  <div class="col-2 text-end">
											    	<label for="SendingCustomer" >Sending Customer</label>
											    </div>
											    <div class="col-3">
											      <input type="text" class="form-control" id="sendingCustomer" >
											    </div>
												 <div class="col-2 text-end">
												    <label  for="SendingBank" >Sending Bank</label>
												    </div>
												  <div class="col-3">
												      <input type="text" class="form-control" id="sendingBank" >
												 </div>
										    </div>
										    
										     <div class="form-group row">
											  <div class="col-2 text-end">
											    	<label for="Currency" >Currency</label>
											    </div>
											    <div class="col-1" >
											      
											      
											      <form>
													    <div class="form-group" style="max-width: 80px; border: 1px solid lightgrey; border-radius: 10px">
													      <select class="form-control" id="selectedType" > <strong>
													        <option selected><strong>CUR</strong></option>
													        <option value="pain001">INR</option>
													      	<option value="pain008">USD</option>
															<option value="pacs002">EUR</option>
													 		<option value="camt056">OMR</option></strong>
													      </select>
													    </div>
													  </form>
													  
													 
											    </div>
											    <div class="col-1 text-center">
											      <input type="text" class="form-control" id="currency" >
											    </div>
											    
												 <div class="col-3 text-end">
												    <label  for="valueDate" >Value Date</label>
												    </div>
												  <div class="col-3">
												      <input type="text" class="form-control" id="sendingBank" >
												 </div>
										    </div>
										    
										    
										    <div class="form-group row justify-content-center pad-20">
											  <div class="col-2 text-end">
											    	<button type="button" class="btn btn-secondary btn-sm btn-block">Cancel</button>
											    </div>
											     <div class="col-2">
											       <a href="GeneratedFile.xml" download>
											       		
															<button type="submit" id="generate" class="btn btn-info btn-sm btn-block" >Generate</button>
												    	
												    </a>
												</div>
											</div>
									   </form>
						        	</div>
						        	
						        </div>
						  </div>
						</div>
				  	</div>
			  </div>
			
			
			
			<!--  For Domestic Selection -->
			<div class="row justify-content-center" >
			  	
			  	<div class="col-12 pad-10" id="imps" class="domestic" style="display:none"> 
						
						    <div class="card  " style="border-radius:15px; background: white " >
						      <div class="card-body align-items-left  justify-content-left">
						        <div class="row justify-content-center  margin-0 pad-0">
						         
									<div class="col-2 ">
										<p class="text-end clr-black" >Message Type:</p>
									</div>
									
									<div class="col-4">
										<form>
										    <div class="form-group">
										      <select class="form-control" id="selectedType" >
										        <option selected>Choose your options</option>
										        <option value="pain001">Pain 001</option>
										      	<option value="pain008">Pain 008</option>
												<option value="pacs002">PACS 002</option>
										 		<option value="camt056">CAMT 056</option>
										      </select>
										    </div>
										  </form>
									</div>
									<div class="col-2">
										<p  class="text-end clr-black"  >Version:</p>
									</div>
									
									<div class="col-4">
										<form>
										    <div class="form-group">
										      <select class="form-control" id="selectedVersionDomestic" onclick="javascript:selectVersionDomestic();">
										        <option selected>Choose your options</option>
										        <option value="ver005">Ver 005</option>
										        <option value="ver006">Ver 006</option>
										        <option value="ver007">Ver 007</option>
										        <option value="ver008">Ver 008</option>
										      
										      </select>
										    </div>
										  </form>
									</div>
								 </div>
							</div>
						</div>
					
			  	</div>
			  
			  
			  <div class="col-12 pad-10" id="ver005" class="domestic" style="display:none"> 
						
						    <div class="card  " style="border-radius:15px; background: white " >
						      <div class="card-body align-items-left  justify-content-left">
						        
								 <h5 class="pad-20"> Transaction Details:</h5>
								 
						        <div class="row justify-content-left  margin-0 pad-0">
						        	<div class="col-12">
						        		<form>
										  <div class="form-group row">
											  <div class="col-2 text-end">
											    	<label for="OrderingCustomer" >Ordering Customer</label>
											    </div>
											    <div class="col-3">
											      <input type="text" class="form-control" id="orderingCustomer" >
											    </div>
												 <div class="col-2 text-end">
												    <label  for="OrderingBank" >Ordering Bank</label>
												    </div>
												  <div class="col-3">
												      <input type="text" class="form-control" id="orderingBank" >
												 </div>
										    </div>
										    
										    
										     <div class="form-group row">
											  <div class="col-2 text-end">
											    	<label for="SendingCustomer" >Sending Customer</label>
											    </div>
											    <div class="col-3">
											      <input type="text" class="form-control" id="sendingCustomer" >
											    </div>
												 <div class="col-2 text-end">
												    <label  for="SendingBank" >Sending Bank</label>
												    </div>
												  <div class="col-3">
												      <input type="text" class="form-control" id="sendingBank" >
												 </div>
										    </div>
										    
										     <div class="form-group row">
											  <div class="col-2 text-end">
											    	<label for="Currency" >Currency</label>
											    </div>
											    <div class="col-1" >
											      
											      
											      <form>
													    <div class="form-group" style="max-width: 80px; border: 1px solid lightgrey; border-radius: 10px">
													      <select class="form-control" id="selectedType" > <strong>
													        <option selected><strong>CUR</strong></option>
													        <option value="pain001">INR</option>
													      	<option value="pain008">USD</option>
															<option value="pacs002">EUR</option>
													 		<option value="camt056">OMR</option></strong>
													      </select>
													    </div>
													  </form>
													  
													 
											    </div>
											    <div class="col-1 text-center">
											      <input type="text" class="form-control" id="currency" >
											    </div>
											    
												 <div class="col-3 text-end">
												    <label  for="valueDate" >Value Date</label>
												    </div>
												  <div class="col-3">
												      <input type="text" class="form-control" id="sendingBank" >
												 </div>
										    </div>
										    
										    
										    <div class="form-group row justify-content-center pad-20">
											  <div class="col-2 text-end">
											    	<button type="button" class="btn btn-secondary btn-sm btn-block">Cancel</button>
											    </div>
											     <div class="col-2">
											       <a href="GeneratedFile.xml" download>
											       		
															<button type="submit" id="generate" class="btn btn-info btn-sm btn-block" >Generate</button>
												    	
												    </a>
												</div>
											</div>
									   </form>
						        	</div>
						        	
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
														
														
														
												