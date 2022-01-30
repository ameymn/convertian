<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>power converter</title>
<style type="text/css">
body, body {
	background:
		url(https://www.pixelstalk.net/wp-content/uploads/2016/08/Black-Wallpaper-HD-1920x1080-Free-Download.jpg)
		no-repeat center center #505050;
}

* {
	padding: 0;
	margin: 0;
	font-family: 'IBM Plex Sans', sans-serif
}

body {
	height: 80vh;
	width: 100vw;
	overflow-x: hidden
}

.currency-row-outer {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100%
}

.currency-converter {
	width: 100%;
	max-width: 480px;
	text-align: center
}

input, select {
	color: #363636;
	font-size: 1rem;
	height: 2.3em;
	border-radius: 4px;
	max-width: 100%;
	width: calc(100% - 15px);
	margin: auto;
	outline: 0;
	background: #fff;
	border-color: #dbdbdb;
	padding-left: 15px;
	border: 1px solid #00000057;
	box-shadow: inset 0 0.0625em 0.125em rgb(10 10 10/ 5%);
	-webkit-appearance: none
}

.field.grid-50-50 {
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-gap: 15px
}

.currency-converter .colmun {
	margin-bottom: 15px
}

select.currency {
	opacity: 0.8;
	border-color: #3273dc;
	width: 100%;
	height: 100%;
	cursor: pointer;
	font-size: 1em;
	max-width: 100%;
	outline: 0;
	display: block
}

.currency-converter .select {
	position: relative;
	height: 100%
}

h1 {
	color: white;
	padding-bottom: 60px
}

.currency-converter .select:after {
	transform: rotate(-45deg);
	transform-origin: center;
	content: "";
	border: 3px solid rgba(0, 0, 0, 0);
	border-radius: 2px;
	border-top: 0;
	border-right: 0;
	display: block;
	height: 0.525em;
	width: 0.525em;
	z-index: 4;
	position: absolute;
	top: 50%;
	right: 1.125em;
	margin-top: -0.4375em
}

.select:not(:hover)::after {
	border-color: #3273dc
}

.select:hover::after {
	border-color: #363636
}
  .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 100%;
      padding: 10px 0;
      margin: 10px auto;
      border-radius: 5px; 
      border: none;
      background: #fff; 
      font-size: 17px;
      font-weight: 600;
      color:black;
      transition:0.4s;
      }
      button:hover {
      color:black;
      background:#808080;
      
      }
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link rel="stylesheet" href="style.css" />
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="http://localhost:8080/convertian/home">Convertian</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="http://localhost:8080/convertian/home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About us</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
						</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link disabled"></a>
					</li>
				</ul>
				<form class="d-flex">

					<a class="btn btn-black"
						href="http://localhost:8080/convertian/signin" role="button"></a>
				</form>
			</div>
		</div>
	</nav>

	<div class="currency-row-outer">
		<div class="currency-converter">
			<h1>Power Converter</h1>
			<!-- insert form here -->
			 <%double result =(double) request.getAttribute("to"); %>
            
             <%double uservalue =(double) request.getAttribute("from"); %>
            
             <%String from =(String) request.getAttribute("power"); %>
             <%String to =(String) request.getAttribute("powerto"); %>
			<form action="powerprocess" method="post">
			<div class="field grid-50-50">
				<div class="colmun col-left">
					<input type="number" class="form-input" id="number"
						placeholder="FROM" name="from" value=<%=uservalue%>>
				</div>
				<div class="colmun col-right">
					<div class="select">
						<select name="power" class="currency" onchange="updatevalue()">
							<option style="color:blue" value=<%=from%> ><%=from.toUpperCase()%></option>
							<option value="mw">Mw</option>
							<option value="w">W</option>
							<option value="gw">Gw</option>
							<option value="tw">Tw</option>
							<option value="hp">Hp</option>

						</select>
					</div>
				</div>
			</div>
			<div class="field grid-50-50">
				<div class="colmun col-left">
					<input type="text" class="form-input" id="value" name="value"
						disabled placeholder="TO" value=<%=result%>>
				</div>
				<div class="colmun col-right">
					<div class="select">
						<select name="powerto" class="currency" onchange="updatevalue()">
							<option style="color:blue" value=<%=to%> ><%=to.toUpperCase()%></option>
							<option value="mw">Mw</option>
							<option value="w">W</option>
							<option value="gw">Gw</option>
							<option value="tw">Tw</option>
							<option value="hp">Hp</option>

						</select>
					</div>
				</div>
			</div>
			 <div class="btn-block">
          <button type="submit" >CONVERT</button>
        </div>
        </form>
		</div>
	</div>
</body>

</html>