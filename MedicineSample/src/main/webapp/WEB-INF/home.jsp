<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<script>
function show(){
	document.getElementById("data").style.display = "block";
	
}

</script>
</head>
<body>
	<button onclick = "show()">Show</button>
	<table id ="data" class="data" style = "display : none">
		<tr>
			<th>SNO</th>
			<th>Name</th>
			<th>Manufacture Date</th>
			<th>Expire Date</th>
			<th>Uses</th>
		</tr>
		<%
			int i = 0;
		%>
		<c:forEach items="${medicinelist }" var="item">
			<tr>
				<%-- <td><c:out value=" <%++i;%> ">
					</c:out></td> --%>
				<td><% out.print(++i); %> </td>
				<td><c:out value="${item.getName() }"></c:out></td>
				<td><c:out value="${item.getManufactureDate() }"></c:out></td>
				<td><c:out value="${item.getExpDate() }"></c:out></td>
				<td><c:out value="${item.getUse() }"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>