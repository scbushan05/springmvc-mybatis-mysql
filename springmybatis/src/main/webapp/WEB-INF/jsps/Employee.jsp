<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<body>

	<div class="container">
		<h1>Employee Details</h1>
		<hr />
		<s:form action="saveProcess" modelAttribute="employee">
			<s:hidden path="id" />
			<s:hidden path="" value="${employee.hobbies}" id="hobbies" />
			
			<div class="form-group">
				<s:input path="fullname" class="form-control"
				placeholder="Enter Full Name" />
			</div>

			<div class="form-group">
				<s:input path="email" placeholder="Enter Email" class="form-control" />
			</div>
			
			<div class="form-group">
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:radiobutton path="gender" value="Male" class="form-check-input"/>Male
					</label>
				</div>
			
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:radiobutton path="gender" value="Female" class="form-check-input"/>Female
					</label>
				</div>
			</div>
			
			<div class="form-group">
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="hobbies" value="Sports" class="form-check-input"/>Sports
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="hobbies" value="Browsing" class="form-check-input"/>Browsing
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="hobbies" value="Running" class="form-check-input"/>Running
					</label>
				</div>
				
				<div class="form-check-inline">
					<label class="form-check-label">
						<s:checkbox path="hobbies" value="Chatting" class="form-check-input"/>Chatting
					</label>
				</div>
			</div>
				
			<div class="form-group">
				<s:select path="country" class="form-control">
					<s:option value="0">--Select--</s:option>
					<s:option value="India">India</s:option>
					<s:option value="Australia">Australia</s:option>
					<s:option value="Japan">Japan</s:option>
					<s:option value="America">America</s:option>
					<s:option value="South Africa">South Africa</s:option>
					<s:option value="Sri Lanka">Sri Lanka</s:option>
				</s:select>
			</div>
				
			<div class="form-group">
				<s:textarea path="address" placeholder="Enter Address"
				class="form-control" />
			</div>
			<input type="submit" value="Save" class="btn btn-info" />&nbsp; 
			<input type="reset" value="Reset" class="btn btn-danger" />

		</s:form>
		<hr />
		<a href="listOfEmployee">Back to List</a>
	</div>
	<script
		src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var hobbies = $("#hobbies").val().split(",");
			var $checkboxes = $("input[type=checkbox]");
			$checkboxes.each(function(idx, element) {
				if (hobbies.indexOf(element.value) != -1) {
					element.setAttribute("checked", "checked");
					$("#hobbies").val("");
				} else {
					element.removeAttribute("checked");
				}
			});
		});
	</script>
</body>
</html>