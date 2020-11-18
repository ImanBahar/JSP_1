
<%@
	page import="bean.LoginDao"%>  
	<jsp:useBean id="obj" class="bean.LoginBean"/>    
	<jsp:setProperty property="*" name="obj"/>  
  
<%  
	boolean status=LoginDao.validate(obj);  
		if(status){  
			out.println("You've successfully logged in");  
			session.setAttribute("session","TRUE");  
		}  
		else  
		{  
	out.print("Sorry, email or password error");  
	
	%>

	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Failed!</title>
	</head>
	<body>
	<h1>Something is wrong!</h1>
	</body>
	</html>
	<%
	}  
%>  