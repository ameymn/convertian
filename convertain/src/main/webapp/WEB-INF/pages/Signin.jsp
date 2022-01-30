<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Signin Template · Bootstrap v5.1</title>
<link href='https://fonts.googleapis.com/css?family=Montserrat'
	rel='stylesheet' type='text/css'>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/sign-in/">



<!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet"integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.1/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">

<style type="text/css">
body, body {
	background:
		url(https://www.pixelstalk.net/wp-content/uploads/2016/08/Black-Wallpaper-HD-1920x1080-Free-Download.jpg)
		no-repeat center center #505050;
}

.signin {
	background-color: grey;
	font-family: 'Montserrat', sans-serif;
	color: grey;
	font-size: 14px;
	letter-spacing: 1px;
}

.login {
	opacity: 1;
	position: relative;
	height: 460px;
	width: 405px;
	margin: auto;
	padding: 60px 60px;
	background-size: cover;
	box-shadow: 0px 30px 60px -5px #000;
}

form {
	padding-top: 80px;
}

.active {
	border-bottom: 2px solid grey;
}

.nonactive {
	color: white;
}

h2 {
	color: white;
	padding-left: 12px;
	font-size: 22px;
	text-transform: uppercase;
	padding-bottom: 5px;
	letter-spacing: 2px;
	display: inline-block;
	font-weight: 100;
}

h2:first-child {
	padding-left: 0px;
}

span {
	color: white;
	text-transform: uppercase;
	font-size: 14px;
	opacity: 0.8;
	display: inline-block;
	position: relative;
	top: -65px;
	transition: all 0.5s ease-in-out;
}

.text {
	border: none;
	width: 89%;
	padding: 10px 20px;
	display: block;
	height: 15px;
	border-radius: 20px;
	background: rgba(255, 255, 255, 0.1);
	border: 2px solid rgba(255, 255, 255, 0);
	overflow: hidden;
	margin-top: 15px;
	transition: all 0.5s ease-in-out;
}

.text:focus {
	outline: 0;
	border: 2px solid rgba(255, 255, 255, 0.5);
	border-radius: 20px;
	background: rgba(0, 0, 0, 0);
}

.text:focus+span {
	opacity: 0.8;
}

input[type="text"], input[type="password"] {
	font-family: 'Montserrat', sans-serif;
	color: grey;
}

input {
	display: inline-block;
	padding-top: 20px;
	font-size: 14px;
}

h2, span, .custom-checkbox {
	margin-left: 20px;
}

.custom-checkbox {
	-webkit-appearance: none;
	background-color: grey;
	padding: 8px;
	border-radius: 2px;
	display: inline-block;
	position: relative;
	top: 6px;
}

.custom-checkbox:checked {
	background-color: rgba(17, 97, 237, 1);
}

.custom-checkbox:checked:after {
	content: '\2714';
	font-size: 10px;
	position: absolute;
	top: 1px;
	left: 4px;
	color: grey;
}

.custom-checkbox:focus {
	outline: none;
}

label {
	display: inline-block;
	padding-top: 10px;
	padding-left: 5px;
}

.signin {
	background-color: grey;
	color: #FFF;
	width: 100%;
	padding: 10px 20px;
	display: block;
	height: 39px;
	border-radius: 20px;
	margin-top: 30px;
	transition: all 0.5s ease-in-out;
	border: none;
	text-transform: uppercase;
}

.signin:hover {
	background: #4082f5;
	box-shadow: 0px 4px 35px -5px #4082f5;
	cursor: pointer;
}

.signin:focus {
	outline: none;
}

a {
	text-align: center;
	display: block;
	top: 120px;
	position: relative;
	text-decoration: none;
	color: rgba(255, 255, 255, 0.2);
}
</style>



<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
</head>
<body>


	<div class="login">
		<h2 class="active">sign in</h2>

		<h2 class="nonactive">sign up</h2>
		<form>



			<input type="text" class="text" name="username"> <span>username</span>

			<br> <br> <input type="password" class="text"
				name="password"> <span>password</span> <br>

			<button class="signin">Sign In</button>
		</form>

	</div>



</body>
</html>
