<%@page import="org.kawsoft.other.Comment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "org.kawsoft.other.CommentFun"%>
<jsp:useBean id="obj" class="org.kawsoft.other.Comment"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<%
	CommentFun.addComment(obj);

	response.sendRedirect("http://localhost:8080/Hospital_management_system/index.jsp#/contact");
%>