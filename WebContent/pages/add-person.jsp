<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="org.kawsoft.person.PersonFun"%>
<jsp:useBean id="obj" class="org.kawsoft.person.Patient"></jsp:useBean>
<jsp:setProperty property="firstName" name="obj" />
<jsp:setProperty property="lastName" name="obj" />
<jsp:setProperty property="gender" name="obj" />
<jsp:setProperty property="address" name="obj" />
<jsp:setProperty property="dob" name="obj" />
<jsp:setProperty property="phone" name="obj" />
<jsp:setProperty property="hospital_id" name="obj"/>
<jsp:setProperty property="patientId" name="obj"/>
<jsp:setProperty property="age" name="obj"/>
<jsp:setProperty property="acceptDate" name="obj"/>
<jsp:setProperty property="sickness" name="obj"/>
<jsp:setProperty property="prescription" name="obj"/>
<%
	
	PersonFun.addPatient(obj);
%>
