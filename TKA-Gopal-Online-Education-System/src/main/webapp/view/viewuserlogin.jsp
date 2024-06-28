<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">




   <meta charset="utf-8">
     <title>TKA Gopal - Online Education System</title>
   
    <!-- Favicon -->
    <link rel="icon" href="img/tka.jpg">
</head>
<body>





	<center>
		<h1>User Table Record</h1>
		<a href="ahome">Back To Home</a> 
		<br>
		<br>
		
		<form action="save" method="post">

			UserName <input type="text" name="id"> PassWord <input type="password"
				name="name"> 
				<br>
				<br>
				<input type="submit" value="save">

			<button type="button" formaction="update">Update</button>
			<button type="button" formaction="delete">Delete</button>

			<input type="reset" value="reset">

		</form>
		<br>
	</center>

	<table>
		<tr>
			<th>UserName</th>
			<th>PassWord</th>
		</tr>


		<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tkagopal", "root", "root");
		PreparedStatement ps = connection.prepareStatement("select * from login");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			out.println("<tr><td>" + rs.getString(2) + "</td><td>" + rs.getString(1) + "</td></tr>");
		}
		%>

	</table>







	<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>











</body>
</html>