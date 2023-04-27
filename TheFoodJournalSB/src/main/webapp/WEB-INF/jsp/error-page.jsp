<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
  <meta charset="UTF-8">
<title>The Food Journal</title>
<style>
body {
        font-family: 'Signika', sans-serif;
        background-color:#f8edeb; 
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
	background-color: #4d0099;
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
</head>
<body>

	<header>
		<div class="header">
			<a href="/myapp/homepage" class="logo">The
				Food Journal</a>
		</div>
	 <ul>
      <li><a class="active" href="/myapp/homepage">Go Back To Homepage</a></li>
    </ul>
</header>

<section>
<div class="container">
	<div class="row">
		<h1 style="color:red;">${errorMsg}</h1>
	</div>
</div>


</section>




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