<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<h1 align="center" style="color:#377D6A">Dr.Paul Path's Lab</h1>
<h2 align="center" style="color:#377D6A">Test Order</h2>
<hr>
</div>


<label>Order Number:</label>
<span style="color:red">
	<%= request.getParameter("orderNo") %>
</span>

<span style="float:right">
	<label>Doctor name:</label>
	<span style="color:red;">
	<%=request.getParameter("dName") %>
	</span>
</span>
<br>
<label>Patient Name:</label>
<span style="color:red">
	<%= request.getParameter("pName") %>
</span>

<span style="float:right">
<label>Collection Date:</label>
<span style="color:red">
	<%= request.getParameter("date") %>
</span>
</span>

<hr>


</body>
</html>