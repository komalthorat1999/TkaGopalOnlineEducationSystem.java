<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
@import url("https://fonts.googleapis.com/css?family=Lato:400,700");

#bg {
	background-image: url('img/background.jpg');
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-size: cover;
	filter: blur(5px);
}

body {
	font-family: 'Lato', sans-serif;
	color: #4A4A4A;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	overflow: hidden;
	margin: 0;
	padding: 0;
}

form {
	width: 350px;
	position: relative;
}

form .form-field::before {
	font-size: 20px;
	position: absolute;
	left: 15px;
	top: 17px;
	color: #888888;
	content: " ";
	display: block;
	background-size: cover;
	background-repeat: no-repeat;
}

form .form-field:nth-child(1)::before {
	background-image: url(img/user-icon.png);
	width: 20px;
	height: 20px;
	top: 15px;
}

form .form-field:nth-child(2)::before {
	background-image: url(img/lock-icon.png);
	width: 16px;
	height: 16px;
}

form .form-field {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	margin-bottom: 1rem;
	position: relative;
}

form input {
	font-family: inherit;
	width: 100%;
	outline: none;
	background-color: #fff;
	border-radius: 4px;
	border: none;
	display: block;
	padding: 0.9rem 0.7rem;
	box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
	font-size: 17px;
	color: #4A4A4A;
	text-indent: 40px;
}

form .btn {
	outline: none;
	border: none;
	cursor: pointer;
	display: inline-block;
	margin: 0 auto;
	padding: 0.9rem 2.5rem;
	text-align: center;
	background-color: #47AB11;
	color: #fff;
	border-radius: 4px;
	box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
	font-size: 17px;
}

* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial;
	font-size: 17px;
	
	background-image: url('img/team.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}

#myVideo {
	position: fixed;
	right: 10;
	bottom: 10;
	min-width: 100%;
	min-height: 100%;
}

.content {
	position: fixed;
	bottom: 0;
	background: rgba(0, 0, 0, 0.5);
	color: #f1f1f1;
	width: 100%;
	padding: 170px;
}

#myBtn {
	width: 200px;
	font-size: 18px;
	padding: 20px;
	border: none;
	background: #000;
	color: #fff;
	cursor: pointer;
}

#myBtn:hover {
	background: #ddd;
	color: black;
}
</style>


   <title>TKA Gopal - Online Education System</title>
   
    <!-- Favicon -->
    <link rel="icon" href="img/tka.jpg">

</head>
<body>


	

	<div class="content">


		<marquee>
			<font face="Bold" size=100><h1>
					<font color=red>TKA </font> <font color=white>Gopal </font><font
						color=green>Online </font><font color=Yellow>Education </font><font color=pink>System </font>
		</marquee>

		<center>

			<%

if(request.getAttribute("msg")!=null){
	out.print(request.getAttribute("msg"));
}
%>
			<form action="adgopal" method="post">
				<div class="form-field">
					<input type="text" name="username" placeholder="Username">
				</div>

				<div class="form-field">
					<input type="password" name="password" placeholder="Password">
				</div>

				<div class="form-field">
					<button class="btn" type="submit">Sign In</button>
				</div>
			</form>
			
			

			
				
		</center>

		




</body>
</html>
