<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pathology Lab</title>
<link rel="stylesheet" href="css/IndexStyles.css"/>
</head>
<body>
<div>
<h1 align="center">Dr.Paul Path's Lab</h1>
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
<form method="post" action="ValidateUser.jsp">
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
			<td><input type="text" name="labCode" /></td>
		</tr>
		<tr>
			<td><label>Username</label></td>
			<td><input type="text" name="username" /></td>
		</tr>
		<tr>
			<td><label>Password</label></td>
			<td><input type="password" name="pass" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Login" /></td>
		</tr>
	</table>
</form>

</body>
</html>