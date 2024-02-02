<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css"
	rel="stylesheet">

<title>Add Expense Page</title>
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
		<h1>Enter Expense Details</h1>
		<form:form method="post" modelAttribute="expense" action="add-expense">
			<fieldset class="mb-3">
				<form:label path="expenseName">Expense</form:label>
				<form:input type="text" path="expenseName" required="required" />
				<form:errors path="expenseName" cssClass="text-warning" />
			</fieldset>
			<fieldset class="mb-3">
				<form:label path="amount">Amount</form:label>
				<form:input type="text" path="amount" required="required" />
				<form:errors path="amount" cssClass="text-warning" />
			</fieldset>
			<form:input type="hidden" path="id" />
			<form:input type="hidden" path="expenseDate" />
			<input href="list-expenses" type="submit" class="btn btn-success" />

		</form:form>
	</div>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

</body>
</html>
