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
			
				<!--  Hardcoded values:
					<form:option value="Brazil" label="Brazil" />
					<form:option value="France" label="France" />
					<form:option value="Germany" label="Germany" />
					<form:option value="India" label="India" />
				 -->
			
				<!-- Using the Java Student class instead of hardcoding. Here Spring will call student.getCountryOptions() instead of doing it hardcoded -->
				<form:options items="${student.countryOptions}" />
				
			</form:select><br><br>
			
			Favorite Language:<br><br>
			
			<!-- Hardcoded again. On submit, Spring will call student.setFavoriteLanguage(...) 
				Java <form:radiobutton path="favoriteLanguage" value="Java" />
				C# <form:radiobutton path="favoriteLanguage" value="C#" />
				PHP <form:radiobutton path="favoriteLanguage" value="PHP" />
				Ruby <form:radiobutton path="favoriteLanguage" value="Ruby" />
			-->
				
			<!-- Using the Java Student class instead of hardcoding. Here Spring will call student.getFavoriteLanguageOptions() instead of doing it hardcoded-->
			<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}" /><br><br>
			
			<input type="submit" value="Submit" />
			
		</form:form>
		
	</body>
</html>

