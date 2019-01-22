<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>About</title>

<link rel="icon" href="img/core-img/favicon.ico">
<link href="style.css" rel="stylesheet">
<link href="css/mystyle.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

</head>
<body>

	<%@ include file="header.jsp"%>

<c:forEach items="${List.list1}" var="p">
		<%-- <option>Select Book</option>
		<option value="${p.b_name}">${p.b_name}</option> --%>
	
	<div class="single-team-slide text-center">
		<!-- Thumbnail -->
		<div class="team-thumbnail" style="margin-top: 150px;">
			<img src="img/bg-img/c-3.jpg" alt="">
		</div>
		<!-- Meta Info -->
		<div class="team-meta-info">
			<h4>${p.name}</h4>
			<span>${p.desig}</span>
			<p>${p.addr}</p>
		</div>
		<!-- Social Info -->
		<div class="team-social-info">
			<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a
				href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
				href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
				href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
		</div>
	</div>


	<section class="mosh-team-area">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-md-10">
				<div class="section-heading text-center">

					<h2 id="#edit">Bio</h2>
					<h5 class="mt-30">${p.bio}</h5>
				</div>
			</div>
		</div>
	</section>
</c:forEach>
<c:forEach items="${List.list2}" var="p">
	<section class="mosh-about-features-area section_padding_100">
	<div class="container">
		<div class="row align-items-center">

			<div class="col-12 col-md-4">
				<div class="mosh-features-thumb wow fadeIn" data-wow-delay="0.5s">
					<img src="img/bg-img/features-2.png" alt="">
				</div>
			</div>

			<div class="col-12 col-md-8">
				<div class="mosh-about-us-content">
					<div class="section-heading">
						<h2>${p.cmpny_name}</h2>
						<p>${p.s_date}</p>
					</div>
					<div class="row">
						<!-- Single Feature Area -->
						<div>
							<div class="single-feature-area d-flex">
								<div class="feature-icon mr-30">
									<img src="img/core-img/settings-2.png" alt="">
								</div>
								<div class="feature-content">
									<h5>${p.role}</h5>
									<p>${p.c_about}</p>
								</div>
							</div>
						</div>
					</div>
					<a href="${p.url}" class="btn mosh-btn mt-50">website</a>
				</div>
			</div>
		</div>
	</div>
	</section>
</c:forEach>	


	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script src="js/profedit.js"></script>
</body>

</html>