<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<title>Restaurant Application Form</title>
    <style>
       body {
        font-family: 'Signika', sans-serif;
     }
     .bg-grey {
        background: #292929;
     }
     .logo-footer {
        margin-bottom: 40px;
     }
     footer {
            color: grey;
     }
     footer p, a {
    font-size: 12px;
    font-family: 'Roboto', sans-serif;
}
footer h6 {
    font-family: 'Playfair Display', serif;
    margin-bottom: 40px;
    position: relative;
}
footer h6:after {
    position: absolute;
    content: "";
    background: grey;
    width: 12%;
    height: 1px;
    left: 0;
    bottom: -20px;
}
     .btn-footer {
                 color: grey;
              
                text-decoration: none;
                border: 1px solid;
                border-radius: 43px;
                font-size: 13px;
                padding: 7px 30px;
                line-height: 47px;
     }
     .btn-footer:hover {
                
                text-decoration: none;
               
     }
    .form-footer input[type="text"] {
        border: none;
    border-radius: 16px 0 0 16px;
    outline: none;
    padding-left: 10px;
    
}
::placeholder {
    font-size: 10px;
    padding-left: 10px;
    font-style: italic;
}
 .form-footer input[type="button"] {
    border: none;
    background:#232323;
        margin-left: -5px;
    color: #fff;
    outline: none;
    border-radius: 0 16px 16px 0;
    padding: 2px 12px;
}
     .social .fa {
    color: grey;
    font-size: 22px;
    padding: 10px 15px;
    background: #3c3c3c;
}
     footer ul li {
    list-style: none;
    display: block;
}
  footer ul  {
   padding-left: 0;
}
footer ul  li a{
  text-decoration: none;
  color: grey;
  text-decoration:none;
}
a:hover {
    text-decoration: none;
    color: #f5f5f5 !important;
    
}
.logo-part {
    border-right: 1px solid grey;
    height: 100%;
    }
  
 
    
    
      html, body {
      min-height: 100%;
      }
      body, div, form, input, textarea, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 32px;
      color: #fff;
      z-index: 2;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 10px 0 #cc0052; 
      }
      .banner {
      position: relative;
      height: 210px;
      background-image: url("https://image.shutterstock.com/image-photo/collage-background-vegetables-fruits-spices-600w-1231447141.jpg");      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.4); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, input:hover::placeholder {
      color: #cc0052;
      }
      .item input:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 6px 0 #cc0052;
      color: #cc0052;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #cc0052;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background: #ff0066;
      }
      @media (min-width: 568px) {
      .name-item, .contact-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .contact-item .item {
      width: calc(50% - 8px);
      }
      .name-item input {
      width: calc(50% - 20px);
      }
      .contact-item input {
      width: calc(100% - 12px);
      }
      }
      
/*Header css*/
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #ffbd00;
}

li {
	float: left;
	border-right: 1px solid #9e0059;
}

li:last-child {
	border-right: none;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not (.active ) {
	background-color: #111;
}

.active {
	background-color: #9e0059;
}

* {
	box-sizing: border-box;
} 

body {
	margin: 0;
	font-family: Tahoma, "Trebuchet MS", sans-serif;
}

.header {
	overflow: hidden;
	background-color: #ff0054;
	padding: 20px 10px;
}

.header a {
	float: left;
	color: black;
	text-align: center;
	padding: 12px;
	text-decoration: none;
	font-size: 18px;
	line-height: 25px;
	border-radius: 4px;
	font-family: Tahoma, "Trebuchet MS", sans-serif;
}

.header a.logo {
	font-size: 25px;
	font-weight: bold;
}

.header a:hover {
	background-color: #ffbd00;
	color: black;
}

.header a.active {
	background-color: #ffbd00;
	color: black;
}

.header-right {
	float: right;
}

@media screen and (max-width: 500px) {
	.header a {
		float: none;
		display: block;
		text-align: left;
	}
	.header-right {
		float: none;
	}
}
    </style>
    
    <script type="text/javascript">
function validateForm() {
	 alert("Hello");
	//Restaurant Name Validation
	  let rest_name = document.forms["myForm"]["rest_name"].value;
	  if (rest_name == "") {
	    alert("Restaurant Name cannot be empty");
	    return false;
	  }
	//EmailId Validation
	  var mailformat = /^w+([.-]?w+)*@w+([.-]?w+)*(.w{2,3})+$/;
	  let email = document.forms["myForm"]["email"].value;
	  if(!email.value.match(mailformat))
	  {
	  	alert("You have entered a Invalid email address!");   
	  	return false;
	  }
	  
	  //Contact_No validations
	  let contact_no = document.forms["myForm"]["contact_no"].value;
	  var phonenoFormat = /^\d{10}$/;
	  if((!inputtxt.value.match(phonenoFormat)){
		  alert("Phone Number must have 10 Digit only");  
		      return false;
		}
	  
	  let category = document.forms["myForm"]["category"].value;
	  if (category == "") {
	    alert("Category cannot be empty");
	    return false;
	  }
	  
	  let description = document.forms["myForm"]["description"].value;
	  if (description == "") {
	    alert("Description cannot be empty");
	    return false;
	  }
	  
	  let address = document.forms["myForm"]["address"].value;
	  if (address == "") {
	    alert("Address cannot be empty");
	    return false;
	  }
	  
	  let city = document.forms["myForm"]["city"].value;
	  if (rest_name == "") {
	    alert("City Name cannot be empty");
	    return false;
	  }
	  
	  let owner_name = document.forms["myForm"]["owner_name"].value;
	  if (rest_name == "") {
	    alert("Owner Name cannot be empty");
	    return false;
	  }
	  
	  let username = document.forms["myForm"]["username"].value;
	  if (username == "") {
	    alert("Username cannot be empty");
	    return false;
	  }
	}
</script>
</head>
<body>

	<header>
		<div class="header">
			<a href="/myapp/homepage" class="logo">The Food Journal</a>
			
		</div>
		
	<ul>
      <li><a class="active" href="/myapp/homepage">Home</a></li>
    </ul>
	</header>


    <div class="testbox">
      <form name="myForm" action="/myapp/addRestAppDetails" onsubmit = "return validateForm()" method = "POST">
        <div class="banner">
          <h1>Restaurant Application Form</h1>
        </div>
        <div class="item">
          <p>Restaurant name:</p>
          <div class="name-item">
            <input type="text" id="rest_name" name="rest_name" required> 
          </div>
        </div>
        <div class="contact-item">
          <div class="item">
            <p>Email</p>
            <input type="text" id="email" name="email" required>
          </div>
          <div class="item">
            <p>Contact No:</p>
            <input type="text" id="contact_no" name="contact_no" required>
          </div>
        </div>
        <div class="item">
          <p>Category</p>
          <input type="text" id="category" name="category" required>
        </div>
        <div class="item">
          <p>Restaurant Description</p>
          <input type="text" id="description" name="description" required>
        </div>
        <div class="item">
          <p>Address :</p>
          <input type="text" id="address" name="address" required>
        </div>
        <div class="item">
          <p>City</p>
           <input type="text" id="city" name="city" required>
        </div>
        <div class="item">
          <p> Owner Name:</p>
          <input type="text" value="${prevFullname}" id="owner_name" name="owner_name" required>
        </div>
        <div class="item">
          <p>Username</p>
          <input type="text" value="${prevUsername}" id="username" name="username"required>
        </div>
        <div class="btn-block">
          <input type="submit" value="Submit">
        </div>
      </form>
    </div>

<footer class="container-fluid bg-grey py-5">
<div class="container">
   <div class="row">
      <div class="col-md-6">
         <div class="row">
            <div class="col-md-6 ">
               <div class="logo-part">
                  <h2>Rutuja Mandlik</h2>
                  <p>Northeastern Univeristy, Boston.</p>
               </div>
            </div>
            <div class="col-md-6 px-4">
               <h6> About Company</h6>
               <p>The Foodcrastinator</p>
               <a href="#" class="btn-footer"> More Info </a><br>
               <a href="#" class="btn-footer"> Contact Us</a>
            </div>
         </div>
      </div>
      <div class="col-md-6">
         <div class="row">
            <div class="col-md-6 px-4">
               
            </div>
            <div class="col-md-6 ">
               <h6> Newsletter</h6>
               <div class="social">
                  <a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                  <a href="https://www.instagram.com/thefoodcrastinator/?hl=en"><i class="fa fa-instagram" aria-hidden="true"></i></a>
               </div>
               <form class="form-footer my-3">
                  <input type="text"  placeholder="search here...." name="search">
                  <input type="button" value="Go" >
               </form>
              
            </div>
         </div>
      </div>
   </div>
</div>
</footer>
</body>
</html>