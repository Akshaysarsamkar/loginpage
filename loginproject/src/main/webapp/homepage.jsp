<%@page import="loginproject.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
boolean flag = (boolean) request.getAttribute("flag");
if (flag) {
	%>
	<script type="text/javascript">
	window.location.href = "index.jsp";
	</script>
	<%
	//request.getRequestDispatcher("error-page.jsp");
} else {
	User user = (User) request.getAttribute("user");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="homepage-css.css">
<title>Document</title>
</head>
<body>
	<div class="contianer">
		<div class="header">
			<div class="sub1">
				<img
					src="https://mobirise.com/extensions/resultm5/affiliate-marketing/assets/images/logo.png"
					alt="" class="logo">
			</div>
			<div class="sub2">
				<ul>
					<li><a href="">Home</a></li>
					<li><a href="">Partners</a></li>
					<li><a href="">Marketing</a></li>
					<li><a href="">FAQs</a></li>
				</ul>
			</div>
			<div>
				<a class="butt1" href="login">Logout</a>
				<button class="butt1" style="color: black;">
					<%
					user.getEmail();
					%>
				</button>
			</div>
		</div>

		<div class="section">
			<div class="sub3">
				<h1 class="heading1">
					Affliate Markeing
					<%
				user.getEmail();
				%>
				</h1>
				<p class="heading2">Affiliate marketing is the process by which
					an affiliate earns a commission f or marketing another person’s or
					company’s products. The affiliate simply searches for a product
					they enjoy, then promotes that product and earns a piece of the
					profit from each sale they make. The sales are tracked via
					affiliate links from one website to another.</p>
				<button class="butt1 butt3">Start Now</button>
			</div>
			<div class="sub4">
				<img
					src="https://mobirise.com/extensions/resultm5/affiliate-marketing/assets/images/image4.jpg"
					alt="" class="image2"> <img
					src="https://mobirise.com/extensions/resultm5/affiliate-marketing/assets/images/image16.jpg"
					alt="" class="image3">
			</div>
		</div>
	</div>
</body>
</html>
<%
}
%>