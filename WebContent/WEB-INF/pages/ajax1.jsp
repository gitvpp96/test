<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${List.list1}" var="p">
		<h6>
			<a> ${p.cmt}</a>By <a href="#">${p.u_name}</a><a href="#" onclick="dltfun(${p.id},${p.p_id})">Delete</a> 
		</h6>		
	</c:forEach>
</body>
</html>