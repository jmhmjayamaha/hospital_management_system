<%@page import="java.util.Iterator"%>
<%@page import="org.kawsoft.person.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.kawsoft.person.Login"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("pwd"); 
	boolean validate = false;
	List list = Login.listLogin();
	Iterator<User> itr = list.iterator();
	
	// out.println(list.isEmpty());
	while(itr.hasNext()) {
		User user = (User)itr.next();
	    if(username.equals(user.getUsername()) && password.equals(user.getPassword())) {
			validate = true;
		} 
	}
	
	if(validate == true) {
		session.setAttribute("user", username);
		response.sendRedirect("admin.jsp");
	}
	else {
		response.sendRedirect("login.jsp");
	} 
%>