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



<title>Home</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="style.css" rel="stylesheet">
<link href="css/mystyle.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

</head>

<body>
	<%@ include file="header.jsp"%>

	<!-- ***** Blog Area Start ***** -->
	<section class="blog-area section_padding_100">
	<div class="container">
		<div class="row">
			<div class="col-12 col-md-8">
				<div class="mosh-blog-posts">
					<div class="row">
						<c:forEach items="${List.list}" var="p">
							<div class="col-12">
								<div class="single-blog wow fadeInUp" data-wow-delay="0.2s">
									<div class="blog-post-thumb">
										<img src="${p.img}" alt="">
									</div>
									<div class="post-meta">
										<h6>
											By <a href="#"> <%
 	String uname = (String) session.getAttribute("profilename");
 		out.print(uname);
 %>
											</a><a href="#">${p.date}</a><a href="#" onclick="myFunction()">3
												Comments</a><a href="deletepost.html?id=${p.id}">Delete,</a>
										</h6>
									
										<div id="cmntdiv" class="contact-form-area">
											<h6>
												<a> haii................................</a>By <a href="#">Vishnu</a>
											</h6>
										</div>
										<div>
										<input onkeyup="check()" type="text" name="cmnt"
												class="form-control" placeholder="title" required=""
												id="cmnt"> <label class="btn btn-info btn-file">send
												<button onclick="ajaxfun()" id="sendbtn"
													style="display: none;"></button>
											</label>
										</div>
									</div>
									<h2>${p.head}</h2>
									<p>${p.content}</p>
									<a href="#">Read More</a>
								</div>
							</div>
							<input type="hidden" id="t_id" value="${p.id}">
							
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-4">
				<div class="mosh-blog-sidebar">
					<div class="contact-form-area">
						<form action="newpost.html" method="post"
							enctype="multipart/form-data">
							<input type="text" class="form-control" placeholder="title"
								name="head" required="">
							<textarea name="message" class="form-control" id="message"
								cols="20" rows="5" placeholder="status" required=""></textarea>
							<div class="feature-icon mr-30">
								<label class="btn btn-primary btn-file"> Image <input
									type="file" name="image" style="display: none;" required="">
								</label> <label class="btn btn-info btn-file"> Upload
									<button type="submit" style="display: none;"></button>
								</label>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<script type="text/javascript">
		//default run script
		var x = document.getElementById("cmntdiv");
		x.style.display = "none";

		document.getElementById("sendbtn").disabled = true;
	</script>
	<script>
		function myFunction() {
			var x = document.getElementById("cmntdiv");
			if (x.style.display === "none") {
				ajaxdltcmt();
				$("#cmntdiv").slideDown("slow");
			} else {
				$("#cmntdiv").slideUp("slow");
			}
		}
		function check() {
			var c = document.getElementById("cmnt").value;
			if (c != "") {
				document.getElementById("sendbtn").disabled = false;

			} else {
				document.getElementById("sendbtn").disabled = true;
			}
		}
		function ajaxfun(){
			var v = $("#t_id").val();
			var x = $("#cmnt").val();
			$.ajax({type:"GET",
					url:"ajax.html",
					data: { t_id : v, cmnt: x },
				success:function(response){
					$("#cmntdiv").html(response);
				}
			});	
	}
		function ajaxdltcmt(){
			var v = $("#t_id").val();
			$.ajax({type:"GET",
					url:"ajax1.html",
					data: { p_id : v},
				success:function(response){
					$("#cmntdiv").html(response);
				}
			});	
	}
	</script>
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
</body>

</html>