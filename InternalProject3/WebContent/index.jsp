<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pathology Lab</title>
<link rel="stylesheet" href="css/IndexStyles.css"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

</head>
<body>
<div>
<h1 align="center" style="color:#377D6A">Dr.Paul Path's Lab</h1>
<hr>
</div>
<div>
	<ul>
		<li>Patient</li>
		<li>Doctor</li>
		<li>Lab Tests</li>
		<li>Help</li>
	</ul>	
</div>
<hr>
<h3 align="center">Login for Authorized User</h3>
<form method="post" action="Authenticate">
	<table border="2" align="center">
		<tr>
			<td><label>Role</label></td>
			<td>
			<select name="Roles">
				  <option value="Admin">Administrator</option>
				  <option value="Manager">Manager</option>
				  <option value="LabTech">Lab Technician</option>
				  <option value="Operator">Operator</option>
			</select>
			</td>
		</tr>
		<tr>
			<td><label>Lab Code</label></td>
			<td>
				<datalist id="json-datalist"></datalist>
				<input type="text" name="labCode" id="ajaxTextBox" list="json-datalist" placeholder="e.g. DL101" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="row">
				<span>
				    <input class="gate" id="name" name="name" type="text" placeholder="Your Cool Name" />
				    <label for="class">Username</label>
				</span>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="row">
				<span>
				    <input class="gate" id="pass" name="pass" type="password" placeholder="It's Secret" />
				    <label for="class">Password</label>
				</span>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="padding: 20px 20px;">
			<input class="btn" type="submit" value="Login" />
			</td>
			
		</tr>
	</table>
</form>

</body>

<script type="text/javascript" src="scripts/LoginAjax.js"></script>
</html>