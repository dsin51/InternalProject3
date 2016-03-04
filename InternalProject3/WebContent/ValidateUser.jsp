<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/IndexStyles.css"/>
<title>Pathology Lab</title>
</head>
<body>
<div>
<h1 align="center">Dr.Paul Path's Lab</h1>
<hr>
</div>
<div>
	<ul>
		<li>Create Test Order</li>
		<li>Add Test Result</li>
		<li>View test report</li>
	</ul>	
</div>
<hr>
<div class="labcode">
	<%
		String labcode = request.getParameter("labCode");
		out.println("Lab Code: ");
	%>
	<span class="labcode" style="color:red">
		<%= labcode %>
	</span>
</div>

<table border="2">
	<tr>
		<td class="thead">Order Number</td>
		<td><input type="text" name="orderNo" /></td>
		<td class="thead">Collection Date</td>
		<td><input type="date" name="date" /></td>
		<td class="thead">Collection Type</td>
		<td>Lab<input type="radio" name="inputType" />
			Home<input type="radio" name="inputType" />
		</td>
	</tr>
	<tr>
		<td class="thead">Patient Code</td>
		<td><input type="text" name="pCode" /></td>
		<td class="thead">Patient Name</td>
		<td><input type="text" name="pName" /></td>
		<td class="thead">Age</td>
		<td><input type="text" name="pAge" /></td>
	</tr>
	<tr>
		<td class="thead">Hand Phone</td>
		<td><input type="tel" name="pPhone" /></td>
		<td class="thead">Email</td>
		<td><input type="email" name="pEmail" /></td>
		<td class="thead">Gender</td>
		<td>Male<input type="radio" name="Gender" />
			Female<input type="radio" name="Gender" />
		</td>
	</tr>
	<tr>
		<td class="thead">Doctor Code</td>
		<td><input type="text" name="dCode" /></td>
		<td colspan="2" class="thead">Doctor Name</td>
		<td colspan="2"><input type="text" name="dName" /></td>
	</tr>
</table>

<h2 align="center">Test Details</h2>

<table id="testDetails" border="2">
	<thead>
		<tr>
			<td>Test Code</td>
			<td>Test Name</td>
			<td>Amount</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>


</body>
</html>