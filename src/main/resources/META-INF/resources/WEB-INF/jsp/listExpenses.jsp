<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css"
	rel="stylesheet">

<title>Here are your expenses</title>
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
	<div class="container">
		<h1>Here are your expenses</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Expense</th>
					<th>Amount</th>
					<th>Date</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${expenses}" var="expense">
					<tr>
						<td>${expense.expenseName}</td>
						<td>${expense.amount}</td>
						<td>${expense.expenseDate}</td>
						<td><a href="delete-expense?id=${expense.id}" class="btn btn-warning">Delete</a></td>
						<td><a href="update-expense?id=${expense.id}" class="btn btn-primary">Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="add-expense" class="btn btn-success">Add Expense</a>
		
	</div>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

</body>
</html>
