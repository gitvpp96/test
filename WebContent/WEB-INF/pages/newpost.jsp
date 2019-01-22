<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>New Post</title>

<link rel="icon" href="img/core-img/favicon.ico">
<link href="style.css" rel="stylesheet">
<link href="css/mystyle.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

</head>

<body>

	<%@ include file="header.jsp"%>

	<section class="contact-area section_padding_100">
	<div class="container">
		<div class="row">
			<!-- Contact Form Area -->
			<div class="col-12 col-md-8">
				<div class="contact-form-area">
					<h2>Write here</h2>
					<form action="#">
						<div class="row">
							<div class="col-12 col-md-6">
								<input type="text" class="form-control" id="name"
									placeholder="Name">
							</div>
							<div class="col-12 col-md-6">
								<input type="email" class="form-control" id="email"
									placeholder="E-mail">
							</div>
							<div class="col-12">
								<input type="text" class="form-control" id="subject"
									placeholder="Subject">
							</div>
							<div class="col-12">
								<textarea name="message" class="form-control" id="message"
									cols="30" rows="10" placeholder="Message"></textarea>
							</div>
							<button class="btn mosh-btn mt-50" type="submit">Send
								Message</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</section>

	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>

</body>

</html>