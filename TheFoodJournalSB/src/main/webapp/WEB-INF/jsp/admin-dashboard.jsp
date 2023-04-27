
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
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
  
 


#restdetails {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#restdetails td, #restdetails th {
  border: 1px solid #FDD7AA;
  padding: 8px;
}

#restdetails tr:nth-child(even){background-color: #F6FFA4;}

#restdetails tr:hover {background-color: #ddd;}

#restdetails th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}

body {
	background-image: url("https://images.pexels.com/photos/349610/pexels-photo-349610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2");      background-size: cover;
      
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
	font-size: 45px;
	font-weight: bold;
}

.header a:hover {
	background-color: #ffbd00;
	color: black;
}

.header a.active {
	background-color: #ffbd00;
	color: white;
}

.header-right {
	float: right;
}

.header-right p{
	font-size: 25px;
	font-weight: bold;
	font-family: Tahoma, "Trebuchet MS", sans-serif;
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
      <a href="#default" class="logo">The Food Journal</a>
      <div class="header-right">
      	<div class="container">
      	<div class="row">
      		<div class="col-sm">
		<p>Welcome Admin</p>
		</div>
		<div class="col-sm">
			 <button id="login-button" onclick="location.href ='/myapp/homepage'" style="width:auto;">Logout</button>
		</div>
		</div>
		</div>
      </div>
    </div>
  </header>

	<div class="container">
		<div class="row">
		<div class="col-4">
			
		</div>
		<div class="col-6">
			<h2><b>Restaurant Approval Requests</b></h2>
		</div>
		<div class="col-2">
			
		</div>
		</div>
	</div>

	<table id="restdetails">
		<thead>
			<tr>
				<th>Restaurant Id</th>
				<th>Restaurant Name</th>
				<th>Category</th>
				<th>City</th>
				<th>Owner Name</th>
				<th>Status</th>
				<th></th>
				<th>Action</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="rest" items="${rest}">
				<tr>
					<td>${rest.rest_id}</td>
					<td>${rest.rest_name}</td>
					<td>${rest.category}</td>
					<td>${rest.city}</td>
					<td>${rest.owner_name}</td>
					<td>${rest.status}</td>
					<td><a href="/myapp/delete-restaurant?rest_id=${rest.rest_id}"  rel="nofollow">Delete</a></td>
					<td><a href="/myapp/reject-restaurant?rest_id=${rest.rest_id}"  rel="nofollow">Reject</a></td>
					<td><a href="/myapp/approve-restaurant?rest_id=${rest.rest_id}"  rel="nofollow">Approve</a></td>

				</tr>
			</c:forEach>
		</tbody>

	</table>
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