<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Student Registration Form</title>
	</head>
	<body>
	
		<!-- When the form is loaded, SpringMVC will call student.getFirstName() and student.getLastName() -->
		<!-- When the form is submitted, it will call student.setFirstName() and student.setLastName() -->
	
		<form:form action="processForm" modelAttribute="student">
			First name: <form:input path="firstName" /><br><br>
			Last name: <form:input path="lastName" /><br><br>
			
			<form:select path="country">
			
				<!-- Here Spring will call student.getCountryOptions() -->
				<form:options items="${student.countryOptions}" />
			
				<!--  Hardcoded values:
					<form:option value="Brazil" label="Brazil" />
					<form:option value="France" label="France" />
					<form:option value="Germany" label="Germany" />
					<form:option value="India" label="India" />
				 -->
				
			</form:select>
			
			<input type="submit" value="Submit" />
		</form:form>
		
	</body>
</html>

