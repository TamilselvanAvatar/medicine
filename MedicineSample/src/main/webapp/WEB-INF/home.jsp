<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Home</title>
<script>
	function show1() {
		document.getElementById("tb1").style.display = "block";
		document.getElementById("tb2").style.display = "none";
		document.getElementById("tb3").style.display = "none";

	}
	function show2() {
		document.getElementById("tb2").style.display = "block";
		document.getElementById("tb1").style.display = "none";
		document.getElementById("tb3").style.display = "none";

		location.href = '/fetch';

	}
	function show3() {
		document.getElementById("tb3").style.display = "block";
		document.getElementById("tb1").style.display = "none";
		document.getElementById("tb2").style.display = "none";

	}
</script>
</head>
<body>

	<div class="dropdown">
		<a class="btn btn-primary dropdown-toggle" href="#" role="button"
			id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> Click </a>

		<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
			<a class="dropdown-item" href="#tb1" onclick=" show1()">Insert</a> <a
				class="dropdown-item" href="#tb2" onclick="show2()">Fetch</a> <a
				class="dropdown-item" href="#tb3" onclick="show3()">Delete</a>
		</div>
	</div>

	<form:form method="post" modelAttribute="medicine" action="insert">
		<table id="tb1" style="display: none">
			<tr>
				<td><form:label path="name">Name</form:label></td>
				<td><form:input type="text" path="name"
						placeholder="Enter Medicine Name" required="required" /></td>
			</tr>

			<tr>
				<td><form:label path="manufactureDate">Manufacture Date</form:label></td>
				<td><form:input type="date" path="manufactureDate"
						placeholder="mm/dd/yyyy" required="required" /></td>
			</tr>

			<tr>
				<td><form:label path="expDate">Expire Date</form:label></td>
				<td><form:input type="date" path="expDate"
						placeholder="mm/dd/yyyy" required="required" /></td>
			</tr>

			<tr>
				<td><form:label path="use">Uses</form:label></td>
				<td><form:input type="text" path="use" placeholder="usefor"
						required="required" /></td>
			</tr>

			<tr>
				<td><button type="submit">Submit</button></td>
			</tr>

			<tr>
				<td><div>${msg}</div></td>
			</tr>
		</table>



	</form:form>

	<%
		int i = 0;
	%>

	<table id="tb2" >


		<c:forEach items="${medicinelist }" var="item">
			<%
				if (!("${medicinelist }".isEmpty()) && i == 0) {
			%>
			<tr>
				<th>SNO</th>
				<th>Name</th>
				<th>Manufacture Date</th>
				<th>Expire Date</th>
				<th>Uses</th>
			</tr>
			<%
				}
			%>
			<tr>
				<td>
					<%
						out.print(++i);
					%>
				</td>
				<td><c:out value="${item.getName() }"></c:out></td>
				<td><c:out value="${item.getManufactureDate() }"></c:out></td>
				<td><c:out value="${item.getExpDate() }"></c:out></td>
				<td><c:out value="${item.getUse() }"></c:out></td>
			</tr>
		</c:forEach>
	</table>

	<div id="tb3" style="display: none">
		<h1>Delete Medicine</h1>
		<form action="delete" method="post">
			<label>Expire Date :</label><input type="date" name="date">
			<button type="submit">Delete</button>

		</form>
		<div>${msgD}</div>
	</div>



</body>
</html>