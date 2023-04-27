<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>

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
	
<title>${restdetails.rest_name}</title>
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
.rest-details label{
	font-family: Tahoma, "Trebuchet MS", sans-serif;
	font-weight: bold;
	
}
#edit-button, #edit-button{
background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;

}
#edit-button, #edit-button {
  background-color: #0398fc;
}

.header-right p {
	font-size: 25px;
	font-weight: bold;
	font-family: Tahoma, "Trebuchet MS", sans-serif;
}
#restpics {
	height: 12rem;
	width: 12rem;
}

.review-pic {
	height: 3rem;
	width: 3rem;
	object-fit: center;
	border-radius: 10%;
	border: 2px solid #fff;
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
								<p>Welcome ${restdetails.username}</p>
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
				<h3>${restdetails.rest_name} Details</h3>
				</div>
				<div class="col-4">
					<a id="edit-button" href="/myapp/update-restaurant?rest_id=${restdetails.rest_id}">Edit Details</a>
				</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-4">
						<label>Restaurant Name</label>
						<p>${restdetails.rest_name}</p>
					</div>
					<div class="col-4">
						<label>Description</label>
						<p>${restdetails.description}</p>
					</div>
					<div class="col-4">
						<label>Category</label><br>
						<p>${restdetails.category}</p>
					</div>
				</div>
				<div class="row">
				<div class="col-4">
					<label>Address</label>
					<p>${restdetails.address}</p>
				</div>
				<div class="col-4">
					<label>City</label>
					<p>${restdetails.city}</p>
				</div>
				<div class="col-4">
					<label>Contact</label>
					<p>${restdetails.contact_no}</p>
				</div>
				</div>
				
				<div class="row">
				<div class="col-4">
					<label>Email</label>
					<p>${restdetails.email}</p>
				</div>
				<div class="col-4">
					<label>Owner</label>
					<p>${restdetails.owner_name}</p>
				</div>
				<div class="col-4">
					<label>Status</label>
					<p>${restdetails.status}</p>
				</div>
				</div>
					<div class="row">
						<div class="col-4">
						<label>Username</label><br> 
						<p>${restdetails.username}</p>
						</div>
					</div>
				</div>
			<hr>
			
			<div id="review">
			<h3>Comments:</h3>
			<div class="row">

				<c:forEach var="reviews" items="${restreview}">
					<div class="col-2">
						<img class="review-pic" alt="User"
							src="https://media.istockphoto.com/vectors/user-avatar-profile-icon-black-vector-illustration-vector-id1209654046?s=612x612">

						<p>${reviews.username}</p>
					</div>
					<div class="col-10">
						<p>${reviews.review}</p>

						<p>Ratings: ${reviews.ratings}/5</p>
					</div>
				</c:forEach>
			</div>
			</div>
			<hr>
				
			<div id="photos">
				<h3>Photos</h3>
				<form action="/myapp/restaurants-owner/save?rest_id=${restdetails.rest_id}&username=${restdetails.username}" method="post" 
				enctype="multipart/form-data">



				<label>Photos: </label> <input type="file" name="image"
					accept="image/png, image/jpeg, image/jpg" /> <input type="submit"
					name="Upload">


			</form>
			
			<div class="row row-cols-2 row-cols-md-3 g-2">
			<c:forEach var="pics" items="${restpics}">
			<div class="col">
				<img id="restpics" src="<%= request.getContextPath() %>/img/${restdetails.rest_id}/${pics.filepath}">
			</div>
			</c:forEach>
			
			</div>

		</div>
			</div>
			

	</section>
	<br>
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