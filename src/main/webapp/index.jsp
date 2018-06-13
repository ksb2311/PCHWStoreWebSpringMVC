<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<meta http-equiv="Content-Type" content="text/html">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="pagestyle.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}
</style>
<head>
<title>PCHWStore</title>
</head>
<body>
	<!-- sidebar on click -->
	<nav
		class="w3-sidebar w3-bar-block w3-white w3-card w3-animate-left w3-xxlarge"
		style="display: none; z-index: 2" id="mySidebar">
		<a href="javascript:void(0)" onclick="w3_close()"
			class="w3-bar-item w3-button w3-display-topright w3-text-teal">Close
			<i class="fa fa-remove"></i>
		</a> <a href="#" class="w3-bar-item w3-button">Link 1</a> <a href="#"
			class="w3-bar-item w3-button">Link 2</a> <a href="#"
			class="w3-bar-item w3-button">Link 3</a> <a href="#"
			class="w3-bar-item w3-button">Link 4</a> <a href="#"
			class="w3-bar-item w3-button">Link 5</a>
	</nav>


	<div class="w3-top">
		<div class="w3-bar w3-theme-d2 w3-left-align">
			<a
				class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-hover-white w3-theme-d2"
				href="javascript:void(0);" onclick="openNav()"><i
				class="fa fa-bars"></i></a> <a href="#"
				class="w3-bar-item w3-button w3-teal"><i
				class="fa fa-home w3-margin-right"></i>PCHWStore</a>
			<div class="w3-dropdown-hover w3-hide-small">
				<button class="w3-button" title="Notifications">
					Products <i class="fa fa-caret-down"></i>
				</button>
				<div class="w3-dropdown-content w3-card-4 w3-bar-block">
					<a href="#" class="w3-bar-item w3-button">Processor</a> <a href="#"
						class="w3-bar-item w3-button">Motherboard</a> <a href="#"
						class="w3-bar-item w3-button">Graphic Card</a> <a href="#"
						class="w3-bar-item w3-button">RAM</a> <a href="#"
						class="w3-bar-item w3-button">Gaming PC</a>
				</div>
			</div>
			<div class="w3-dropdown-hover w3-hide-small">
				<button class="w3-button" title="Notifications">
					Peripherals <i class="fa fa-caret-down"></i>
				</button>
				<div class="w3-dropdown-content w3-card-4 w3-bar-block">
					<a href="#" class="w3-bar-item w3-button">Keyboard Mouse combo</a>
					<a href="#" class="w3-bar-item w3-button">Keyboard</a> <a href="#"
						class="w3-bar-item w3-button">Mouse</a> <a href="#"
						class="w3-bar-item w3-button">Headset/Headphone</a>
				</div>
			</div>
			<a href="#pricing"
				class="w3-bar-item w3-button w3-hide-small w3-hover-white">Build
				Custom PC</a> <a href="#contact"
				class="w3-bar-item w3-button w3-hide-small w3-hover-white">Contact</a>

			<button
				onclick="document.getElementById('SearchModel').style.display='block'"
				class="w3-button w3-black w3-right">
				<i class="fa fa-search"></i>
			</button>
		</div>

		<!-- second nav bar -->
		<ul>
			<li><a href="#home">Home</a></li>
			<li><a href="#news">News</a></li>
			<li><a href="#contact">Contact</a></li>
			<li style="float: right"><button
					onclick="document.getElementById('LoginModel').style.display='block'"
					class="w3-button w3-black">Login</button></li>
		</ul>

		<!-- Navbar on small screens -->
		<div id="navDemo"
			class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
			<a href="#team" class="w3-bar-item w3-button">Team</a> <a
				href="#work" class="w3-bar-item w3-button">Work</a> <a
				href="#pricing" class="w3-bar-item w3-button">Price</a> <a
				href="#contact" class="w3-bar-item w3-button">Contact</a> <a
				href="#" class="w3-bar-item w3-button">Search</a>
		</div>
	</div>

	<!-- Search Modal -->
	<div id="SearchModel" class="w3-modal">
		<div class="w3-modal-content w3-card-4 w3-animate-top">
			<header class="w3-container w3-teal w3-display-container">
				<span
					onclick="document.getElementById('SearchModel').style.display='none'"
					class="w3-button w3-teal w3-display-topright"><i
					class="fa fa-remove"></i></span>
				<h4 class="w3-padding-small w3-center">Search Products</h4>
			</header>
			<div class="w3-container">
				<br> <input type="text" class="w3-input w3-padding-small"
					placeholder="Search..." name="prodSearch"> <br>
			</div>
			<footer class="w3-container w3-teal w3-padding-small w3-center">
				<button class="w3-button w3-theme">Search</button>
			</footer>
		</div>
	</div>

	<!-- Login Model -->
	<div id="LoginModel" class="w3-modal">
		<div class="w3-modal-content w3-card-4 w3-animate-zoom">
			<header class="w3-container w3-blue">
				<span
					onclick="document.getElementById('LoginModel').style.display='none'"
					class="w3-button w3-blue w3-xlarge w3-display-topright">&times;</span>
				<h2 class="w3-padding-small">User Login</h2>
			</header>

			<div class="w3-bar w3-border-bottom">
				<button class="tablink w3-bar-item w3-button"
					onclick="openCity(event, 'Login')">Login</button>
				<button class="tablink w3-bar-item w3-button"
					onclick="openCity(event, 'SignUp')">SignUp</button>
			</div>
			<form action="SimpleController">
				<div id="Login" class="w3-container user">
					<h1>Login</h1>
					User Name: <input type="text" class="w3-input w3-padding-small"
						name="userName" placeholder="Enter Username..."><br>
					Password: <input type="password" class="w3-input w3-padding-small"
						name="password" placeholder="Enter Password..."><br>
					<input type="submit" class="w3-button w3-theme w3-padding-small w3-center" name="submitLogin">
				</div>
			</form>


			<div id="SignUp" class="w3-container user">
				<h1>SignUp</h1>
				Name :<input type="text" class="w3-input w3-padding-small"
					name="name" placeholder="Enter Username..."><br>
				Email: <input type="text" class="w3-input w3-padding-small"
					name="uemail" placeholder="Enter Email..."><br>
				Address: <input type="text" class="w3-input w3-padding-small"
					name="uaddress" placeholder="Enter Full Address..."><br>
				Password: <input type="password" class="w3-input w3-padding-small"
					name="password1" placeholder="Enter Password..."><br>
				<input type="password" class="w3-input w3-padding-small"
					name="password2" placeholder="Enter Password Again..."><br>
				<button class="w3-button w3-theme w3-padding-small w3-center" name="submitSignup">SignUp</button>
			</div>
		</div>
	</div>

	<!-- popupmsg -->
	<div id="popup1" class="overlay">
	<div class="popup">
		<h2>Here i am</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
			Thank to pop me out of that button, but now i'm done so you can close this window.
		</div>
	</div>
</div>


	<!-- Carousel slideshow -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel"
		style="padding-top: 88px">

		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- The slideshow -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<a href="https://www.amd.com/en/where-to-buy/2nd-gen-ryzen"><img
					src="images/ryzen 2 .jpg" alt="Los Angeles" width="1100"
					height="500"></a>
			</div>
			<div class="carousel-item">
				<img src="images/gmpc.jpg" alt="Chicago" width="1100" height="500">
			</div>
			<div class="carousel-item">
				<img src="images/gskill ram.jpg" alt="New York" width="1100"
					height="500">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#myCarousel" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>

	<!-- cards products -->
	<!-- container 1 -->
	<div class="w3-container w3-padding-large">
		<h2 class="w3-center">Feature products</h2>
		<div class="card-deck">

			<div class="card">
				<img class="w3-center" src="images\ryzen-5-2600-01-800x800.jpg"
					alt="Avatar" style="width: 100%">
				<div class="container">
					<h4>
						<b>Ryzen 2600</b>
					</h4>
					<p>6c/12t, 2nd gen, AM4-socket, 19mb cache, upto 3.9GHz</p>
					<a href="#" class="btn btn-primary w3-right">Buy</a>
				</div>
			</div>

			<div class="card">
				<img class="w3-center" src="images\ryzen-5-2600-01-800x800.jpg"
					alt="Avatar" style="width: 100%">
				<div class="container">
					<h4>
						<b>Ryzen 2600</b>
					</h4>
					<p>6c/12t, 2nd gen, AM4-socket, 19mb cache, upto 3.9GHz</p>
					<a href="#" class="btn btn-primary w3-right">Buy</a>
				</div>
			</div>

			<div class="card">
				<img class="w3-center" src="images\ryzen-5-2600-01-800x800.jpg"
					alt="Avatar" style="width: 100%">
				<div class="container">
					<h4>
						<b>Ryzen 2600</b>
					</h4>
					<p>6c/12t, 2nd gen, AM4-socket, 19mb cache, upto 3.9GHz</p>
					<a href="#" class="btn btn-primary w3-right">Buy</a>
				</div>
			</div>

			<div class="card">
				<img class="w3-center" src="images\ryzen-5-2600-01-800x800.jpg"
					alt="Avatar" style="width: 100%">
				<div class="container">
					<h4>
						<b>Ryzen 2600</b>
					</h4>
					<p>6c/12t, 2nd gen, AM4-socket, 19mb cache, upto 3.9GHz</p>
					<a href="#" class="btn btn-primary w3-right">Buy</a>
				</div>
			</div>


		</div>
	</div>

	<!-- container 2 -->
	<div class="w3-container w3-padding-large">
		<h2 class="w3-center">Feature products</h2>
		<div class="card-deck">

			<div class="card">
				<img class="w3-center" src="images\ryzen-5-2600-01-800x800.jpg"
					alt="Avatar" style="width: 100%">
				<div class="container">
					<h4>
						<b>Ryzen 2600</b>
					</h4>
					<p>6c/12t, 2nd gen, AM4-socket, 19mb cache, upto 3.9GHz</p>
					<a href="#" class="btn btn-primary w3-right">Buy</a>
				</div>
			</div>

			<div class="card">
				<img class="w3-center" src="images\ryzen-5-2600-01-800x800.jpg"
					alt="Avatar" style="width: 100%">
				<div class="container">
					<h4>
						<b>Ryzen 2600</b>
					</h4>
					<p>6c/12t, 2nd gen, AM4-socket, 19mb cache, upto 3.9GHz</p>
					<a href="#" class="btn btn-primary w3-right">Buy</a>
				</div>
			</div>

			<div class="card">
				<img class="w3-center" src="images\ryzen-5-2600-01-800x800.jpg"
					alt="Avatar" style="width: 100%">
				<div class="container">
					<h4>
						<b>Ryzen 2600</b>
					</h4>
					<p>6c/12t, 2nd gen, AM4-socket, 19mb cache, upto 3.9GHz</p>
					<a href="#" class="btn btn-primary w3-right">Buy</a>
				</div>
			</div>

			<div class="card">
				<img class="w3-center" src="images\ryzen-5-2600-01-800x800.jpg"
					alt="Avatar" style="width: 100%">
				<div class="container">
					<h4>
						<b>Ryzen 2600</b>
					</h4>
					<p>6c/12t, 2nd gen, AM4-socket, 19mb cache, upto 3.9GHz</p>
					<a href="#" class="btn btn-primary w3-right">Buy</a>
				</div>
			</div>


		</div>
	</div>

	<!-- Footer -->
	<footer class="w3-center w3-black w3-padding-64">
		<a href="#" class="w3-button w3-light-grey"><i
			class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
		<div class="w3-xlarge w3-section">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<p>
			Copyright
			<script>
				document.write(new Date().getFullYear())
			</script>
			PCSWStore
		</p>
	</footer>


	<!-- script -->
	<script>
		document.getElementsByClassName("tablink")[0].click();

		function openCity(evt, cityName) {
			var i, x, tablinks;
			x = document.getElementsByClassName("user");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < x.length; i++) {
				tablinks[i].classList.remove("w3-light-grey");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.classList.add("w3-light-grey");
		}
	</script>
</body>
</html>
