<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<!-- <form action="/restaurant-form.jsp" method="post">
	<input type=submit value='click here'>
</form> -->  
	 <%-- <a href="<%=request.getContextPath() %>/restaurant-signup.jsp">Click here</a>  --%>
	 <a href="<%=request.getContextPath() %>/restaurant-signup.htm">Click here</a> 

</body>
</html>