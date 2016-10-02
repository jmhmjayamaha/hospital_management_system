<%@page import="org.kawsoft.other.Comment"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "org.kawsoft.other.CommentFun"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Read comment</title>
<style rel="stylesheet">
#content {
	margin-top: 20px;
	margin-left : 20px;
	margin-right : 20px;
}
</style>
</head>
<body>
<div id="main" align="center">
	<div id="content">
		<div id="table-content">
			<table class="table table-hover">
				<h1>Customers comments</h1>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Tel No</th>
					<th>Comment</th>
				</tr>
				<%
					List commentList = CommentFun.listComment();
					Iterator itr = commentList.iterator();
					while(itr.hasNext()) {
						Comment comment =(Comment) itr.next();
						out.println("<tr><td>"+ comment.getId() +"</td>");
						out.println("<td>"+comment.getName()+"</td>");
						out.println("<td><a href='mailto:"+comment.getEmail()+"'>"+comment.getEmail()+"</a></td>");
						out.println("<td>"+comment.getTelNo()+"</td>");
						out.println("<td>"+comment.getComm()+"</td></tr>");
					}
				%>
			</table>
		</div>
	</div>
</div>
</body>
</html>