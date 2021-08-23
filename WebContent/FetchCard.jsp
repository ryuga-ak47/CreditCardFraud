<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%try {
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	String url = "jdbc:sqlserver://LAPTOP-6GE41I0O\\SQLEXPRESS;databaseName=CreditCardFraud";
	String user = "CreditCardFraud";
	String password="Password@123";
	
	Connection con = DriverManager.getConnection(url, user, password);
	boolean valid = false;
	String cvv = request.getParameter("Card");
	String sql = "SELECT CARD_NUMBER , CARD_MONTH , CARD_YEAR , CARD_CVV , CARD_HOLDER FROM dbo.CARD_DETAILS_TABLE WHERE CARD_NUMBER = ?";
	PreparedStatement s = con.prepareStatement(sql);
	s.setString(1, cvv);
	
	ResultSet rs = s.executeQuery(); %>
</head>
<body>
<div id="transaction">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th scope="col">Product ID</th>
				<th scope="col">Product Name</th>
				<th scope="col">Paid amount</th>
				<th scope="col">Date of Payment</th>
				<th scope="col">Date of Payment</th>
			</tr>
		</thead>
		<tbody>
		<%while(rs.next()){ %>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			</tr>
		</tbody>
	</table>
			<% valid = true;} 
	
		if(valid){
		%>
		<input type="button" class ="btn btn-primary" value="OK" onclick="location.href = 'Security Page.jsp';">
			
		<% }
}
		catch(Exception e){
			e.printStackTrace();
		}
		%>
	</div>
</body>
</html>