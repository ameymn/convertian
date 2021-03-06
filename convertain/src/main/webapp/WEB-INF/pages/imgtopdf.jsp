<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>IMG TO PDF</title>
<style type="text/css">
.external-repos .icon.google-icon {
    background-image: url(data:image/svg+xml;charset=UTF-8;base64,PHN2ZyB3aWR0aD0nMTYnIGhlaWdodD0nMTYnIGZpbGw9J25vbmUnIHhtbG5zPSdodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2Zyc+PGcgY2xpcC1wYXRoPSd1cmwoI2NsaXAwKScgZmlsbD0nIzAwMCc+PHBhdGggZD0nTTEwLjEuOTdINS45MmEuNDcuNDcgMCAwMC0uNC43bDQuNDcgNy43NGg1LjI3TDEwLjUgMS4yYS40Ny40NyAwIDAwLS40LS4yNHptLTUuMjkgMS40bC00Ljc1IDguMmEuNDcuNDcgMCAwMDAgLjQ3bDIuMDIgMy43NWMuMDguMTQuMjQuMjQuNC4yNGguMDFjLjE3IDAgLjMzLS4wOS40MS0uMjNsNC41NS03Ljg3TDQuOCAyLjM3em0xMS4xMiA4LjJhLjQ3LjQ3IDAgMDAtLjQtLjIzSDYuNThsLTIuNyA0LjdoOS42M2MuMTcgMCAuMzMtLjEuNC0uMjVsMi4wMy0zLjc1YS40Ny40NyAwIDAwMC0uNDd6Jy8+PC9nPjxkZWZzPjxjbGlwUGF0aCBpZD0nY2xpcDAnPjxwYXRoIGZpbGw9JyNmZmYnIGQ9J00wIDBoMTZ2MTZIMHonLz48L2NsaXBQYXRoPjwvZGVmcz48L3N2Zz4=);
}
.external-repos .icon {
    display: inline-block;
    position: relative;
    cursor: pointer;
    border: 1px solid #cdcdcd;
    border-radius: 100%;
    width: 42px;
    height: 42px;
    transition: all 200ms;
    background-color: #fff;
    background-size: 20px;
    background-position: center;
    background-repeat: no-repeat;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark">
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

					<a class="btn btn-outline-light"
						href="http://localhost:8080/convertian/signin" role="button">SignIn</a>
				</form>
			</div>
		</div>
	</nav>
	<form action="imgtopdfprocess" method="post" enctype="multipart/form-data">
	<div>
  <label for="formFileLg" class="form-label">CHOSE IMAGE </label>
  <input type="file" name="file" class="form-control form-control-lg" id="formFileLg"  >
  </div>
  <div class="external-repos">
	<div class="icon google-icon brand-border-on-hover js-google-picker-btn" title="Select file from Google Drive"></div>
	<div class="icon dropbox-icon brand-border-on-hover js-dropbox-choose-btn" title="Select file from Dropbox"></div>
	<div class="icon url-icon brand-border-on-hover js-url-input-btn" title="Load file from URL"></div>
	</div>
	<div class="btn-block">
          <button class="btn btn-outline-dark btn-lg">CONVERT</button>
        </div>
	</form>
</body>
</html>