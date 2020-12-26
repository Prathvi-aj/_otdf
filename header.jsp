<%@ page import="models.User" %>

<link rel="stylesheet" type="text/css" href="../css/header.css" />
<link rel="stylesheet" type="text/css" href="css/header.css" />

<% User user = (User)session.getAttribute("user"); %>
<% Integer isadmin = (Integer)request.getAttribute("isadmin"); %>
<% Boolean isLoginPage = (Boolean)request.getAttribute("isloginpage"); %>
<% Boolean isRegisterPage = (Boolean)request.getAttribute("isregisterpage"); %>

<div id="header">
	<img src='<%= isadmin!=null?"../images/logo.png":"images/logo.png" %>' id="logo" />

	<span id="logo_text">:: OTDF ::</span>
	
	<div id="controls">
		<% if(user==null){ %>		
			
			<% if(isLoginPage==null){ %>
				<a href="show_login.do" class="cntrl">Login</a>
			<% } %>
			
			<% if(isadmin==null&&isRegisterPage==null){ %>
				<a href="registration_form.do" class="cntrl">Register</a>
			<% } %>
		<% }else{%>
			<a href="logout.do" class="cntrl">Logout</a>
		<% } %>
	</div>
</div>