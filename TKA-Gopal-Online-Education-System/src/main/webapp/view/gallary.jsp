<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>TKA Gopal - Online Education System</title>

<!-- Favicon -->
<link rel="icon" href="img/tka.jpg">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/style.css" rel="stylesheet">


<!-- Navbar Start -->
<div class="container-fluid p-0">
	<nav
		class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0 px-lg-5">
		<a href="homePage" class="navbar-brand ml-lg-3">
			<h1>
				<img src="img/tka.jpg" width="80" height="80"> The<font
					color=red size=90>K</font>iranAcademy Gopal
			</h1>
		</a>
		<button type="button" class="navbar-toggler" data-toggle="collapse"
			data-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-between px-lg-3"
			id="navbarCollapse">

			<br>
			<div class="navbar-nav mx-auto py-0">
				<a href="ahome" class="nav-item nav-link active">Home</a> <a
					href="farewell" class="nav-item nav-link active">Farewell</a> <a
					href="viewuserlogin" class="nav-item nav-link">VUL</a> <a
					href="viewcorejavapage" class="nav-item nav-link">VCJS</a> <a
					href="viewadvancejavapage" class="nav-item nav-link">VAJS</a> <a
					href="viewseleniumpage" class="nav-item nav-link">VSS</a> <a
					href="viewpythonpage" class="nav-item nav-link">VPS</a> <a
					href="viewawspage" class="nav-item nav-link">VAWSS</a> <a
					href="viewsalesforcepage" class="nav-item nav-link">VSFS</a> <a
					href="viewcontactpage" class="nav-item nav-link">VUCS</a>
			</div>
			<a href="backToLogin"
				class="btn btn-primary py-2 px-4 d-none d-lg-block">LogOut</a>
		</div>
	</nav>
</div>
<!-- Navbar End -->



<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial;
}

/* The grid: Four equal columns that floats next to each other */
.column {
	float: left;
	width: 25%;
	padding: 10px;
}

/* Style the images inside the grid */
.column img {
	opacity: 0.8;
	cursor: pointer;
}

.column img:hover {
	opacity: 1;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* The expanding image container */
.container {
	position: relative;
	display: none;
}

/* Expanding image text */
#imgtext {
	position: absolute;
	bottom: 15px;
	left: 15px;
	color: white;
	font-size: 20px;
}

/* Closable button inside the expanded image */
.closebtn {
	position: absolute;
	top: 10px;
	right: 15px;
	color: white;
	font-size: 35px;
	cursor: pointer;
}
</style>
</head>
<body>

	<div style="text-align: center">
		<h2>Farewell Function Photos Gallery</h2>
		<p>Click on the images below:</p>
	</div>

	<!-- The four columns -->
	<div class="row">
		<div class="column">
			<img src="img/3.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/4.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/5.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/6.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/7.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>

		<div class="column">
			<img src="img/8.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/9.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/10.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/11.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/12.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>

		<div class="column">
			<img src="img/13.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/14.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/15.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/16.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/17.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>


		<div class="column">
			<img src="img/18.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/19.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/20.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/21.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/22.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>

		<div class="column">
			<img src="img/23.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/24.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/25.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/26.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/27.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>

		<div class="column">
			<img src="img/28.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/29.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/30.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/31.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/32.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
				<div class="column">
			<img src="img/2.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>
		<div class="column">
			<img src="img/3.JPG" alt="GopalSing" style="width: 100%"
				onclick="myFunction(this);">
		</div>

	</div>

	<div class="container">
		<span onclick="this.parentElement.style.display='none'"
			class="closebtn">&times;</span> <img id="expandedImg"
			style="width: 100%">
		<div id="imgtext"></div>
	</div>

	<script>
		function myFunction(imgs) {
			var expandImg = document.getElementById("expandedImg");
			var imgText = document.getElementById("imgtext");
			expandImg.src = imgs.src;
			imgText.innerHTML = imgs.alt;
			expandImg.parentElement.style.display = "block";
		}
	</script>

</body>
</html>
