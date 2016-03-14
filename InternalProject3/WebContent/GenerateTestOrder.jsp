<%@page import="com.sun.xml.internal.txw2.Document"%>
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

<h3 align="center" style="color:#377D6A">Lists of tests to be performed</h3>

<%
	int count = Integer.parseInt(request.getParameter("rowCount"));
	//out.println(count);
	//int i =0;
	//String id = "testCode" + i;
	//String testCode = request.getParameter("testCode" + i);
	//out.println(testCode);
	
	session.setAttribute("testCount", count);
	
	//out.println(session.getAttribute("testCount"));
	
%>
<input type='hidden' id="count" value=<%=count+1 %> name='count' />

<table id="testList" border="2" align="center">
	<thead>
	<tr>
		<td>Test Code</td>
		<td>Test Name</td>
		<td>Price</td>
	</tr>
	</thead>
	<tbody>
	<%
	//for(int i=0;i<4;i++)
	//out.println("<tr><td><td></td></td></tr>");   --> Working
	for(int i=0;i<=count;i++)
	{
		out.println("<tr>");
		out.println("<td>"+request.getParameter("testCode"+i)+"</td>");
		out.println("<td>"+request.getParameter("testName"+i)+"</td>");
		out.println("<td>"+request.getParameter("testCost"+i)+"</td>");
		out.println("</tr>");
	}
	
	%>
	</tbody>
</table>


<!-- 
<script type="text/javascript" src="scripts/jquery-1.12.1.js"></script>
<script type="text/javascript" src="scripts/TestOrder.js"></script>
 -->
</body>
</html>