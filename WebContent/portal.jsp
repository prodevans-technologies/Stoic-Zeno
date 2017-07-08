<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%	if ((session.getAttribute("user")) != null) {
			response.sendRedirect("Dashboard.jsp");
		}

%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Stoic Zeno</title>

<!-- Bootstrap Core CSS -->
<link href="scripts/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link href="scripts/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link href="scripts/vendor/magnific-popup/magnific-popup.css"
	rel="stylesheet">

<!-- Theme CSS -->
<link href="scripts/css/creative.min.css" rel="stylesheet">

</head>
<body>
<body id="page-top">

	<div class="row ">
		<div class="col-sm-9">
			<a href="index.html"><img hspace="20" height="85px" width="70px"
				src="scripts/img/stoic_zeno.png"></a>
		</div>
		<div class="col-sm-3">
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-left">
					<li><a class="page-scroll" href="#paybill">Pay bill</a></li>
					<li><a class="page-scroll" href="#">|</a></li>
					<li><a class="page-scroll" href="#Support">Support</a></li>

				</ul>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-9">
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-left">
					<li><a class="page-scroll" href="index.html">Home</a></li>
					<li><a class="page-scroll" href="#services">Services</a></li>
					<li><a class="page-scroll" href="#portfolio">Portfolio</a></li>
					<li><a class="page-scroll" href="#contact">Contact</a></li>
				</ul>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-left">
					<li><a class="page-scroll" href="#register">Register</a></li>
					<li><a class="page-scroll" href="#">|</a></li>
					<li><a class="page-scroll" href="#login">Login</a></li>

				</ul>
			</div>
		</div>

	</div>


	<!--<div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->

	<!-- Collect the nav links, forms, and other content for toggling -->



	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span> Menu <i
				class="fa fa-bars"></i>
		</button>
		<section class="no-padding" id="portfolio">
			<!--<div class="container-fluid">
					<div class="row no-gutter popup-gallery">
						<div class="col-lg-4 col-sm-6">
							<a href="scripts/img/portfolio/fullsize/1.jpg" class="portfolio-box">
								<img src="img/portfolio/thumbnails/1.jpg" class="img-responsive" alt="">
							</a>
						</div>  
					</div>
				</div>-->
			<!-- Collect the nav links, forms, and other content for toggling -->



			<!-- /.navbar-collapse -->

		</section>

	</div>


	<!-- /.navbar-collapse -->
	<!--</div>
         /.container-fluid -->
	</nav>


	<section class="bg-primary" id="login">
		<div class="container">
			<div class="row">
				<div class="col-lg-4  text-left">
					<h1 class="section-heading">
						Sign into the<br> cognitive <br>network
					</h1>
					<!--<hr class="light">-->

				</div>
				<div style="padding: 10px"
					class="col-lg-4 col-lg-offset-2 text-justify">
					
					<% 	if (request.getParameter("error") != null) { %>
					<div class="alert alert-danger alert-dismissible" role="alert" style="margin-top:30px">
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					  <strong>Login Fail!!!</strong> Please check username and password...
					</div>	
					<%	}  %>
					
					<% 	if (request.getParameter("logout") != null) { %>
					<div class="alert alert-info alert-dismissible" role="alert" style="margin-top:30px">
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					  <strong>Successfully logout...</strong> Please login again...
					</div>	
					<%	}  %>
					<div class="col-md-12 col-xs-12 login_control"
						style="background-color: white; padding: 10px">
						<form action="LoginController" method="POST">
							<div class="control" style="padding: 20px">

								<input type="text" class="form-control" name="username"
									placeholder="My Stoic ID" />
								<div align="right" style="padding: 10px">
									<a href="#">I forgot my Stoic ID
								</div>
							</div>

							<div class="control" style="padding: 20px">
								<input type="password" class="form-control" name="password"
									placeholder="My Stoic Password" />
								<div align="right" style="padding: 10px">
									<a href="#">I forgot my Stoic Password
								</div>
							</div>

							<div class="control" style="padding: 10px">
								<div class="col-md-6 col-xs-6">
									<button type="submit" style="width: 150px; padding: 10px">Login</button>
								</div>
								<div class="col-md-6 col-xs-6">
									&nbspRemember me <input type="checkbox">
								</div>
							</div>
						</form>
						
						
					</div>
					
				
			
				</div>
			</div>
		</div>
		<div style="padding: 10px" align="center">
			<a class="page-scroll" href="#services"><img hspace="20"
				height="35px" width="35px" src="scripts/img/downarrow.png"></a><br>
		</div>
		<div style="padding: 10px" class="col-md-12 col-xs-12">
			<a href="#"><font color="white"><h3>
						Stoic Community | Service plans | Moving ?
						</h4></font></a>
		</div>
	</section>
	<div style="background-color: #F2F2F2">
		<section id="services">

			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-left">
						<h1 class="section-heading">You have questions. We have
							answers.</h1>
						<hr align="left" class="primary">
						<div>
							<h4>
								<a href="#">. Know your CPE</a>
								</h3>
								<h4>
								<a href="#">. Know your bill</a>
								</h3>
								<h4>
								<a href="#">. Get the best out of your data plan</a>
								</h3>
								<h4>
								<a href="#">. More solutions..</a>
								</h3>
						</div>
					</div>
				</div>
			</div>


		</section>
	</div>
	<section id="services">

		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 text-center">
					<div class="service-box">
						<div id="map"
							style="width: 500px; height: 300px; background: yellow"></div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-wifi text-primary sr-icons"></i>
						<h3 align="left">
							Free Stoic Wifi <br> Hotspots<br> around Bengaluru
						</h3>
						<h3 align="left">Find Hotspots</h3>
						<input type="text" class="form-control"
							placeholder="Search Hotspots..." />
					</div>
				</div>

			</div>
		</div>
	</section>


	<section class="no-padding" id="portfolio">
		<div class="container-fluid">
			<div class="row no-gutter popup-gallery">
				<div class="container-fluid">
					<div class="row content">

						<div class="col-lg-12">
							<div class="col-lg-8">
								<h2>Trending</h2>
								<div class="row">
									<div class="col-lg-6">
										<div class="well">
											<a href="scripts/img/portfolio/fullsize/1.jpg"
												class="portfolio-box"> <img
												src="scripts/img/portfolio/thumbnails/1.jpg"
												class="img-responsive" alt="">
												<div class="portfolio-box-caption">
													<div class="portfolio-box-caption-content">
														<div class="project-category text-faded">Category</div>
														<div class="project-name">Project Name</div>
													</div>
												</div>
											</a>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="well">
											<a href="scripts/img/portfolio/fullsize/2.jpg"
												class="portfolio-box"> <img
												src="scripts/img/portfolio/thumbnails/2.jpg"
												class="img-responsive" alt="">
												<div class="portfolio-box-caption">
													<div class="portfolio-box-caption-content">
														<div class="project-category text-faded">Category</div>
														<div class="project-name">Project Name</div>
													</div>
												</div>
											</a>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="well">
											<a href="scripts/img/portfolio/fullsize/3.jpg"
												class="portfolio-box"> <img
												src="scripts/img/portfolio/thumbnails/3.jpg"
												class="img-responsive" alt="">
												<div class="portfolio-box-caption">
													<div class="portfolio-box-caption-content">
														<div class="project-category text-faded">Category</div>
														<div class="project-name">Project Name</div>
													</div>
												</div>
											</a>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="well">
											<a href="scripts/img/portfolio/fullsize/4.jpg"
												class="portfolio-box"> <img
												src="scripts/img/portfolio/thumbnails/4.jpg"
												class="img-responsive" alt="">
												<div class="portfolio-box-caption">
													<div class="portfolio-box-caption-content">
														<div class="project-category text-faded">Category</div>
														<div class="project-name">Project Name</div>
													</div>
												</div>
											</a>
										</div>
									</div>
								</div>
							</div>
							<h2>Local weather</h2>
							<div class="col-lg-4"
								style="background-color: #F2F2F2; padding: 10px">
								<div class="portfolio-box-caption-content">
									<div class="project-category text-faded">Local weather</div>
									<i class="fa fa-4x fa-cloud text-primary sr-icons"></i>
									<div class="project-name">Project Name</div>
								</div>
							</div>
						</div>
					</div>
				</div>





			</div>
	</section>



	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">Let's Get In Touch!</h2>
					<hr class="primary">
					<p>Ready to start your next project with us? That's great! Give
						us a call or send us an email and we will get back to you as soon
						as possible!</p>
				</div>
				<div class="col-lg-4 col-lg-offset-2 text-center">
					<i class="fa fa-phone fa-3x sr-contact"></i>
					<p>080 6450 3365</p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x sr-contact"></i>
					<p>
						<a href="mailto:stoiczeno@prodevans.com">feedback@startbootstrap.com</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- jQuery -->
	<script src="scripts/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="scripts/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="scripts/vendor/scrollreveal/scrollreveal.min.js"></script>
	<script
		src="scripts/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Theme JavaScript -->
	<script src="scripts/js/creative.min.js"></script>
	<script>
		function myMap() {
			var mapOptions = {
				center : new google.maps.LatLng(51.5, -0.12),
				zoom : 10,
				mapTypeId : google.maps.MapTypeId.HYBRID
			}
			var map = new google.maps.Map(document.getElementById("map"),
					mapOptions);
		}
	</script>

	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
</body>
</html>