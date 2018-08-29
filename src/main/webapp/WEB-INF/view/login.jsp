<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Login Form</title>
<style>
    .error {
        color: red; font-weight: bold;
    }
    h1
    {
    color: blue; font-weight: bold;
    text-shadow: 2px 2px #FF0000;
    }
  body {
   background-color: #FFFFE0;
	}

div {
    font-weight: bold;
    color:#008B8B;
}
</style>
</head>
<body>
	<h1 align="center">Login Form</h1>
<form:form commandName="userForm">
		<div align="center">
			<table>
			
				<tr>
					<td>User Name</td>
					<td><input type="text" name="userName" /></td>
					<td><form:errors path="userName" cssClass="error"/></td>
				</tr>
				
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
					<td><form:errors path="password" cssClass="error"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</table>
			<%-- //<div style="color: red">${error}</div>

		</div> --%>
	</form:form>
</body>
</html>