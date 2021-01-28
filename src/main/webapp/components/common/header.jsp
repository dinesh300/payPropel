<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
    <title>Billpay RXP</title>
    <link rel="icon" href="assets/image/bp-logo.png" type="image/x-icon">
    
    <style>
    .pad-top-50{padding-top:50px }
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
    </style>
    
     <%
     session=request.getSession(false);
     String username=(String)session.getAttribute("username");%>
</head>
<body>

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
	   
	   
</body>
</html>