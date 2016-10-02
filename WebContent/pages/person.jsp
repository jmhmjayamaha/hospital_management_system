<%@page import="org.kawsoft.hospital.Hospital1"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.kawsoft.hospital.HospitalFun"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../js/common.js"></script>

<link href="../css/main.css" rel="stylesheet">
<style type="text/css">
.form-align {
	float: left;
	margin-left: 30px;
}

.form-align1 {
	text-align: left;
	padding-left: 20px;
}
</style>
<title>person</title>
</head>
<body>
	<div id="main" align="center">
		<div id="content">
			<form action="add-person.jsp" method="post" class="form-horizontal">
				<div class="form-group">
					<label for="firstName" class="control-label col-sm-2">Enter
						the first name :</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="firstName"
							name="firstName" required placeholder="Enter first Name ">
					</div>
				</div>
				<div class="form-group">
					<label for="last Name" class="control-label col-sm-2">Enter
						the last name :</label>
					<div class="col-sm-10">
						<input class="form-control" id="lastName" name="lastName" required
							placeholder="Enter the last name">
					</div>
				</div>
				<div class="form-group ">
					<label for="gender" class="control-label col-sm-2">gender :</label>
					<div class="radio-inline form-align">
						<label><input type="radio" name="gender" value="Male">Male</label>
					</div>
					<div class="radio-inline form-align">
						<label><input type="radio" name="gender" value="female">Female</label>
					</div>
				</div>
				<div class="form-group">
					<label for="address" class="control-label col-sm-2">Enter
						the address :</label>
					<div class="col-sm-10">
						<input class="form-control" id="address" name="address" required
							placeholder="Enter the address">
					</div>
				</div>
				<div class="form-group">
					<label for="phone" class="control-label col-sm-2">Enter the
						telephone number :</label>
					<div class="col-sm-10">
						<input class="form-control" id="phone" name="phone" required
							placeholder="Enter telephone number ">
					</div>
				</div>

				<div class="form-group">
					<label for="dob" class="control-label col-sm-2">Date of
						Birth :</label>
					<div class="col-sm-10">
						<input class="form-control" id="dob" name="dob" required
							placeholder="Enter the date of birth ">
					</div>
				</div>
				<div class="form-group">
					<label for="hospital_id" class="control-label col-sm-2">Hospital
						id :</label>
					<div class="col-sm-10">
						<select class="form-control" name="hospitalId" required>
							<%
								List list = HospitalFun.listHospital();
								Iterator itr = list.iterator();
								while (itr.hasNext()) {
									Hospital1 h = (Hospital1) itr.next();
									out.println("<option>" + h.getId() + "</option>");
								}
							%>
						</select>
					</div>
				</div>
<!-- 				<div class="form-group ">
					<label for="photo" class="control-label col-sm-2">profile
						picture :</label>
					<div class="col-sm-10 form-align1">
						<input class="" id="photo" name="photo" type="file" required>
					</div>
				</div>
				-->
				<div class="form-group">
					<label for="patientId" class="control-label col-sm-2">PatientID :</label>
					<div class="col-sm-10">
						<input class="form-control" id="patientId" name="patientId" required
							placeholder="Enter the patient id ">
					</div>
				</div>
				<div class="form-group">
					<label for="age" class="control-label col-sm-2">Patient age  :</label>
					<div class="col-sm-10">
						<input class="form-control" id="age" name="age" required
							placeholder="Enter the patient age ">
					</div>
				</div>
				<div class="form-group">
					<label for="acceptDate" class="control-label col-sm-2">Accept Date :</label>
					<div class="col-sm-10">
						<input class="form-control" id="acceptDate" name="acceptDate" required
							placeholder="Accept Date ">
					</div>
				</div>
				<div class="form-group">
					<label for="sickness" class="control-label col-sm-2">sickness :</label>
					<div class="col-sm-10">
						<input class="form-control" id="sickness" name="sickness" required
							placeholder="sickness ">
					</div>
				</div>
				<div class="form-group">
					<label for="prescription" class="control-label col-sm-2">Date of
						Birth :</label>
					<div class="col-sm-10">
						<input class="form-control" id="prescription" name="prescription" required
							placeholder="prescription ">
					</div>
				</div>
				
				<button type="submit" class="btn btn-default">Submit</button>
				<button type="reset" class="btn btn-default">Reset</button>
			</form>
		</div>
	</div>
	
</body>
</html>