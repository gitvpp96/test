<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div id="preloader">
        <div class="mosh-preloader"></div>
    </div>
    <!-- ***** Header Area Start ***** -->
    <header class="header_area clearfix">
        <div class="container-fluid h-100">
            <div class="row h-100">
                <!-- Menu Area Start -->
                <div class="col-12 h-100">
                    <div class="menu_area h-100">
                        <nav class="navbar h-100 navbar-expand-lg align-items-center">
                            <!-- Logo -->
                            <a class="navbar-brand" href="home.html"><img src="img/core-img/logo.png" alt="logo"></a>

                            <!-- Menu Area -->
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mosh-navbar" aria-controls="mosh-navbar" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                            <div class="collapse navbar-collapse justify-content-end" id="mosh-navbar">
                                <ul class="navbar-nav animated" id="nav">
                                    <li class="nav-item"><a class="nav-link" href="home.html">Home</a></li>
                                    <li class="nav-item"><a class="nav-link" href="about.html">Profile</a></li>
                                    <!-- <li class="nav-item"><a class="nav-link" href="hack.html">Hacking tips</a></li> -->
                                    <!-- <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li> -->
                                </ul>
                                <!-- Search Form Area Start -->
                                <div class="search-form-area animated">
                                    <form action="#" method="post">
                                        <input type="search" name="search" id="search" placeholder="Type keywords &amp; hit enter">
                                        <button type="submit" class="d-none"><img src="img/core-img/search-icon.png" alt="Search"></button>
                                    </form>
                                </div>
                                <!-- Search btn -->
                                <div class="search-button">
                                    <a href="#" id="search-btn"><img src="img/core-img/search-icon.png" alt="Search"></a>
                                </div>
                                <!-- Login/Register btn -->
                                <div class="login-register-btn">
                                    
                                    <!-- <a href="#">/ Register</a> -->
                                    <%response.addHeader("Cache-Control",
								"no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
								response.addHeader("Pragma", "no-cache"); 
								response.addDateHeader ("Expires", 0);
						String log=(String)session.getAttribute("u_name");
						if(log!=null){
						%>
						<a href="logout.html">Logout</a>
						<%}else{response.sendRedirect("Login.html");}%>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
</body>
</html>