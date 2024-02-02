<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css"
	rel="stylesheet">

<title>Welcome Page</title>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-light" style="background-color: #e3f2fd" mb-3 p-1">
		
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav">
   				<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="list-expenses">Expenses</a></li>
			</ul>
		</div>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
		</ul>
	</nav>
	
	<div>
		<h1>Welcome ${username}</h1>
		<a href="list-expenses">See My Expenses</a>
	</div>
	</body>
</html>