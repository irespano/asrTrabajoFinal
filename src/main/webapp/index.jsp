<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Proyecto ASR new...</title>
</head>
<body>
<div class="container col-lg-9 col-md-9 col-sm-11 col-xs-11">
	<h1>What do you see? </h1>
	<hr />
	<h2>Sistema de reconocimiento de imágenes</h2>
	<p>Información de las imágenes analizadas:</p>
	<ul>
		<li><a href="listar">Listar</a></li>
		<li><a href="insertar?palabra=hola">Insertar</a></li>
		
	</ul>

	<form method="POST" action="/asrTomcatEjemploCloudant/images">
		<tr>
			<td>Introduzca la URL de una imagen:</td>
<!-- 			<input type="text" class="form-control" id="image"  placeholder="URL de imagen" name="image" size="50"> -->
			<td><input type="text" name="image" size="30"></td>
<!-- 			<button type="submit" class="btn btn-outline-primary" name="btnimagen">Enviar</button> -->
		</tr>
	</form>
</div>
</body>
</html>