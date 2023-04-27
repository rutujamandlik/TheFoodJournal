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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>${rest.rest_name}</title>
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


html {
	scroll-behavior: smooth;
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

.header-right p {
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

.nav {
	min-height: 20vh;
	background: #009FFF;
	background: linear-gradient(to right, #ec2F4B, #009FFF);
	color: black;
	clip-path: ellipse(100vw 60vh at 50% 50%);
	display: flex;
	align-items: center;
	justify-content: left;
}

.details {
	text-align: center;
}

.profile-pic {
	height: 13rem;
	width: 13rem;
	object-fit: center;
	border-radius: 50%;
	border: 6px solid #fff;
}

.heading {
	font-weight: 900;
	font-size: 5rem;
	margin: 1rem 0;
}

.openinghours {
	font-family: Lucida Console;
	border-radius: 4px;
	margin: 10px;
	box-shadow: 0 0 10px black;
	padding: 0 10px 0 10px;
	overflow: hidden;
	display: inline-block;
}

.openinghourscontent {
	float: left;
}

.openinghourscontent h2 {
	display: block;
	text-align: center;
	margin-top: .33em;
}

.openinghourscontent button {
	color: white;
	font-family: Courier New;
	font-size: large;
	font-weight: bolder;
	background-color: #4679BD;
	border-radius: 4px;
	width: 100%;
	margin-bottom: 10px;
}

.today {
	color: #8AC007;
}

.opening-hours-table tr td:first-child {
	font-weight: bold;
}

#open-status {
	display: block;
	margin-top: -1em;
	text-align: center;
	border: dotted lightgrey 3px;
}

.openorclosed:after {
	content: " open during these hours:";
}

.open {
	color: green;
}

.open:after {
	content: " Open";
	color: #6C0;
}

.closed:after {
	content: " Closed";
	color: red;
}

.opening-hours-table tr td {
	padding: 5px;
}

.vl {
	border-right: 1px solid grey;
	height: 200px;
}

.descr {
	font-family: "Times New Roman", Times, serif;
}

.descr p {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
}

.review-pic {
	height: 3rem;
	width: 3rem;
	object-fit: center;
	border-radius: 10%;
	border: 2px solid #fff;
}

#writebutton:link, #writebutton:visited {
	background-color: #f44336;
	color: white;
	padding: 14px 25px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

#writebutton:hover, #writebutton:active {
	background-color: red;
}

.rate {
    float: left;
    height: 46px;
    padding: 0 10px;
}
.rate:not(:checked) > input {
    position:absolute;
    top:-9999px;
}
.rate:not(:checked) > label {
    float:right;
    width:1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:30px;
    color:#ccc;
}
.rate:not(:checked) > label:before {
    content: '★ ';
}
.rate > input:checked ~ label {
    color: #ffc700;    
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
    color: #deb217;  
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
    color: #c59b08;
}


#restpics{
	height: 12rem;
	width: 12rem;
}
#abc{
	height: 2rem;
	width: 2rem;
}
</style>
</head>
<body>
	<header>
		<div class="header">
			<a href="/myapp/homepage-customer?username=${username}" class="logo">The
				Food Journal</a>
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
      <li><a class="active" href="/myapp/homepage-customer?username=${username}">Home</a></li>
    </ul>
	</header>
	<nav class="nav">

		<div class="details">
						<img
				src="<%= request.getContextPath() %>/img/${rest.rest_id}/logo.png"
				alt="John Doe" class="profile-pic">
		</div>
		<h1 class="heading">${rest.rest_name}</h1>
	</nav>
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-4">
				<a id="writebutton" href="#review">Write a review</a> <a
					id="writebutton" href="#photos">View Photos</a>
			</div>

		</div>
		<br>

		<div class="row">
			<div class="col-sm">
				<div class="descr">
					<h2>About</h2>
					<p>${rest.description}</p>
					<h2>Category</h2>
					<p>${rest.category}</p>
				</div>
			</div>
			<div class="col-sm">
				<h1>Location & Hours</h1>
				<iframe id="map-iframe" scrolling="no" marginheight="0"
					marginwidth="0"
					src="https://maps.google.com/maps?width=100%25&amp;height=300&amp;hl=en&amp;q=360%20Huntington%20Ave,%20Boston,%20MA%2002115+(Northeastern%20University)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"
					width="100%" height="200" frameborder="0"> </iframe>
			</div>

			<div class="col-sm">
				<br> <br>
				<div class="openinghours">
					<div class="openinghourscontent section">
						<div class="header">
							<h2>Opening hours</h2>
							<span id="open-status"><small class="openorclosed">We
									are Open</small></span>

						</div>
						<table class="opening-hours-table">
							<tr id="Monday" itemprop="openingHours"
								title="Open Monday at 9am to 6pm">
								<td>Monday</td>
								<td class="opens">09:00</td>
								<td>-</td>
								<td class="closes">18:00</td>
							</tr>
							<tr id="Tuesday" itemprop="openingHours"
								title="Open Tuesday at 9am to 6pm">
								<td>Tuesday</td>
								<td class="opens">09:00</td>
								<td>-</td>
								<td class="closes">18:00</td>
							</tr>
							<tr id="Wednesday" itemprop="openingHours"
								title="Open Wednesday at 9am to 6pm">
								<td>Wednesday</td>
								<td class="opens">09:00</td>
								<td>-</td>
								<td class="closes">18:00</td>
							</tr>
							<tr id="Thursday" itemprop="openingHours"
								title="Open Thursday at 9am to 8pm">
								<td>Thursday</td>
								<td class="opens">09:00</td>
								<td>-</td>
								<td class="closes">20:00</td>
							</tr>
							<tr id="Friday" itemprop="openingHours"
								title="Open Friday at 9am to 6pm">
								<td>Friday</td>
								<td class="opens">09:00</td>
								<td>-</td>
								<td class="closes">18:00</td>
							</tr>
							<tr id="Saturday" itemprop="openingHours"
								title="Open Saturday at 10am to 6pm">
								<td>Saturday</td>
								<td class="opens">10:00</td>
								<td>-</td>
								<td class="closes">18:00</td>
							</tr>
							<tr id="Sunday" itemprop="openingHours"
								title="Open Sunday at 11am to 4pm">
								<td>Sunday</td>
								<td class="opens">11:00</td>
								<td>-</td>
								<td class="closes">16:00</td>
							</tr>
						</table>
						<button style="cursor: pointer;" title="Make an Apointment Online"
							data-appointlet="u387">Make an Reservation</button>
<!-- 						<script>
							(function(e, t, n, r) {
								if (e)
									return;
								t._appt = true;
								var i = n.createElement(r), s = n
										.getElementsByTagName(r)[0];
								i.async = true;
								i.src = '//dje0x8zlxc38k.cloudfront.net/loaders/s-min.js';
								s.parentNode.insertBefore(i, s)
							})(window._appt, window, document, "script")
						</script> -->
					</div>

				</div>
			</div>
		</div>
		<hr>

		<div id="review">
			<h3>Comments:</h3>

			<div class="row">





				<c:forEach var="reviews" items="${reviews}">
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
			<hr>
			<form
				action="/myapp/submitReview?rest_id=${rest.rest_id}&username=${username}"
				method="POST">
				<div class="row">
					<div class="col-8">
						<h3>Write your review:</h3>
						<br>
						<textarea id="review-text" name="review-text" rows="4" cols="50"></textarea>
					</div>

					<br>
					<div class="col-4">
						<h3>Ratings</h3>
						<br>

						<div class="rate">
							<input type="radio" id="star5" name="rating1" value="5" /> <label
								for="star5" title="text">5 stars</label> <input type="radio"
								id="star4" name="rating1" value="4" /> <label for="star4"
								title="text">4 stars</label> <input type="radio" id="star3"
								name="rating1" value="3" /> <label for="star3" title="text">3
								stars</label> <input type="radio" id="star2" name="rating1" value="2" />
							<label for="star2" title="text">2 stars</label> <input
								type="radio" id="star1" name="rating1" value="1" /> <label
								for="star1" title="text">1 star</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-4"></div>
					<div class="col-4"></div>
					<div class="col-4">
						<input type="submit" value="Submit Review">
					</div>
				</div>
			</form>

		</div>
		<hr>
		<div id="photos">
			<h3>Photos</h3>
			<form action="/myapp/restaurants/save?rest_id=${rest.rest_id}&username=${username}" method="post"
				enctype="multipart/form-data">



				<label>Add a Photo : </label> <input type="file" name="image"
					accept="image/png, image/jpeg, image/jpg" /> <input type="submit"
					name="Upload">


			</form>
			
			<div class="row row-cols-2 row-cols-md-3 g-2">
			<c:forEach var="pics" items="${restpics}">
			<div class="col">
			<img id="restpics" src="<%= request.getContextPath() %>/img/${rest.rest_id}/${pics.filepath}">
			</div>
			</c:forEach>
			
			</div>

		</div>
	</div>
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
	<script>
		var currentDate = new Date();
		var weekday = [];
		weekday[0] = "Sunday";
		weekday[1] = "Monday";
		weekday[2] = "Tuesday";
		weekday[3] = "Wednesday";
		weekday[4] = "Thursday";
		weekday[5] = "Friday";
		weekday[6] = "Saturday";

		var currentDay = weekday[currentDate.getDay()];

		var currentTimeHours = currentDate.getHours();
		currentTimeHours = currentTimeHours < 10 ? "0" + currentTimeHours
				: currentTimeHours;
		var currentTimeMinutes = currentDate.getMinutes();
		var timeNow = currentTimeHours + "" + currentTimeMinutes;

		var currentDayID = "#" + currentDay; //gets todays weekday and turns it into id
		$(currentDayID).toggleClass("today"); //this works at hightlighting today

		var openTimeSplit = $(currentDayID).children('.opens').text()
				.split(":");

		var openTimeHours = openTimeSplit[0];
		openTimeHours = openTimeHours < 10 ? "0" + openTimeHours
				: openTimeHours;

		var openTimeMinutes = openTimeSplit[1];
		var openTimex = openTimeSplit[0] + openTimeSplit[1];

		var closeTimeSplit = $(currentDayID).children('.closes').text().split(
				":");

		var closeTimeHours = closeTimeSplit[0];
		closeTimeHours = closeTimeHours < 10 ? "0" + closeTimeHours
				: closeTimeHours;

		var closeTimeMinutes = closeTimeSplit[1];
		var closeTimex = closeTimeSplit[0] + closeTimeSplit[1];

		if (timeNow >= openTimex && timeNow <= closeTimex) {
			$(".openorclosed").toggleClass("open");
		} else {
			$(".openorclosed").toggleClass("closed");
		}
	</script>
</body>
</html>