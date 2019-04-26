<!DOCTYPE html>
<html lang="en">
<head>
<title>Veo, veo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<a class="navbar-brand">"Veo, veo... ¿Qué ves?"</a>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon"></span>
							Arquitectura de Servicios en Red</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav"></div>
			<div class="col-sm-8 text-left">
				<h1>A new method to learn Spanish</h1>
				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				<hr>
				<h3>Follow the next steps:</h3>
				<ul>
				<form method="POST" action="images">
				<table>
					<tr>
					STEP 1
					</tr>
					<tr>
						<td><ul>Introduce the URL of an image:</ul></td>
					
						<!--      <input type="text" class="form-control" id="image"  placeholder="URL de imagen" name="image" size="50"> -->
						<td><input type="text" name="image" size="50"></td>
						<!--      <button type="submit" class="btn btn-outline-primary" name="btnimagen">Enviar</button> -->
					</tr>
				
				</form>
				</table>
				<table>
<!-- 				<ol start="2"> -->
				<tr>
					<td>STEP 2</td>
				</tr>
				<tr>
					<td><ul><li><a href="listar">Listar</a></li></ul></td>
				</tr>
				<tr>
					<td>STEP 3</td>
				</tr>
				<tr>				
					<td><ul><li><a href="insertar?palabra=hola">Insertar</a></li></ul></td>
				</tr>
				<tr>
					<td>STEP 4</td>
				</tr>
				<tr>
					<td><ul><li><a href="hablar">Hablar</a></li></ul></td>
				</tr>
				</table>
				<div style="padding:15px; text-align: center">
					<p>NOW REPEAT IT OR REVIEW!</p>
				</div>
				
				</ul>
<!-- 				</ol> -->
				
			</div>
			<div class="col-sm-2 sidenav"></div>
		</div>
	</div>

	<footer class="container-fluid text-center" align="bottom" style="
    position: fixed;
    height: 112px;
    background-color: gray;
    bottom: 0px;
    left: 0px;
    right: 0px;
    margin-bottom: 0px;
    text-align: center;">
		<p>Marta Castañeda & Irene España</p>
		<p>1º MIT + MBD</p>
		<hr>
	</footer>

</body>
</html>
