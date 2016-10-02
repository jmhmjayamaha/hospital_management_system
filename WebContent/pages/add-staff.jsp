<%@page import="org.kawsoft.person.Staff"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="org.kawsoft.person.PersonFun"%>
<%-- <jsp:useBean id="obj" class="org.kawsoft.person.Staff"></jsp:useBean>
<jsp:setProperty property="firstName" name="obj" />
<jsp:setProperty property="lastName" name="obj" />
<jsp:setProperty property="gender" name="obj" />
<jsp:setProperty property="address" name="obj" />
<jsp:setProperty property="dob" name="obj" />
<jsp:setProperty property="phone" name="obj" />
<jsp:setProperty property="hospital_id" name="obj"/> --%>
<%
	//String path = request.getParameter("photo");
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String gender = request.getParameter("gender");
	String address	= request.getParameter("address");
	String dob = request.getParameter("dob");
	String phone = request.getParameter("phone");
	String hospital_id= request.getParameter("hospital_id");
	String joinedDate = request.getParameter("joinedDate");
	String education = request.getParameter("education");
	String dept_id  = request.getParameter("dept_id");
	Staff obj = new Staff();
	
	File file = new File("F:\\My_Workspace\\MATLAB\\check\\a_1.jpg");
	byte[] bFile = new byte[(int) file.length()];
	try {
		FileInputStream fileInputStream = new FileInputStream(file);
		//convert file into array of bytes
		fileInputStream.read(bFile);
		fileInputStream.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	obj.setFirstName(firstName);
	obj.setLastName(lastName);
	obj.setGender(gender);
	obj.setAddress(address);
	obj.setDob(dob);
	obj.setPhone(phone);
	obj.setHospital_id(hospital_id);
	obj.setJoinedDate(joinedDate);
	obj.setEducation(education);
	obj.setDept_id(dept_id);
	//obj.setPhoto(bFile);
	
	
%>
<%-- <jsp:setProperty property="joinedDate" name="obj"/>
<jsp:setProperty property="education" name="obj"/>
<jsp:setProperty property="dept_id" name="obj"/> --%>
<% PersonFun.addStaff(obj); %>