<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.medicine.model.Medicine"%>
<%@page import="java.util.*"%>
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

<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script type="text/javascript" src="resources/script.js"></script>
<link rel="stylesheet" href="resources/style.css">
<title>Home</title>
</head>
<body>

	<header class="card-header ">
		<button id="drop" class="btn btn-success">Click</button>
		<span class="fs-1">Welcome: Sample Problem</span>
	</header>

	<div class="click">
		<a class="dropdown-item" href="#" id="id1">Insert</a> <a
			class="dropdown-item" href="/fetch" id="id2">Fetch</a> <a
			class="dropdown-item" href="#" id="id3">Delete</a>
	</div>



	<form:form method="post" modelAttribute="medicine" action="insert">

		<div id="tb1" class="table-responsive">
			<h5>Enter Medicine Data</h5>
			<table align="center" class=" table-bordered border-info ">
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
					<td colspan="3"><button class="btn btn-info" type="submit">Submit</button></td>
				</tr>

			</table>

		</div>
	</form:form>


	<div id="tb2" class="table-responsive">
		<h5>Medicine Data</h5>
		<table align="center" class="table-bordered border-info align-middle">

			<%
				int i = 0;
			%>

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

	</div>


	<div id="tb3">
		<form action="delete" method="post">
			<h5>Medicine Data</h5>
			<label>Expire Date :</label><input type="date" name="date" required>
			<button type="submit">Delete</button>
			<marquee>${msgD}</marquee>
		</form>

	</div>

</body>
</html>