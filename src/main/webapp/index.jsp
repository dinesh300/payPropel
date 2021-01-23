<html>

<head>
<title>Pay Propel</title>

	<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	
	 <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	
	
	<link rel="icon" href="assets/images/PPfavicon.png" type="image/x-icon">

  
	 <style>
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
		    .btn:focus {
			  outline: none;
			  box-shadow: none;
			}
			.hr-cl{width:35%;border: 1px solid #e4e4e4 }
			
			/*==================================================
			 * Effect 8
			 * ===============================================*/
			.effect8
			{
			    position:relative;
			    -webkit-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
			       -moz-box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
			            box-shadow:0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
			}
			.effect8:before, .effect8:after
			{
			  content:"";
			    position:absolute;
			    z-index:-1;
			    -webkit-box-shadow:0 0 20px rgba(0,0,0,0.8);
			    -moz-box-shadow:0 0 20px rgba(0,0,0,0.8);
			    box-shadow:0 0 20px rgba(0,0,0,0.8);
			    top:10px;
			    bottom:10px;
			    left:0;
			    right:0;
			    -moz-border-radius:100px / 10px;
			    border-radius:100px / 10px;
			}
			.effect8:after
			{
			  right:10px;
			    left:auto;
			    -webkit-transform:skew(8deg) rotate(3deg);
			       -moz-transform:skew(8deg) rotate(3deg);
			        -ms-transform:skew(8deg) rotate(3deg);
			         -o-transform:skew(8deg) rotate(3deg);
			            transform:skew(8deg) rotate(3deg);
			}
	  </style>
    
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
	
</head>
  <body >
	 
	  <div class="container-fluid pad-top-50">
	  <div class="row justify-content-center">
	 	<div class="col-xl-3 col-lg-5 col-md-6 col-sm-6 col-xs-7">
 		<div class="card text-center " style="border-radius:15px;" >
		  <div class="card-header" >
		    <img src="<%=request.getContextPath()%>/assets/images/PPlogo.png" alt="Billpay logo"/>
		  </div>
		  <div class="card-body text-left">
		    <h4 class="card-title margin-0 " style="color: #205b8c" > <strong>Login</strong></h4>
		      <small id="emailHelp" class="form-text text-muted p" style="padding-bottom: 15px">Please login with your username and password.</small>
		      
		        <div class="row justify-content-center" style="padding: 0">
			 	 <div class= "<%=alertType%>" id="<%=alertId%>" role="alert" style="<%=cssDesign%>; display:<%=showOrHide%>">
					<p>	<Strong><%=isAuth%></Strong> <%=message%></p>
				</div>
		 	</div>
			
			
		    <form action="<%=request.getContextPath()%>/LoginServlet" method="post">
			     <div class="form-group">
			     
			     
			    <label for="exampleInputEmail1">Username</label>
			    <input type="text" class="form-control" id="username" name="username" placeholder="Username" aria-describedby="inputGroupPrepend2" >
			    
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Password</label>
			    <input type="Password" class="form-control" id="password" name="password" placeholder="Password" aria-describedby="inputGroupPrepend2" >
			  </div>
			  <div class="form-group form-check">
			    <input type="checkbox" class="form-check-input" id="exampleCheck1">
			    <label class="form-check-label" for="exampleCheck1">Remember me</label>
			  </div>
			    <div class="row justify-content-center pad-20 " >
			    	<div class="col-11 ">
			    	
			    	  <button type="submit" class="btn   btn-block" style="background:#205b8c;border-radius:5px; color: white; border: 2px solid #90897f;"><strong>Sign In</strong></button> 
			    	
			    	</div>
			    </div>
		    
		   
		    </form>
		    
		    
		  </div>
		
		
		
			
		    <div class=" card-footer text-muted  " >
	 <!-- Call to action -->
	        <ul class="list-unstyled list-inline text-center py-2 justify-content-center" style="margin-bottom: 0">
	          <li class="list-inline-item">
	            <h5 ><small>Don't have an account?</small></h5>
	          </li>
	          <li class="list-inline-item">
	            <a href="/billpay/components/common/register.jsp" class="btn btn-sm btn-block" style="background: #a29b9b; color: Whitesmoke">Register!</a>
	          </li>
	        </ul>
	        <!-- Call to action -->
	 </div>
			</div>
		 </div>
	</div>
	</div>
	
	<jsp:include page="components/common/footer.jsp"></jsp:include>
	
</body>
</html>
