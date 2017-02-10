<%@page import="com.google.appengine.api.users.User"%>
<%@page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@page import="com.google.appengine.api.users.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<%! UserService us = UserServiceFactory.getUserService();
		User user = us.getCurrentUser();
		String logoutUrl = us.createLogoutURL("/"); %>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/">Bean Cake</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">About</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">New Entry<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/atm-suggestion/new">ATM Suggestion</a></li>
							<li><a href="/withdrawal-history/new">Withdrawal History</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">My Entries<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/atm-suggestion">ATM Suggestion</a></li>
							<li><a href="/withdrawal-history">Withdrawal History</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					
					<li><a href="<%=logoutUrl%>"><span class="glyphicon glyphicon-log-out"></span>
							Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<p><strong><%user.getNickname(); %></strong></p>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12"></div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>