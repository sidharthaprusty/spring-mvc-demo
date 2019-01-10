<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			Student Registration
		</title>		
	</head>

	<body>
		
		<form:form action="processForm" modelAttribute="student">
		
			First Name: <form:input path="firstName"></form:input><br>
			
			Last Name: <form:input path="lastName"></form:input>
			
			<br><br>
			Country: <form:select path="country">						
						<form:options items="${student.countryOptions}"/>
					 </form:select>
			<br><br>
			Favorite Programming Language:
			
			<%-- Java<form:radiobutton path="favoriteLanguage" value="Java"/>
			Php<form:radiobutton path="favoriteLanguage" value="Php"/>
			Python<form:radiobutton path="favoriteLanguage" value="Python"/>
			C#<form:radiobutton path="favoriteLanguage" value="C#"/> --%>
			
			 <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"  />
			
			<br><br>
			
			Operating Systems: 
			<%-- Linux <form:checkbox path="operatingSystems" value="Linux"/>
			MAC OS <form:checkbox path="operatingSystems" value="MAC OS"/>
			Windows <form:checkbox path="operatingSystems" value="Windows"/>
			 --%>
			<form:checkboxes path="operatingSystems" items="${student.operatingSystemKnown}" />
			
			<br><br>
			
			<input type="submit" value="submit"/>
		</form:form>
	</body>
</html>