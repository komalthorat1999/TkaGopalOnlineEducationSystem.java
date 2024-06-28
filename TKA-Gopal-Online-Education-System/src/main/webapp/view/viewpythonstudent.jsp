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
		<h1>Python Student Courses Table Record</h1>
		<a href="ahome">Back To Home</a> 
		<br>
		<br>
		
				<form action="save" method="post">
			SId <input type="text" name="id"> 
			SAddress <input type="text" name="address"> 
			SBDay <input type="text" name="bday"> 
			SBMonth <input type="text" name="bmonth"> 
			SByear <input type="text" name="byear"> 
			SCity <input type="text" name="city"> 
			SCountry <input type="text" name="country"> 
			SEmail <input type="text" name="email"> 
			SFName <input type="text" name="fname"> 
			SGender <input type="text" name="gender"> 
			SMobile <input type="text" name="mobile"> 
			SPincode <input type="text" name="pincode"> 
			SState <input type="text" name="state"> 
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
			<th>Student Id</th>
			<th>Student Address</th>
			<th>Student BDay</th>
			<th>Student BMonth</th>
			<th>Student BYear</th>
			<th>Student City</th>
			<th>Student Country</th>
			<th>Student Email</th>
			<th>Student FName</th>
			<th>Student Gender</th>
			<th>Student LName</th>
			<th>Student Mobile</th>
			<th>Student Pincode</th>
			<th>Student State</th>
		</tr>


		<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tkagopal", "root", "root");
		PreparedStatement ps = connection.prepareStatement("select * from python_student");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>"+ rs.getString(3)+"</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td><td>" + rs.getString(7) + "</td><td>" + rs.getString(8) + "</td><td>" + rs.getString(9) + "</td><td>" + rs.getString(10) + "</td><td>" + rs.getString(11) + "</td><td>" + rs.getString(12) + "</td><td>" + rs.getString(13) + "</td><td>" + rs.getString(14) + "</td></tr>");
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