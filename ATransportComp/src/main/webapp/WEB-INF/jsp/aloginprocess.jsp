<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
		//String username=getServletContext().getInitParameter("UserName");
		//String password=getServletContext().getInitParameter("Password");
		
if(request.getParameter("username").equalsIgnoreCase("Karan")&& request.getParameter("userpass").equalsIgnoreCase("Karan@123"))
{
	response.sendRedirect("admin");
%>


<jsp:forward page="admin"></jsp:forward>
<% 
}
else{
request.setAttribute("Error","Sorry!!! Username or Password Error. plz Enter Correct Detail");
session.setAttribute("Loginmsg","plz sign in first");
%>

<jsp:forward page="test.jsp"></jsp:forward>
<% 
}
%>
