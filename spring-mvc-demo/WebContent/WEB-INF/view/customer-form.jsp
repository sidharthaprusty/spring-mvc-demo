<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<title>
			Customer Registration
		</title>	
		
		<style>
			.error {color: red}
		</style>	
	</head>

	<body>
	Fill out the form (*)means mandatory
		<form:form action="processForm" modelAttribute="customer">
		
			First Name:<form:input path="firstName"/>
			
			Last Name(*):<form:input path="lastName"/>
			<form:errors path="lastName" cssClass="error"/>
			
			<input type="submit" value="submit"/>
		</form:form>
	</body>
</html>