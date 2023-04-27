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
<title>The FoodJournal-Update Restaurant</title>
<style>
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
</style>
</head>
<body>
	<header>
		<div class="header">
			<a href="#default" class="logo">The Food Journal</a>
			<div class="header-right">
				<div class="header-right">
					<div class="container">
						<div class="row">
							<div class="col-sm">
								<p>Welcome ${username}</p>
							</div>
							<div class="col-sm">
								<button id="login-button"
									onclick="location.href ='/myapp/homepage'" style="width: auto;">Logout</button>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
			<ul>
      <li><a class="active" href="/myapp/homepage">Home</a></li>
    </ul>
	</header>

	<section>
		<br>
		<div class="container">
			<div class="rest-details">
				<div class="row">
					<div class="col-8">
						<h3>Edit ${rest.rest_name} Details</h3>
					</div>
				</div>
				<hr>
				<form action="/myapp/save-updated-restaurant?rest_id=${rest.rest_id}" method="post">
					<div class="row">
						<div class="col-4">
							<label>Restaurant Name</label><br> <input type="text"
								id="rest_name" name="rest_name" value="${rest.rest_name}">
						</div>
						<div class="col-4">
							<label>Description</label><br> <input type="text-area"
								id="description" name="description" value="${rest.description}">
						</div>
						<div class="col-4">
							<label>Category</label><br> <input type="text" id="category"
								name="category" value="${rest.category}">
						</div>
					</div>
					<div class="row">
						<div class="col-4">
							<label>Address</label><br> <input type="text" id="address"
								name="address" value="${rest.address}">
						</div>
						<div class="col-4">
							<label>City</label><br> <input type="text" id="city"
								name="city" value="${rest.city}">
						</div>
						<div class="col-4">
							<label>Contact</label><br> <input type="text"
								id="contact_no" name="contact_no" value="${rest.contact_no}">
						</div>
					</div>

					<div class="row">
						<div class="col-4">
							<label>Email</label><br> <input type="text" id="email"
								name="email" value="${rest.email}">
						</div>
						<div class="col-4">
							<label>Owner</label><br> <input type="text" id="owner_name"
								name="owner_name" value="${rest.owner_name}">
						</div>
						<div class="col-4">
							<label>Status</label><br>
							<input type="text" id=status
								name="status" value="${rest.status}" readonly="readonly">
						</div>
					</div>
					<div class="row">
						<div class="col-4">
						<label>Username</label><br> 
						<input type="text" id="username"
								name="username" value="${rest.username}" readonly="readonly">
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" value="Submit">
						</div>
						<div class="col-4"></div>
					</div>
					
				</form>
			</div>
		</div>
	</section>
	<hr>
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